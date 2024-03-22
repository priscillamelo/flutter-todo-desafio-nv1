import 'package:flutter/material.dart';

class ToDoListPage extends StatefulWidget {
  const ToDoListPage({super.key});

  @override
  State<ToDoListPage> createState() => _ToDoListPageState();
}

class _ToDoListPageState extends State<ToDoListPage> {

  final TextEditingController _textEditingController = TextEditingController();
  late List<String> _listTarefas;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To Do List'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            TextField(
              controller: _textEditingController,

            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple.shade300, 
        onPressed: () {
          debugPrint(_textEditingController.text);

          /* if(_textEditingController.text.length > 0){
            _listTarefas.add(_textEditingController.text);
            _textEditingController.clear();
          } */
        }, child: const Icon(Icons.add),
        ),
    );
  }
}