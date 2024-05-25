import 'package:flutter/material.dart';
import 'package:technical_assessment/screens/home_screen.dart';
import 'package:technical_assessment/screens/message_screen.dart';

import 'service/navigation_service.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Technical Assessment',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: NavigationService().navigatorKey,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/message': (context) => const MessageScreen(),
      },
    );
  }
}
