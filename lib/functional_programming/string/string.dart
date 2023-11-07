void main() {
  String name = "Flutter and Dart";

  ///စကားလုံးအကြီးပြောင်းပေးမယ်
  print(name.toUpperCase());

  ///စကားလုံးအသေးပြောင်းပေးမယ်
  print(name.toLowerCase());

  ///ဗလာဖြစ်နေလား
  print(name.isEmpty);

  ///ဗလာမဟုတ်ဘူး
  print(name.isNotEmpty);

  ///အရေအတွက်
  print(name.length);

  /// datatypeမသိတဲ့အခါ
  print(name.runtimeType);

  //Flutter and Dart
  //Flutter & Dart
  ///* Pattern datatype,
  ///ပထမဆုံးမြင်ရမဲ့ စကားလုံးနေရာမှာ အစားသွင်းတာ
  print(name.replaceFirst('and', '&'));

  String replaceMe = 'an opplle';
  print(replaceMe.replaceFirst('o', 'a'));
  //'an opile'
  print(replaceMe.replaceFirst('p', 'i', 5));

  ///* Note Index Number = 0
  ///* Note Count        = 1

  //ရှိသမျှအကုန်လုံးကို အစားသွင်းမှာ
  print(replaceMe.replaceAll('p', 'i'));

  //ပါလားစစ်တာ
  print(replaceMe.contains('l', 7));
}
