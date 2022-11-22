
import 'package:flutter/material.dart';

/*void main(){
  runApp(MaterialApp(home: MinhaHomePage()));
}*/

class TelaInicial extends StatelessWidget{

  String nome = "";

  Widget build(BuildContext bc){
    return Scaffold(
        appBar: AppBar(title: Text("Exemplo Navegacao")),
        body: Row(children: <Widget>[
          Container(
              width: 100,
              child: TextField(onChanged: (texto){nome = texto;},
                  decoration: InputDecoration(
                      icon: Icon(Icons.accessibility),
                      hintText: "Seu nome aqui")
              )
          ),
          FloatingActionButton(
              heroTag: "bt1",
              onPressed: (){
                Navigator.of(bc).push(
                    MaterialPageRoute(builder: (bc) => SegundaTela(nome))
                );
              },
              child: Text("Tela 2")),
          FloatingActionButton(
              heroTag: "bt2",
              onPressed: (){
                Navigator.of(bc).pushReplacement(
                    MaterialPageRoute(builder: (bc) => MinhaHomePage())
                );
              },
              child: Text("Tela 3")
          )
        ])
    );
  }
}


class SegundaTela extends StatelessWidget{

  String parametro = "";

  SegundaTela(String parametro){
    this.parametro = parametro;
  }

  Widget build(BuildContext bc){
    return Scaffold(
        body: Center(
            child: Row(children: [
              Text("Ola $parametro. Boa tarde!"),
              FloatingActionButton(
                  child: Text("Voltar"),
                  onPressed: (){Navigator.pop(bc);}
              )
            ])
        )
    );
  }
}


class MinhaHomePage extends StatefulWidget{

  TerceiraTela createState() => TerceiraTela();
}

int contador = 0;


class TerceiraTela extends State<MinhaHomePage>{


  void incrementoContador(){
    setState(() {
      contador++;
    });
  }

  Widget build(BuildContext bc){
    return Scaffold(
        appBar: AppBar(
            title: Text("Terceira Tela"),
            backgroundColor: Color(0xFF0000FF)
        ),
        body: Center(
            child: FloatingActionButton(
                child: Text("Voltar"),
                onPressed: (){
                  incrementoContador();
                  print("visitas a essa pagina: $contador");
                  Navigator.of(bc).push(MaterialPageRoute(builder: (bc) => TelaInicial()));
                }
            )
        )
    );
  }
}