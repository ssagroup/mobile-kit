import 'package:hive/hive.dart';

/// [LocalStorage] implementation using Hive
class HiveStorage {
  const HiveStorage(
      Box<String> box,
      ) : _box = box;

  final Box<String> _box;

  Future<void> write(String key, String value) async {
    if (_box.isOpen) {
      await _box.put(key, value);
    } else {
      throw 'Storage closed';
    }
  }

  Future<String?> read(String key) async {
    if (_box.isOpen) {
      final String? result = _box.get(key);
      return result;
    } else {
      throw 'Storage closed';
    }
  }

  Future<void> delete(String key) async {
    if (_box.isOpen) {
      await _box.delete(key);
    } else {
      throw 'Storage closed';
    }
  }

  Future<List<String>> keys({RegExp? pattern}) async {
    if (_box.isOpen) {
      final result = _box.keys;
      return result.map((dynamic k) => k.toString()).where((k) => pattern == null || pattern.hasMatch(k)).toList();
    } else {
      throw 'Storage closed';
    }
  }
}
