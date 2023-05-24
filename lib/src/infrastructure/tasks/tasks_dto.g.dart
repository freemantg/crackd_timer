// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskDto _$$_TaskDtoFromJson(Map<String, dynamic> json) => _$_TaskDto(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      emoji: Emoji.fromJson(json['emoji'] as Map<String, dynamic>),
      taskColor: json['taskColor'] as int,
      activeSessions: json['activeSessions'] as int,
      completedSessions: json['completedSessions'] as int,
      completed: json['completed'] as bool,
    );

Map<String, dynamic> _$$_TaskDtoToJson(_$_TaskDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'emoji': instance.emoji.toJson(),
      'taskColor': instance.taskColor,
      'activeSessions': instance.activeSessions,
      'completedSessions': instance.completedSessions,
      'completed': instance.completed,
    };
