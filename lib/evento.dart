
class IMCEvento{
  double a = 1.70, p = 70.0, imc = 0;
  set altura(String a){
    this.a = double.parse(a);
  }

  set peso(String p){
    this.p = double.parse(p);
  }
}