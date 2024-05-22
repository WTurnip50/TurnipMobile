import 'package:flutter/cupertino.dart';

class HomeTurnip extends StatefulWidget{
  const HomeTurnip({super.key});

  @override
  State<HomeTurnip> createState() => _HomeTurnipState();
}

class _HomeTurnipState extends State<HomeTurnip>{

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Turnip Mobile Home"),
      ),
      child: SafeArea(
        child: Text("Texto de prueba")
      )
    );
  }
}