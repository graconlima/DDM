class Aluno{
  String _nome = "";
  double _nota1 = 0.0, _nota2 = 0.0, _nota3 = 0.0;

  Aluno({required nome, required nota1, required nota2, required nota3});

  /*Aluno(String _nome, double _nota1, double _nota2, double _nota3){

  }*/

  //metodo modificador

  void set nome(String _nome){
    this._nome = _nome;
  }

  void set n1(double nota1){
    this._nota1 = nota1;
  }

  void set n2(double nota2){
    this._nota2 = nota2;
  }

  void set n3(double nota3){
    this._nota3 = nota3;
  }

  //metodo de acesso

  String get nome{
    return _nome;
  }

  double get n1{
    return _nota1;
  }

  double get n2{
    return _nota2;
  }

  double get n3{
    return _nota3;
  }

  double media(){
    return (_nota1+_nota2+_nota3)/3;
  }
}