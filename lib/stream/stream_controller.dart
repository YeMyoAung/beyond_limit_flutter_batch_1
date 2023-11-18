import 'dart:async';

void main() async {
  /// create controller  pipline

  final StreamController controller = StreamController.broadcast();

  ///input
  controller.sink;

  ///output
  controller.stream.listen((event) {
    print("Listener A: $event");
  });
  controller.sink.add(1);
  controller.stream.listen((event) {
    print("Listener B: $event");
  });
  controller.sink.add(2);

  await controller.stream.forEach((element) {
    print(element);
  });

  // controller.close();
}
