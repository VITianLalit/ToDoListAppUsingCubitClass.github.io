import 'package:bloc/bloc.dart';

import '../models/todo_model.dart';

class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit() : super([]);

  void addTodo(String title){
    final todo = Todo(
      name: title,
      createdAt: DateTime.now(),
    );
    emit([...state, todo]);
  }
}
