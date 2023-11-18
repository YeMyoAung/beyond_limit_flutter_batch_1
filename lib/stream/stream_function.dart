import 'dart:async';

void main() async {
  // final StreamSubscription liveStream = getStream().listen(
  //   (value) {
  //     print(value);
  //   },
  //   cancelOnError: false,
  // );
  // getStream().listen(
  //   (value) {
  //     print(value);
  //   },
  //   cancelOnError: false,
  // );
  final a = getStream().asBroadcastStream();
  // a.listen((event) {
  //   print(event);
  // });
  // a.listen((event) {
  //   print(event);
  // });
  await a.forEach((element) {
    print(element);
  });

  // Future.delayed(Duration(seconds: 3), () {
  //   liveStream.cancel();
  // });
}

/// controller
/// funtion
/// Stream

Stream getStream() async* {
  int i = 0;
  while (i < 100) {
    await Future.delayed(Duration(seconds: 1));
    // if (i == 3) yield Future.error(3);
    i++;
    yield i;
  }
}
