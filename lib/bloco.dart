import 'package:bloc/bloc.dart';
import 'package:untitled/evento.dart';

class AtualizadorTextoBloc extends Bloc<IMCEvento, String>{

  String textoIMC = "", classificacao = "";

  AtualizadorTextoBloc(): super();

  Stream<String> mapEventToState(IMCEvento evento) async* {
    double a = evento.a, p = evento.p, imc = p/(a*a);

    if(imc < 18.5){
      classificacao = "Magreza";
    }else if(imc >= 18.5 && imc <= 24.9){
      classificacao = "Normal";
    }else if( imc >= 25.0 && imc <= 29.9){
      classificacao = "Sobrepeso";
    }else if(imc >= 30.0 && imc <= 39.9){
      classificacao = "Obesidade";
    }else if(imc > 40.0){
      classificacao = "Obeisdade Grave";
    }

    textoIMC = "O IMC calculado e $imc, e a classificacao e $classificacao";

    yield textoIMC;
  }

  @override
  // TODO: implement initialState
  String get initialState => throw UnimplementedError();
}