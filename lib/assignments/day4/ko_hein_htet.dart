import 'dart:math';

void main() {
  adding(3, 1);
  var result = sub(2, 3);
  print(result);
  var multiresult = multiple(2, 2);
  print(multiresult);
  var yourname = name('Ko Ko');
  print('Your name is $yourname');
  var cost = price(10);
  print(cost);
}

void adding(int x, int y) {
  int z;
  z = x + y;
  print('the value is $z');
}

int sub(int x, int y) {
  int z;
  z = x - y;
  return z;
}

int multiple(int x, int y) {
  int z;
  z = x * y;
  return z;
}

String name(String input) {
  return 'Your name is $input';
}

double? price([int? item]) {
  item ??= 0;
  switch (item) {
    case (> 100 && < 200):
      return item * 500;

    case (> 200):
      return item * 1000;

    default:
      return item * 20;
  }
}
