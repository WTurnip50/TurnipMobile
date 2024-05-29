import 'package:flutter/material.dart';

class AppListTile extends StatelessWidget{

  final String listtitle;
  final VoidCallback onTap;

  const AppListTile({super.key, required this.listtitle, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      title: Text(listtitle),
      onTap: onTap,
    );
  }
}