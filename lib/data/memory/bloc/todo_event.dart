import 'package:fast_app_base/data/memory/vo_todo.dart';

sealed class TodoEvent{}

class TodoAddEvent extends TodoEvent{}

class TodoStatusUpdateEvent extends TodoEvent{
  final Todo updatedTodo;

  TodoStatusUpdateEvent(this.updatedTodo);
}

class TodoContentUpdatedEvent extends TodoEvent{
  final Todo updatedTodo;

  TodoContentUpdatedEvent(this.updatedTodo);
}

class TodoRemovedEvent extends TodoEvent{
  final Todo removedTodo;

  TodoRemovedEvent(this.removedTodo);
}