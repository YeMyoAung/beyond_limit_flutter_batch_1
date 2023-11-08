void main(){

  ///String => double
  double.parse("123");///error
  double.tryParse("123");///null

  double a = 1.2;

  ///double => int
  a.toInt();//1
  ///int
  print(a.ceil());//ကြီးရာကို ကပ်ပေးမယ်
  print(a.floor());//ငယ်ရာကိုကကပ်ပေးမယ်
  print(a.round());//နီးရာကို ကပ်ပေးမယ်
  ///double
  a.ceilToDouble();
  a.floorToDouble();
  a.roundToDouble();
  print(a.truncateToDouble());//ဒသမနောက်ကဟာတွေဖျက်
}