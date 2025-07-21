import 'dart:io';

import 'package:ctp_mobile/core/data_model/responses.dart';
import 'package:dartz/dartz.dart';
import 'package:mobile_kit/mobile_kit.dart';

mixin BaseRepositoryMixin {
  /// Common method retrieving remote data (with intermediate caching)
  ///
  /// [getRemote] - Function to request data from remote datasource
  /// [getLocal] - Function to request data from local datasource
  /// [cacheLocal] - Function to cache data in local datasource
  Future<Either<Failure, T>> getGenericDataWithCaching<T>({
    required Future<T> Function() remote,
    Future<T?> Function()? getLocal,
    required Future<void> Function(T) cacheLocal,
  }) async {
    try {
      final T remoteData = await remote();
      try {
        await cacheLocal(remoteData);
      } catch (_) {
        //Do nothing
      }
      return Right(remoteData);
    } on TokenExpiredException {
      return Left(Failure.notAuthorized());
    } catch (e) {
      return genericErrorCatchOperation(asyncOperation: () async {
        if (getLocal == null) {
          throw e;
        }
        final T? localData = await getLocal();
        if (localData == null) {
          throw e;
        }
        return localData;
      });
    }
  }

  /// Common method for retrieving remote data
  ///
  /// [getRemote] - Function to request data from remote datasource
  Future<Either<Failure, T>> getGenericDataWithoutCaching<T>({
    required Future<T> Function() remote,
  }) async {
    return genericErrorCatchOperation(asyncOperation: () async {
      final T remoteData = await remote();
      return remoteData;
    });
  }

  /// Common method for performing request with SuccessResponse
  ///
  /// [getRemote] - Function to perform request with SuccessResponse
  Future<Either<Failure, void>> performSuccessOperation({
    required Future<SuccessResponse> Function() remote,
  }) async {
    try {
      final SuccessResponse remoteData = await remote();
      if (remoteData.success) {
        return Right<Failure, void>(remoteData);
      } else {
        return Left<Failure, void>(Failure.wrongResponse());
      }
    } on TokenExpiredException {
      return Left(Failure.notAuthorized());
    } on CredentialsInvalidException {
      return Left(Failure.notAuthorized());
    } on ServerException catch (e) {
      return Left(Failure.server(e.code, e.message));
    } on SocketException catch (e) {
      print('SocketException: ${e.message}');
      return Left(Failure.socket());
    } on StorageException {
      return Left(Failure.storage());
    } on UnknownException catch (e) {
      return Left(Failure.unknown(e.error));
    } on TypeError catch (e) {
      print('TypeError message: $e');
      if (e.stackTrace != null) {
        print('TypeError: stacktrace${e.stackTrace!}');
      }
      return Left(Failure.wrongResponse());
    } catch (error) {
      return Left(Failure.unknown(error));
    }
  }

  Future<Either<Failure, T>> genericErrorCatchOperation<T>({
    required Future<T> Function() asyncOperation,
  }) async {
    try {
      final response = await asyncOperation();
      return Right(response);
    } on TokenExpiredException {
      return Left(Failure.notAuthorized());
    } on CredentialsInvalidException {
      return Left(Failure.notAuthorized());
    } on ServerException catch (e) {
      return Left(Failure.server(e.code, e.message));
    } on SocketException catch (e) {
      print('SocketException: ${e.message}');
      return Left(Failure.socket());
    } on StorageException catch (_) {
      return Left(Failure.storage());
    } on UnknownException catch (e) {
      return Left(Failure.unknown(e.error));
    } on TypeError catch (e) {
      print('TypeError message: $e');
      if (e.stackTrace != null) {
        print('TypeError: stacktrace${e.stackTrace!}');
      }
      return Left(Failure.wrongResponse());
    } catch (error) {
      return Left(Failure.unknown(error));
    }
  }
}
