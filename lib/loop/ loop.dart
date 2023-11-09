void main() {
  for (int start = 0; start <= 10; start++) {
    print(start);
  }
  print("----");
  customForLoop(0, (value) => value <= 10, (vaule) => vaule + 1, (start) {
    print(start);
  });
  //variable
  //validate => body run => i/d
  print("*****");
  int startValue = 0;

  while (startValue < 10) {
    print(startValue);
    startValue++;
  }
  // List a = [];

  // while (a.length < 10) {
  //   print(a);
  //   a.add(DateTime.now());
  // }

  for (var a in []) {
    print(a);
  }
}

// for (int start = 0; start <= 10; start++) {
//     print(start);
//   }
void customForLoop(
  int start,
  bool Function(int value) end,
  int Function(int vaule) id,
  Function(int value) body,
) {
  if (end(start)) {
    body(start);

    customForLoop(id(start), end, id, body);
  }
}
