import 'package:dart_programming/assignments/day4/ko_hein_htet.dart';

///Future

void main() async {
  ///await => Future Function
  ///then  => notify,can get value
  ///whenComplete => notify
  // print(futureTwo()); //1
  // var data = await futureTwo();
  // print(data);
  // Future a = Future(() => null);

  // futureTwo().then((value) {
  //   print(value);
  // });

  // final ClassName c1 = ClassName();
  // print("C1 $c1");
  // final ClassName future = ClassName.future();
  // print("Future $future");
  print("Start");
  // heavyTask();
  backgroundTask()
      .timeout(
        Duration(seconds: 1),
        // onTimeout: () => DateTime(-1),
        //error
        //notify
        //default
      )
      .then((value) => print(value))
      .catchError((error) {
    print("Error $error");
  }, test: (value) {
    print("Value is $value");
    return true;
  });
  print("End");

  // await Future(() {});
}

void heavyTask() {
  int count = 0;
  print("Count is $count");
  for (var i = 0; i < 99999999999; i++) {
    count = i;
  }
  print("Complete $count");
}

Future<DateTime> backgroundTask() async {
  ///main thread block event loop
  ///event loop
  // Future(() {
  //   print("Start Doning");
  //   int count = 0;
  //   print("Count is $count");
  //   for (var i = 0; i < 99999999999; i++) {
  //     count = i;
  //   }
  //   print("Future Construtor: Done");
  // });
  await Future.delayed(Duration(seconds: 3));
  print("Hello");
  // return Future(() {
  //   int count = 0;
  //   print("Count is $count");
  //   for (var i = 0; i < 99999999999; i++) {
  //     count = i;
  //   }
  //   print("Complete $count");
  // }).then((value) {
  //   print("Future Construtor: Done");
  // });
  return DateTime.now();
}

Future futureOne() {
  return Future(() => 1);
}

//List<String>
///async => await
///async => normal => Future
Future<String> futureTwo() async {
  return "1";

  ///future
}

class ClassName {
  ClassName() {
    int count = 0;
    for (var i = 0; i < 9999; i++) {
      count = i;
    }
    print("Construtor: Done");
  }

  ClassName.future() {
    backgroundTask();
  }
}
