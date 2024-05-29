import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppNumericTextField extends StatelessWidget{

  final String label;
  final TextEditingController _textController; // Declaración del controlador

  AppNumericTextField({required this.label,
   required TextEditingController textController}):
    _textController = textController; // Asignación del controlador


  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'^\d+(\.\d*)?'))],
      controller: _textController,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        labelText: label,
        hintText: label,
      )
    );
  }
}