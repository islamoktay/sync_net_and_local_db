abstract class ILocalDBService {
  Future<List<E>> getData<E>();
  Future<void> saveData<E>(E item);
  Future<void> removeData<E>(int id);
  Future<void> removeCollection<E>();
  void initWatcher<E>(void Function(List<E>) callback);
}
