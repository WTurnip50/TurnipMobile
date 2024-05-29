import 'package:flutter/material.dart';
import 'package:turnip_mobile/screens/components/button.dart';
import 'package:turnip_mobile/screens/components/numerictextfield.dart';
import 'package:turnip_mobile/screens/components/textfield.dart';
import 'package:turnip_mobile/screens/home.dart';

class NewItem extends StatefulWidget{
  const NewItem({super.key});

  @override
  State<NewItem> createState() => _NewItemState();
}

class _NewItemState extends State<NewItem>{
  String cantidad = "Introduce la cantidad";
  final TextEditingController _cantidadController = TextEditingController();
  final TextEditingController _conceptoController = TextEditingController();


  void Guardar(){
    Navigator.push(
        context,
        MaterialPageRoute(
        builder: (context)=>HomeTurnip()
        )
    );
  }

 @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Nuevo elemento",
      home: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Introduce los datos"),
            centerTitle: true,
          ),
          backgroundColor: const Color.fromARGB(255, 238, 235, 235),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(cantidad,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                const SizedBox(
                  height: 20,
                ),
                AppNumericTextField(
                  label: "Cantidad", 
                  textController: _cantidadController
                ),
                const SizedBox(
                  height: 40,
                ),
                AppTextField(
                  label: "Concepto",
                  visible: false,
                  textController: _conceptoController
                ),
                const SizedBox(
                  height: 40,
                ),
                AppButton(
                 text: "Guardar",
                 onPressed: Guardar)
              ]
            )
          )
        ),
      ),
    );
  }
}