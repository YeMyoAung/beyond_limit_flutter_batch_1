import 'dart:async';

void main() {
  // Stream a = Stream.empty();
  // a.listen((event) {
  //   print(event);
  // });
  // Stream a = Stream.error('1000');
  // a.listen((event) {
  //   print(event);
  // });

  // Stream.castFrom(source);
  // final Function fn = ;
  // Stream.fromFuture(() {
  //   return Future.value(100);
  // }())
  //     .listen((event) {
  //   print(event);
  // });

  // Stream.fromIterable([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]).listen((event) {
  //   print(event);
  // });
  Stream.periodic(Duration(seconds: 1)).listen((event) {
    ///microtask
    ///MMF
  });
  Timer.periodic(Duration(seconds: 1), (timer) {
    print('1');
  });
}
