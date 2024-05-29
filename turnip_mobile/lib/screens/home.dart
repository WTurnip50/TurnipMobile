import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:turnip_mobile/screens/components/listTile.dart';
import 'package:turnip_mobile/screens/login.dart';
import 'package:turnip_mobile/screens/new.dart';

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
  void function(){
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context)=>NewItem()
      )
    );
  }
  void exit(){
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context)=>LoginTurnip()
      )
    );
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Ingresos",
            style: TextStyle(
              fontSize: 25.0,color: Colors.green.shade400
              ),
            ),
            const SizedBox(
                  height: 40,
                ),
            Text("0.0",
            style: TextStyle(
              fontSize: 25.0,color: Colors.green.shade400
              ),
            ),
            const SizedBox(
                  height: 40,
                ),
          Text("Retiros",
            style: TextStyle(
              fontSize: 25.0,color: Colors.red.shade400
            )
          ,),
          const SizedBox(
                  height: 40,
                ),
           Text("0.0",
            style: TextStyle(
              fontSize: 25.0,color: Colors.red.shade400
            )
          ,)
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:  [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green.shade300,
              ),
              child: Text("Menú", style: TextStyle(fontSize: 25.0,
              color: Colors.white,
              fontWeight: FontWeight.bold),),
            ),
            AppListTile(listtitle: "Agregar transaccion", onTap: function),
            const SizedBox(
              height: 40,
            ),
            AppListTile(listtitle: "Ver ingresos", onTap: function),
            const SizedBox(
              height: 40,
            ),
            AppListTile(listtitle: "Ver retiros", onTap: function),
             const SizedBox(
              height: 40,
            ),
            AppListTile(listtitle: "Salir", onTap: exit)
            
          ],
        )
      )
    );
  }
}