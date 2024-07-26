import 'dart:io';

import 'package:ctp_mobile/api/response/responses.dart';
import 'package:ctp_mobile/domain/failure/failure.dart';
import 'package:dartz/dartz.dart';

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
      print('SocketException: ' + e.message);
      return Left(Failure.socket());
    } on StorageException {
      return Left(Failure.storage());
    } on UnknownException catch (e) {
      return Left(Failure.unknown(e.error));
    } catch (error) {
      return Left(Failure.unknown(error));
    }
  }

  /// Common method for sending remote data without returning any results
  ///
  /// [executeRemote] - Function to send data to remote datasource
  Future<Either<Failure, void>> performGenericOperation({
    required Future<dynamic> Function() remote,
  }) async {
    return genericErrorCatchOperation(asyncOperation: () async {
      await remote();
      return Future.value(unit);
    });
  }

  /// Common method retrieving local data
  ///
  /// [getLocal] - Function to request data from local datasource
  Future<Either<Failure, T>> getGenericLocalData<T>({
    required Future<T> Function() getLocal,
  }) async {
    try {
      final T localData = await getLocal();
      return Right<Failure, T>(localData);
    } on StorageException {
      return Left<Failure, T>(Failure.storage());
    } catch (error) {
      return Left<Failure, T>(Failure.unknown(error));
    }
  }

  /// Common method caching data locally
  ///
  /// [cacheLocal] - Function to cache data in local datasource
  /// [data] - Data to cache
  Future<Either<Failure, void>> cacheGenericLocalData<T>({
    required Future<void> Function(T) cacheLocal,
    required T data,
  }) async {
    try {
      await cacheLocal(data);
      return const Right(unit);
    } on StorageException {
      return Left(Failure.storage());
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
      print('SocketException: ' + e.message);
      return Left(Failure.socket());
    } on StorageException catch (_) {
      return Left(Failure.storage());
    } on UnknownException catch (e) {
      return Left(Failure.unknown(e.error));
    } on TypeError catch (e) {
      print('TypeError message: ' + e.toString());
      if (e.stackTrace != null) {
        print('TypeError: stacktrace' + e.stackTrace!.toString());
      }
      return Left(Failure.wrongResponse());
    } catch (error) {
      return Left(Failure.unknown(error));
    }
  }
}
