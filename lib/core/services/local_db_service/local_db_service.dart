import 'package:isar/isar.dart';

import 'package:sync_net_and_local_db/core/services/local_db_service/i_local_db_service.dart';

class LocalDBService implements ILocalDBService {
  const LocalDBService(this._isar);
  final Isar _isar;
  @override
  Future<List<E>> getData<E>() async {
    try {
      final collection = _isar.collection<E>();
      final data = await collection.where().findAll();
      return data;
    } catch (_) {
      rethrow;
    }
  }

  @override
  void initWatcher<E>(void Function(List<E>) callback) {
    try {
      final collection = _isar.collection<E>();
      collection.watchLazy().listen((event) async {
        final data = await collection.where().findAll();
        callback.call(data);
      });
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> saveData<E>(E item) async {
    try {
      await _isar.writeTxn(() async {
        final collection = _isar.collection<E>();
        await collection.put(item);
      });
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> removeData<E>(int id) async {
    try {
      await _isar.writeTxn(() async {
        final collection = _isar.collection<E>();
        await collection.delete(id);
      });
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> removeCollection<E>() async {
    try {
      await _isar.writeTxn(() async {
        final collection = _isar.collection<E>();
        await collection.clear();
      });
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> updateData<E>(E item) async {
    try {
      await _isar.writeTxn(() async {
        final collection = _isar.collection<E>();
        await collection.put(item);
      });
    } catch (_) {
      rethrow;
    }
  }
}
