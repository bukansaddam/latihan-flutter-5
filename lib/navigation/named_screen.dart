import 'package:flutter/material.dart';

class NamedScreen extends StatefulWidget {
  const NamedScreen({super.key});

  @override
  State<NamedScreen> createState() => _NamedScreenState();
}

class _NamedScreenState extends State<NamedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Named Screen'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
