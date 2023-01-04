import 'package:flutter/material.dart';
import 'package:flutter_valuenotifier/bottom_bar.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  State<StatefulWidget> createState() => _MyScreen();
}

class _MyScreen extends State<MyScreen> {
  TextEditingController textEditingController = TextEditingController();
  TextEditingController textEditingControllerT = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const SizedBox(height: 16),
          const Text(
            'Form(Widget1)',
            style: TextStyle(fontSize: 24, color: Colors.blue),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: textEditingController,
              decoration: const InputDecoration(
                  hintText: 'Nombre', border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: textEditingControllerT,
              decoration: const InputDecoration(
                  hintText: 'Code', border: OutlineInputBorder()),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              BottomBar.enteredValue.value = textEditingController.text;
              BottomBar.enteredValueT.value = textEditingControllerT.text;
            },
            child: const Text('Guardar'),
          ),
          const Spacer(),
          const Divider(),
          const BottomBar(),
        ],
      ),
    );
  }
}
