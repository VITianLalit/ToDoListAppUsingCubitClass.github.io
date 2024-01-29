import 'package:flutter/material.dart';
import 'package:todo_list_using_cubit/add_todo.dart';
import 'package:todo_list_using_cubit/cubit/todo_cubit.dart';
import 'package:todo_list_using_cubit/todo_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: '/',
        routes: {
          '/': (_) => TodoList(),
          '/add-todo': (_) => AddTodo(),
        },
      ),
    );
  }
}
