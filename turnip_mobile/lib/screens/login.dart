import 'package:flutter/material.dart';
import 'package:turnip_mobile/screens/components/button.dart';
import 'package:turnip_mobile/screens/home.dart';
import 'package:turnip_mobile/screens/components/textfield.dart';

class LoginTurnip extends StatefulWidget{
  const LoginTurnip({super.key});

  @override
  State<LoginTurnip> createState() => _LoginTurnipState();
}

class _LoginTurnipState extends State<LoginTurnip>{

  void onPressed() {
    String user = _usuarioController.text.trim();
    String pass = _passwordController.text.trim();
    if(user=="israel"&&pass=="1234"){
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context)=>HomeTurnip()
          )
        );
    }
    /*var users = [
      Users("Israel", "1234"),
      Users("Angel", "ang31"),
      Users("Gabriel", "gabo05")
    ];
    for (var us in users) {
      if (user == us.username && pass == us.password) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => HomeScreen(
                      Usuario: user,
                      Data: [],
                )
            )
        );
      }
    }*/
  }

  String welcome = "Bienvenido a FinAPP tu app de finanzas";
  @override
  void initState(){
    super.initState();
  }
  final TextEditingController _usuarioController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FinAPP",
      home: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Inicio de sesión"),
            centerTitle: true,
          ),
          backgroundColor: const Color.fromARGB(255, 238, 235, 235),
          body: Center(
            child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                Text(welcome,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold)
                    ),
                const SizedBox(
                  height: 20,
                ),
                AppTextField(
                  label: "usuario",
                  visible: false,
                  textController: _usuarioController),
                const SizedBox(
                  height: 20,
                ),
                AppTextField(
                  label: "contraseña",
                  visible: true,
                  textController: _passwordController),
                const SizedBox(
                  height: 20,
                ),
                AppButton(
                  text: "Iniciar Sesión",
                  onPressed: onPressed)
               ],
            ),
          ),
        ),
      ),
    );
  }
}