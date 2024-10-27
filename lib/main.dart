import 'package:flutter/material.dart';
import 'package:latihan_flutter/bot_navbar.dart';
import 'package:latihan_flutter/navigation/arguments_screen.dart';
import 'package:latihan_flutter/navigation/first_screen.dart';
import 'package:latihan_flutter/navigation/named_screen.dart';
import 'package:latihan_flutter/navigation/return_data_screen.dart';
import 'package:latihan_flutter/navigation/second_screen.dart';
import 'package:latihan_flutter/notification/notification_screen.dart';
import 'package:latihan_flutter/notification/notification_service.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationService.init();
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      navigatorKey: navigatorKey,
      routes: {
        '/': (context) => const FirstScreen(),
        '/second': (context) => const SecondScreen(),
        '/named': (context) => const NamedScreen(),
        '/return-data': (context) => const ReturnDataScreen(),
        '/notif': (context) => const NotificationScreen(),
      },
    );
  }
}
