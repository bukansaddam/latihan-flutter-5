import 'package:flutter/material.dart';
import 'package:latihan_flutter/navigation/arguments_screen.dart';
import 'package:latihan_flutter/navigation/second_screen.dart';
import 'package:latihan_flutter/notification/notification_service.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondScreen(),
                  ),
                );
              },
              child: const Text('Go to Second Screen'),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/named');
              },
              child: const Text('Go to Named Screen'),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ArgumentsScreen(
                    message: 'Halo',
                  );
                }));
              },
              child: const Text('Go to Arguments Screen'),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                _returnData();
              },
              child: const Text('Go to Return Data Screen'),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                NotificationService.showNotification('Notification', 'This is a notification', 'openPage');
              },
              child: const Text('Show Notification'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _returnData() async {
    final result = await Navigator.pushNamed(context, '/return-data');

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$result'),
      ),
    );
  }
}
