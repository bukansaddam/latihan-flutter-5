import 'package:flutter/material.dart';

class ArgumentsScreen extends StatefulWidget {
  const ArgumentsScreen({super.key, required this.message});

  final String message;

  @override
  State<ArgumentsScreen> createState() => _ArgumentsScreenState();
}

class _ArgumentsScreenState extends State<ArgumentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arguments Screen'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              widget.message,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context, 'Data from Arguments Screen');
            },
            child: const Text('Go Back'),
          ),
        ],
      ),
    );
  }
}
