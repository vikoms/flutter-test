import 'package:flutter/material.dart';

class CounterDisplay extends StatelessWidget {
  const CounterDisplay({required this.count, Key? key}) : super(key: key);

  final int count;
  @override
  Widget build(BuildContext context) {
    return Text('Count : $count');
  }
}

class CounterIncementor extends StatelessWidget {
  const CounterIncementor({required this.onPressed, Key? key})
      : super(key: key);

  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: const Text("Increment"),
    );
  }
}

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      ++_counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CounterIncementor(onPressed: _increment),
        const SizedBox(
          width: 16,
        ),
        CounterDisplay(count: _counter),
      ],
    );
  }
}
