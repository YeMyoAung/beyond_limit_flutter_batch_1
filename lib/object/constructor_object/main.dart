import 'package:dart_programming/object/constructor_object/constructor_object.dart';

void main() {
  Car c1 = Car('M1'); //instance
  Car c2 = Car('M1'); //instance
  Car c3 = Car('M1'); //instance
  Car c4 = Car.m1();
  // c4.name = 'fasdf';
  //instance

  print("Result $c1");

  // String name; //null
  // print(name);
}
