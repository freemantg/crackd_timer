// import 'package:crackd_timer/src/domain/emojis/emoji.dart';
// import 'package:crackd_timer/src/infrastructure/core/store_ref_wrapper.dart';
// import 'package:crackd_timer/src/infrastructure/core/tasks_local_service.dart';
// import 'package:crackd_timer/src/infrastructure/tasks/tasks_dto.dart';
// import 'package:flutter_test/flutter_test.dart' hide Finder;
// import 'package:mockito/annotations.dart';
// import 'package:mockito/mockito.dart';
// import 'package:sembast/sembast.dart'
//     show Database, Finder, RecordRef, RecordSnapshot, SembastRecordRefExtension;

// import 'sembast_database_test.mocks.dart';
// import 'tasks_local_service_test.mocks.dart';

// @GenerateMocks([
//   TasksLocalSource,
//   Database,
//   RecordSnapshot,
//   Finder,
//   RecordRef,
//   StoreRefWrapper,
// ])
// void main() {
//   late String id;
//   late TaskDto taskDto;
//   late MockTasksLocalSource mockTasksLocalSource;
//   late MockRecordSnapshot mockRecordSnapshot;
//   late MockRecordRef mockRecordRef;
//   late MockDatabase mockDatabase;
//   late MockFinder mockFinder;
//   late MockStoreRefWrapper mockStoreRef;

//   setUp(
//     () {
//       mockDatabase = MockDatabase();
//       mockTasksLocalSource = MockTasksLocalSource();
//       mockFinder = MockFinder();
//       mockRecordSnapshot = MockRecordSnapshot();
//       mockRecordRef = MockRecordRef();
//       mockStoreRef = MockStoreRefWrapper();
//       id = 'id';
//       taskDto = TaskDto(
//         id: id,
//         title: 'Title',
//         description: 'Description',
//         emoji: const Emoji(emoji: 'Emoji', category: 'Category'),
//         taskColor: 123,
//         activeSessions: 1,
//         completedSessions: 2,
//         completed: true,
//       );
//       mockRecordSnapshot = MockRecordSnapshot();
//       when(mockRecordSnapshot.key).thenReturn(id);
//       when(mockRecordSnapshot.value).thenReturn(taskDto.toJson());

//       when(mockStoreRef.record(any)).thenReturn(mockRecordRef);
//       when(mockRecordRef.put(mockDatabase, any)).thenAnswer((_) async => {});
//       when(mockStoreRef.delete(mockDatabase, finder: anyNamed('finder')))
//           .thenAnswer((_) async => 1);
//       when(mockStoreRef.update(mockDatabase, any, finder: anyNamed('finder')))
//           .thenAnswer((_) async => 1);
//       when(mockStoreRef
//               .query(finder: anyNamed('finder'))
//               .onSnapshots(mockDatabase))
//           .thenAnswer((_) => Stream.value([mockRecordSnapshot]));
//       when(mockRecordRef.onSnapshot(mockDatabase))
//           .thenAnswer((_) => Stream.value(mockRecordSnapshot));
//       when(mockTasksLocalSource.insert(any)).thenAnswer((_) async => {});
//     },
//   );

//   test('insert() places the TaskDto in the database', () async {
//     await mockTasksLocalSource.insert(taskDto);
//     verify(mockRecordRef.put(mockDatabase, taskDto.toJson())).called(1);
//   });
// }
