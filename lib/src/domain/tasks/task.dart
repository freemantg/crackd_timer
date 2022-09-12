import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:robot_timer/src/domain/core/unique_id.dart';
import 'package:robot_timer/src/shared/colors_list.dart';

import '../emojis/emoji.dart';

part 'task.freezed.dart';

@freezed
abstract class Task with _$Task {
  const factory Task({
    required UniqueId uniqueId,
    required String title,
    required String description,
    required Emoji emoji,
    required Color taskColor,
    required int activeSessions,
    required int completedSessions,
    required bool completed,
  }) = _Task;

  factory Task.empty() => Task(
        uniqueId: UniqueId(),
        title: '',
        description: '',
        emoji: Emoji.initial(),
        taskColor: colorsList.first,
        activeSessions: 4,
        completedSessions: 0,
        completed: false,
      );
}
