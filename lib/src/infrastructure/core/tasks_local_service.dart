import 'package:sembast/sembast.dart';

import '../tasks/tasks_dto.dart';

class TasksLocalSource {
  final Database _database;

  static const String taskStoreName = 'tasks';
  final _store = stringMapStoreFactory.store(taskStoreName);

  TasksLocalSource(this._database);

  Stream<List<TaskDto>> _getTasksStream(Finder finder) async* {
    final records = _store.query(finder: finder).onSnapshots(_database);
    yield* records.map(
      (snapshots) => snapshots
          .map((snapshot) => TaskDto.fromJson(snapshot.value))
          .toList(),
    );
  }

  Stream<TaskDto> fetchNoteStream(TaskDto taskDto) async* {
    final record = _store.record(taskDto.id).onSnapshot(_database);
    yield* record.map(
      (snapshot) => TaskDto.fromJson(
        snapshot?.value ?? {},
      ),
    );
  }

  Stream<List<TaskDto>> getAllTasksStream() async* {
    yield* _getTasksStream(
      Finder(
        sortOrders: [SortOrder('completed')],
      ),
    );
  }

  Stream<List<TaskDto>> getActiveTasksStream() async* {
    yield* _getTasksStream(
      Finder(
        filter: Filter.equals('completed', false),
      ),
    );
  }

  Stream<List<TaskDto>> getCompletedTasksStream() async* {
    yield* _getTasksStream(
      Finder(
        filter: Filter.equals('completed', true),
      ),
    );
  }

  Future<void> insert(TaskDto taskDto) async {
    _store.record(taskDto.id).put(
          _database,
          taskDto.toJson(),
        );
  }

  Future<void> delete(TaskDto taskDto) async {
    await _store.delete(
      _database,
      finder: Finder(filter: Filter.byKey(taskDto.id)),
    );
  }

  Future<void> update(TaskDto taskDto) async {
    final finder = Finder(filter: Filter.byKey(taskDto.id));

    await _store.update(
      _database,
      taskDto.toJson(),
      finder: finder,
    );
  }
}
