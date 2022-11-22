

import 'Aluno.dart';
import "package:flutter/material.dart";

void main(){
  /*
  Aluno a = new Aluno(nome: "Joao", nota1: 7, nota2: 5, nota3: 8);
  a.nome = "pAULO";
  a.n1 = 7;
  a.n2 = 5;
  a.n3 = 8;

  print("Aluno: ${a.nome}, nota1: ${a.n1}, nota2:  ${a.n2}. nota3: ${a.n3},  media: ${a.media()}");
*/

  double a = 1.70, p = 70.0;
  runApp(MaterialApp(home: Scaffold(body: Column(
      children: <Widget>[
        TextField(onChanged:
            (t) {
          a = double.parse(t);
          double imc  = p/(a*a);
          print("IMC: $imc");
        },
            decoration: InputDecoration(
                icon:  Icon(Icons.accessibility),
                hintText: "Digite sua altura")
        ),
        TextField(onChanged:
            (t) {
          p = double.parse(t);
          double imc  = p/(a*a);
          print("IMC: $imc");
        },
            decoration: InputDecoration(
                icon:  Icon(Icons.alternate_email),
                hintText: "Digite seu peso")
        )
      ]

  ))));
}
