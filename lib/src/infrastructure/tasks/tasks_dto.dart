import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/unique_id.dart';
import '../../domain/emojis/emoji.dart';
import '../../domain/tasks/task.dart';

part 'tasks_dto.freezed.dart';
part 'tasks_dto.g.dart';

@freezed
class TaskDto with _$TaskDto {
  const TaskDto._();

  const factory TaskDto({
    required String uniqueId,
    required String title,
    required String description,
    required Emoji emoji,
    required int taskColor,
    required int activeSessions,
    required int completedSessions,
    required bool completed,
  }) = _TaskDto;

  factory TaskDto.fromDomain(Task task) => TaskDto(
        uniqueId: task.uniqueId.value,
        title: task.title,
        description: task.description,
        emoji: task.emoji,
        taskColor: task.taskColor.value,
        activeSessions: task.activeSessions,
        completedSessions: task.completedSessions,
        completed: task.completed,
      );

  factory TaskDto.fromJson(Map<String, dynamic> json) =>
      _$TaskDtoFromJson(json);
}

extension TaskDtoX on TaskDto {
  Task toDomain() {
    return Task(
      id: UniqueId.fromUniqueString(uniqueId),
      title: title,
      description: description,
      emoji: emoji,
      taskColor: Color(taskColor).withOpacity(1),
      activeSessions: activeSessions,
      completedSessions: completedSessions,
      completed: completed,
    );
  }
}
