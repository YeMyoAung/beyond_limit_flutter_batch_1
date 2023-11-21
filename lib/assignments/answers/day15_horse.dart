import 'dart:io';
import 'dart:math';

/// 5
/// distance = input
/// reward 1 = 5,2= 3
/// speed

final Map<String, List<Horse>> reward = {};

class Horse {
  final String _name;
  double initialSpeed;

  Horse(
    this.initialSpeed,
    int index,
  ) : _name = "No: $index";

  void run() {
    initialSpeed = Random.secure().nextInt(10).toDouble();
  }

  @override
  String toString() {
    return _name;
  }
}

Future<void> goGOGO(
  int distance,
  int past,
  double previousSpeed,
  Horse horse,
) async {
  await Future.delayed(
    Duration(
      seconds: (distance ~/ (horse.initialSpeed == 0 ? 1 : horse.initialSpeed)),
    ),
  );
  past--;
  if (past == 0) {
    print("${horse._name}: 👏");
    final String current = DateTime.now().toString();

    final List<Horse> winner = reward[current] ?? [];

    winner.add(horse);

    reward[current] = winner;

    return;
  }
  double currentSpeed = horse.initialSpeed;
  horse.run();
  if (currentSpeed > previousSpeed) {
    print("${horse._name}: 💪");
  } else if (currentSpeed < previousSpeed) {
    print("${horse._name}: 👎");
  } else {
    print("${horse._name}: 👌");
  }
  await goGOGO(distance, past, currentSpeed, horse);
}

void main() {
  print("Distance:");

  int? distance = int.tryParse(stdin.readLineSync().toString()) ?? 3;
  print("Horse Count:");

  int? count = int.tryParse(stdin.readLineSync().toString()) ?? 5;

  final List<Horse> horseList = List.generate(
    count,
    (index) => Horse(
      Random.secure().nextInt(10).toDouble(),
      index + 1,
    ),
  );

  Future.wait(
    horseList.map(
      (horse) => goGOGO(distance, distance, horse.initialSpeed, horse),
    ),
  ).then((value) {
    print("Winner");
    reward.forEach((key, value) {
      print("$key: $value");
    });
  });
}
