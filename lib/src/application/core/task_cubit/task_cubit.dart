import 'package:bloc/bloc.dart';

import '../../../domain/tasks/task.dart';

class TaskCubit extends Cubit<Task> {
  TaskCubit() : super(Task.empty());

  void updateTask(Task task) => emit(task);
}
