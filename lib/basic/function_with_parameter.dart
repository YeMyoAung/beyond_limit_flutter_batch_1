void main() {
  //String name;
  // sum(1, 2);
  // sum(3, 4);
  // type();
  // name("Mg Mg");
  // int result = calculatePrice(5);
  // print(result);
  // multiple(2, 3);
  // output([]);
  // equation("December", 28, 2023);
  power(
    2,
  );
}

void power(
  double base, [
  double? pow,
]) {
  /// ?? null check
  /// varaible ?? next value
  /// ??= if null value
  print("$base**${pow ?? 1}");
}

///Datatype
void type() {
  var answer = 'summer';
  print(answer);
}

void name(String input) {
  print(input);
}

int calculatePrice(int item) {
  int value = item * 1000;
  return value;
}

void multiple(int a, int b) {
  print(a * b);
}

void output(answer) {
  print(answer);
}

void equation(String a, int b, int c) {
  print('$a,$b,$c');
}

void sum(double a, double b) {
//  ....
}

void a(

    ///input parameters

    ) {}
