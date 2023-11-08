void main() {
  //start 12
  //end 15
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

  ///* Note Index Number = 0 //List
  ///* Note Count        = 1

  //ရှိသမျှအကုန်လုံးကို အစားသွင်းမှာ
  print(replaceMe.replaceAll('p', 'i'));

  //ပါလားစစ်တာ
  print(replaceMe.contains('l', 7));

  print(replaceMe.substring(0,2));
  //အပိုင်းအစတစ်ခု ဖျက်ထုတ်
  print(name.substring(12));
  print(name.substring(0,7));

  //စလား
  print(name.startsWith('l',1));
  //ဆုံးလား
  print(name.endsWith('s'));
  ///ခွဲခြမ်းတာ
  print(name.split(' '));

  //ရွေ့နဲ့နောက်မှာspaceကိုဖျက်ပေးတယ်
  const String spaces  = " name ";
  print(spaces.trim());
  print(spaces.trimLeft());
  print(spaces.trimRight());
  print("---------------");
  ///ဖြည့်ပေးတာ
  print("name".padLeft(10,'x'));
  print("name".padRight(10,'x'));
  ///index ရှာတာ
  print(name.indexOf("r",7));
}
