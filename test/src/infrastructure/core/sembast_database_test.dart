import 'dart:io';

import 'package:crackd_timer/src/infrastructure/core/database_wrapper.dart';
import 'package:crackd_timer/src/infrastructure/core/path_provider_wrapper.dart';
import 'package:crackd_timer/src/infrastructure/core/sembast_database.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:path/path.dart' hide equals;
import 'package:sembast/sembast.dart';

import 'sembast_database_test.mocks.dart';

@GenerateMocks([
  Database,
  DatabaseFactory,
  Directory,
  PathProviderWrapper,
  DatabaseFactoryWrapper
])
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('SembastDatabase', () {
    test('init successfully opens a database', () async {
      final mockDatabase = MockDatabase();
      final mockDir = MockDirectory();
      final mockPathProviderWrapper = MockPathProviderWrapper();
      final mockDatabaseFactoryWrapper = MockDatabaseFactoryWrapper();

      when(mockDatabase.version).thenReturn(1);
      when(mockDir.path).thenReturn('mock_path');
      when(mockPathProviderWrapper.getApplicationDocumentsDirectory())
          .thenAnswer((_) async => mockDir);
      when(mockDatabaseFactoryWrapper.openDatabase(any))
          .thenAnswer((_) async => mockDatabase);

      final sembastDatabase = await SembastDatabase.init(
          mockDatabaseFactoryWrapper, mockPathProviderWrapper);

      expect(sembastDatabase.database, isA<MockDatabase>());
      expect(
          sembastDatabase.pathProviderWrapper, equals(mockPathProviderWrapper));

      final appPath =
          await mockPathProviderWrapper.getApplicationDocumentsDirectory();
      final dbPath = join(appPath.path, 'db.sembast');

      verify(mockDatabaseFactoryWrapper.openDatabase(dbPath)).called(1);
    });
  });
}
