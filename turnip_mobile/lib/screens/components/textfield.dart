import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget{

  final String label;
  final bool visible;
  final TextEditingController _textController; // Declaración del controlador

  AppTextField({required this.label, required this.visible,
   required TextEditingController textController}):
    _textController = textController; // Asignación del controlador


  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _textController,
      obscureText: visible,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        labelText: label,
        hintText: "Introduce tu $label",
      )
    );
  }
}