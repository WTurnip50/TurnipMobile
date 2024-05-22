import 'package:flutter/cupertino.dart';
import 'package:turnip_mobile/screens/home.dart';

class TurnipApp extends StatelessWidget {
  const TurnipApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Turnip mobile',
      home: HomeTurnip(),
      theme: CupertinoThemeData(
        primaryColor: CupertinoColors.systemBlue,
        brightness: Brightness.light
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}