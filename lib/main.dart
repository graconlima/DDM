
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/bloco.dart';
import 'package:untitled/evento.dart';

void main(){
  runApp(AtualizadorTexto());
}

class AtualizadorTexto extends StatefulWidget{

  AtualizadorTextoEstado createState() => AtualizadorTextoEstado();

  /*State<StatefulWidget> createState() {
    return AtualizadorTextoEstado();
  }*/
}

class AtualizadorTextoEstado extends State{

  IMCEvento ie = new IMCEvento();
  AtualizadorTextoBloc atb = new AtualizadorTextoBloc();

  Widget build(BuildContext bc){
    return MaterialApp(
        home: Scaffold(
            body: Column(
              children: <Widget>[
                TextField(
                  onChanged: (texto){
                    ie.a = double.parse(texto);
                  },
                  decoration: InputDecoration(
                      hintText: "Sua altura aqui",
                      icon: Icon(Icons.accessibility)
                  ),
                ),
                TextField(
                  onChanged: (t){
                    ie.p = double.parse(t);
                  },
                  decoration: InputDecoration(
                    hintText: "Seu peso aqui",
                    icon: Icon(Icons.alternate_email) 
                  )
                ),
                BlocBuilder(bloc: atb, builder: (c, s) => Text("${atb.state}")),
                FloatingActionButton(onPressed: (){
                  atb.add(ie);
                })
              ],
            )
        )
    );
  }

}