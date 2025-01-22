import 'dart:convert';

import 'package:mobile_kit/src/core/data/hive/hive_local_storage.dart';
import 'package:mobile_kit/src/shared/domain/entity/failure.dart';

/// Class provides helper methods to read/write data to the [LocalStorage] and correct exception handling
mixin HiveBaseLocalDataSourceMixin {
  /// Read data from [LocalStorage] (asynchronously)
  ///
  /// [storage] - [LocalStorage] instance to operate on
  /// [key] - unique key in key-value pair
  /// [fromString] - function to convert stored data to the required type [T]
  /// Returns object of type [T], if it is available in the storage
  /// Throws [DataNotFoundException] is requested data is not found
  /// Throws [StorageException] in case of any other problems with [storage] interaction
  Future<T> read<T>(HiveStorage storage, String key, T Function(String) fromString) async {
    try {
      final String? data = await storage.read(key);
      return data != null ? fromString(data) : throw DataNotFoundException();
    } on DataNotFoundException {
      rethrow;
    } catch (ex) {
      throw StorageException();
    }
  }

  /// Write data to [LocalStorage] (asynchronously)
  ///
  /// [storage] - [LocalStorage] instance to operate on
  /// [key] - unique key in key-value pair
  /// [value] - data which needs to be stored
  /// [toString] - function to convert data from type [T] to [String] format
  /// Throws [StorageException] in case of any problems with [storage] interaction
  Future<void> write<T>(HiveStorage storage, String key, T value, String Function(T) toString) async {
    try {
      await storage.write(key, toString(value));
    } catch (ex) {
      throw StorageException();
    }
  }

  /// Remove data from [LocalStorage] (asynchronously)
  ///
  /// [storage] - [LocalStorage] instance to operate on
  /// [key] - unique key in key-value pair
  /// Throws [StorageException] in case of any problems with [storage] interaction
  Future<void> delete(HiveStorage storage, String key) async {
    try {
      await storage.delete(key);
    } catch (ex) {
      throw StorageException();
    }
  }

  /// Parse list of type E from the string data stored in storage
  ///
  /// [data] - string data to parse
  /// [parseItem] - function to convert individual item from mapped data
  List<E> parseList<E>(String data, E Function(Map<String, dynamic>) parseItem) {
    final List<dynamic> parsed = jsonDecode(data);
    return parsed.map<E>((dynamic i) => parseItem(i)).toList();
  }

  /// Read all entries of certain type from [LocalStorage] (asynchronously)
  ///
  /// [storage] - [LocalStorage] instance to operate on
  /// [pattern] - regular expression to match storage keys
  /// [fromString] - function to convert stored data to the required type [T]
  /// Returns list of objects of type [T], if it is available in the storage
  /// Throws [StorageException] in case of any other problems with [storage] interaction
  Future<List<T>> readAll<T>(HiveStorage storage, RegExp pattern, T Function(String) fromString) async {
    try {
      final List<String> keys = await storage.keys(pattern: pattern);
      final List<T> result = <T>[];
      for (String key in keys) {
        result.add(await read<T>(storage, key, fromString));
      }
      return result;
    } catch (ex) {
      throw StorageException();
    }
  }
}
