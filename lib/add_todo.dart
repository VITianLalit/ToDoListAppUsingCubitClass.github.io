import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list_using_cubit/cubit/todo_cubit.dart';

class AddTodo extends StatelessWidget {
  AddTodo({super.key});
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Todo'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextFormField(
              controller: controller,
              decoration: InputDecoration(hintText: 'Title'),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
                onPressed: (){
                  BlocProvider.of<TodoCubit>(context).addTodo(controller.text.trim());
                  Navigator.of(context).pop();
                },
                child: Text('Add'),
            )
          ],
        ),
      ),
    );
  }
}
