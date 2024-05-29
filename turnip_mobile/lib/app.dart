import 'package:flutter/material.dart';
import 'package:turnip_mobile/screens/login.dart';

class TurnipApp extends StatelessWidget {
  const TurnipApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Turnip mobile',
      home: LoginTurnip(),
    );
  }
}