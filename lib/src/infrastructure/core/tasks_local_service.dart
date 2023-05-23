import 'package:sembast/sembast.dart';

import '../tasks/tasks_dto.dart';
import 'sembast_database.dart';

class TasksLocalSource {
  final SembastDatabase _sembastDatabase;

  static const String taskStoreName = 'tasks';
  final _store = stringMapStoreFactory.store(taskStoreName);

  TasksLocalSource(this._sembastDatabase);

  Stream<TaskDto> fetchNoteStream(TaskDto taskDto) async* {
    final record =
        _store.record(taskDto.uniqueId).onSnapshot(_sembastDatabase.instance);
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
        .onSnapshots(_sembastDatabase.instance);
    yield* records.map(
      (snapshots) => snapshots
          .map((snapshot) => TaskDto.fromJson(snapshot.value))
          .toList(),
    );
  }

  Stream<List<TaskDto>> getActiveTasksStream() async* {
    final records = _store
        .query(finder: Finder(filter: Filter.equals('completed', false)))
        .onSnapshots(_sembastDatabase.instance);
    yield* records.map(
      (snapshots) => snapshots
          .map((snapshot) => TaskDto.fromJson(snapshot.value))
          .toList(),
    );
  }

  Stream<List<TaskDto>> getCompletedTasksStream() async* {
    final records = _store
        .query(finder: Finder(filter: Filter.equals('completed', true)))
        .onSnapshots(_sembastDatabase.instance);
    yield* records.map(
      (snapshots) => snapshots
          .map((snapshot) => TaskDto.fromJson(snapshot.value))
          .toList(),
    );
  }

  Future<void> insert(TaskDto taskDto) async {
    _store.record(taskDto.uniqueId).put(
          _sembastDatabase.instance,
          taskDto.toJson(),
        );
  }

  Future<void> delete(TaskDto taskDto) async {
    await _store.delete(
      _sembastDatabase.instance,
      finder: Finder(filter: Filter.byKey(taskDto.uniqueId)),
    );
  }

  Future<void> update(TaskDto taskDto) async {
    final finder = Finder(filter: Filter.byKey(taskDto.uniqueId));

    await _store.update(
      _sembastDatabase.instance,
      taskDto.toJson(),
      finder: finder,
    );
  }
}
