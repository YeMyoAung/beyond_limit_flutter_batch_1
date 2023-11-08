void main(){

  int i = 1;
  ///String => int
  int.parse("asdf");//error
  int.tryParse("afsdfasd");//null
  ///int => double
  i.toDouble();///double
  ///int => String
  i.toString();

}