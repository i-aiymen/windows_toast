import 'package:flutter/material.dart';
import 'package:windows_toast/windows_toast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Windows Toast Example',
      home: ShowToast(),
    );
  }
}

class ShowToast extends StatelessWidget {
  const ShowToast({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Windows Toast Example'),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          WindowsToast.show(
            'Hello, Windows Toast!',
            context,
            30,
            textStyle: const TextStyle(
              color: Colors.white,
            ),
          );
        },
        child: const Text('Show Toast'),
      )),
    );
  }
}
