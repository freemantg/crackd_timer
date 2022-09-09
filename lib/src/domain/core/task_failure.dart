import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_failure.freezed.dart';

@freezed
class TaskFailure with _$TaskFailure {
  const factory TaskFailure.unexpected({String? message}) = Unexpected;
  const factory TaskFailure.insufficientPermissions() = InsufficientPermissions;
  const factory TaskFailure.unableToUpdate() = UnableToUpdate;
  const factory TaskFailure.unableToCreate() = UnableToCreate;
  const factory TaskFailure.unableToDelete() = UnableToDelete;
}
