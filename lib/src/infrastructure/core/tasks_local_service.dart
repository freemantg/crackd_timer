import 'package:sembast/sembast.dart';

import '../tasks/tasks_dto.dart';

class TasksLocalSource {
  final Database _database;

  static const String taskStoreName = 'tasks';
  final _store = stringMapStoreFactory.store(taskStoreName);

  TasksLocalSource(this._database);

  Stream<TaskDto> fetchNoteStream(TaskDto taskDto) async* {
    final record = _store.record(taskDto.uniqueId).onSnapshot(_database);
    yield* record.map(
      (snapshot) => TaskDto.fromJson(
        snapshot?.value ?? {},
      ),
    );
  }

  Stream<List<TaskDto>> getAllTasksStream() async* {
    final records = _store
        .query(
            finder: Finder(
          sortOrders: [SortOrder('completed')],
        ))
        .onSnapshots(_database);
    yield* records.map(
      (snapshots) => snapshots
          .map((snapshot) => TaskDto.fromJson(snapshot.value))
          .toList(),
    );
  }

  Stream<List<TaskDto>> getActiveTasksStream() async* {
    final records = _store
        .query(finder: Finder(filter: Filter.equals('completed', false)))
        .onSnapshots(_database);
    yield* records.map(
      (snapshots) => snapshots
          .map((snapshot) => TaskDto.fromJson(snapshot.value))
          .toList(),
    );
  }

  Stream<List<TaskDto>> getCompletedTasksStream() async* {
    final records = _store
        .query(finder: Finder(filter: Filter.equals('completed', true)))
        .onSnapshots(_database);
    yield* records.map(
      (snapshots) => snapshots
          .map((snapshot) => TaskDto.fromJson(snapshot.value))
          .toList(),
    );
  }

  Future<void> insert(TaskDto taskDto) async {
    _store.record(taskDto.uniqueId).put(
          _database,
          taskDto.toJson(),
        );
  }

  Future<void> delete(TaskDto taskDto) async {
    await _store.delete(
      _database,
      finder: Finder(filter: Filter.byKey(taskDto.uniqueId)),
    );
  }

  Future<void> update(TaskDto taskDto) async {
    final finder = Finder(filter: Filter.byKey(taskDto.uniqueId));

    await _store.update(
      _database,
      taskDto.toJson(),
      finder: finder,
    );
  }
}
