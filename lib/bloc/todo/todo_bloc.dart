import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../models/todo.dart';
import '../../services/firebaseService.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {

  final FirestoreService  _firestoreServices;

  TodoBloc(this._firestoreServices) : super(TodoInitial()) {
    on<LoadTodos>((event, emit) async {
      try {
        emit(TodoLoading());
        final todos = await _firestoreServices.getTodos().first;
        emit(TodoLoaded(todos));
      } catch (e) {
        emit(TodoError('Failed to load todos.'));
      }
    });

    on<AddTodo>((event, emit) async {
      try {
        emit(TodoLoading());
        await _firestoreServices.addTodo(event.todo);
        emit(TodoOperationSuccess('Todo added successfully.'));
      } catch (e) {
        emit(TodoError('Failed to add todo.'));
      }
    });
    on<UpdateTodo>((event, emit)  async {
      try {
        emit(TodoLoading());
        await _firestoreServices.updateTodo(event.todo);
        emit(TodoOperationSuccess('Todo updated successfully.'));
      } catch (e) {
        emit(TodoError('Failed to update todo.'));
      }
    });
    on<DeleteTodo>((event, emit) async {
      try {
        emit(TodoLoading());
        await _firestoreServices.deleteTodo(event.todoId);
        emit(TodoOperationSuccess('Todo deleted successfully.'));
      } catch (e) {
        emit(TodoError('Failed to delete todo.'));
      }
    });
  }
}
