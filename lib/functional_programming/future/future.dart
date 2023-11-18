import 'dart:async';
import 'dart:math';

void main() async {
  print("Start");

  /// Delay , callback function
  // Future.delayed(Duration(seconds: 3), () {
  //   print("Done");
  // });

  // Future.error("error");
  ///micro
  // hello();
  // Future(() {
  //   print("Future 1");
  // });
  // scheduleMicrotask(() {
  //   print("Mirco Task");
  // });
  // Future.microtask(() {
  //   print("Hello World!");
  //   return 1;
  // });
  // Future(() {
  //   print("Future 2");
  // });

  // Future.sync(() {
  //   print("Hello");
  //   for (var i = 0; i < 9999999999; i++) {}
  // });

  // final result = await Future.forEach([hello(1), hello(2), hello(3)], (value) {
  //   return value;
  // });

  // final result = await Future.wait([
  //   hello(1),
  //   hello(2),
  //   hello(10),
  // ]);
  ///10
  final List file = List.generate(100, (index) => index);
  final List upload = [];
  int i = 0;
  int runtime = 0;
  Future.doWhile(() {
    //int
    // return Future(() {
    runtime++;
    print("Work");
    final v = Random.secure().nextInt(100);
    if (file.contains(v) && !upload.contains(v)) {
      upload.add(v);
      i++;
    }
    return i < file.length;
    // });
  });

  print("Runtime Count $runtime");

  /// multi-processing

  print("End");
}

//Event Loop
Future<void> hello(int second) async {
  ///MMF
  // Future(() {
  //   print("Hello");
  // });
  // print("Hello");

  await Future.delayed(Duration(seconds: second));
  print("Done");
}

Future<int> getValue() {
  return Future.value(1);
}
