import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  static ValueNotifier<String> enteredValue = ValueNotifier('');
  static ValueNotifier<String> enteredValueT = ValueNotifier('');

  const BottomBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Column(
        children: [
          const SizedBox(height: 16),
          const Text(
            'List(widget 2)',
            style: TextStyle(fontSize: 24, color: Colors.blue),
          ),
          const SizedBox(height: 32),
          const Text('Valores desde Widget 1:'),
          ValueListenableBuilder(
            valueListenable: enteredValue,
            builder: (BuildContext context, String newValue, Widget? child) {
              return Text(
                newValue,
                style: const TextStyle(fontSize: 24),
              );
            },
          ),
          ValueListenableBuilder(
            valueListenable: enteredValueT,
            builder: (BuildContext context, String newValue, Widget? child) {
              return Text(
                newValue,
                style: const TextStyle(fontSize: 24),
              );
            },
          ),
        ],
      ),
    );
  }
}
