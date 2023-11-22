import 'dart:io';
import 'dart:math';

/// 1 - 3
/// time sort => take 3

/// 5
/// distance = input
/// reward 1 = 5,2= 3
/// speed

//  user  point 10
//  horse No:
//  1 to 3 ?
//  true  +1
//  :
//  false -1
//  point  0     game over

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
  int get hashCode => _name.hashCode;

  @override
  operator ==(covariant Horse other) {
    return _name == other._name;
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

class UserProfile {
  final String name;
  int beat;
  int _point;
  UserProfile(this.name, [this.beat = 1]) : _point = 10;

  bool get isGameOver {
    return _point <= 0;
  }

  int get point {
    return _point;
  }

  void win() {
    _point += beat;
  }

  void lose() {
    _point -= beat;
  }
}

late UserProfile player;
List<Horse> beatHorses = [];

void main() {
  print("Username:");
  player = UserProfile(stdin.readLineSync() ?? "Guest");
  print("Welcome from Horse Game!");
  print("${player.name}, Your Point is : ${player.point}");
  game();
}

Future game() async {
  final randomHNum = Random.secure().nextInt(50);

  int? count = randomHNum < 5 ? 10 : randomHNum;

  final List<Horse> horseList = List.generate(count, (index) {
    final randomSpeed = Random.secure().nextInt(10).toDouble();

    return Horse(
      randomSpeed == 0 ? 2 : randomSpeed,
      index + 1,
    );
  });

  print("Available Horse No:");
  for (var element in horseList) {
    print("$element, Speed ${element.initialSpeed}");
  }

  print("Choose Your Horse No:");

  int? chooseYourHorse;
  while (chooseYourHorse == null) {
    chooseYourHorse = int.tryParse(stdin.readLineSync().toString());
    if ((chooseYourHorse ?? 0) > count) {
      print("Unavailable");
      chooseYourHorse = null;
    }
  }
  beatHorses.add(horseList[chooseYourHorse - 1]);

  print("Beat");

  int? beat;
  while (beat == null) {
    beat = int.tryParse(stdin.readLineSync().toString());
    if ((beat ?? 0) > player.point) {
      print("Not enough points to beat");
      beat = null;
    }
  }

  player.beat = beat;

  final randomDNum = Random.secure().nextInt(20);

  final int distance = randomDNum == 0 ? 5 : randomDNum;

  await Future.wait(
    horseList.map(
      (horse) => goGOGO(distance, distance, horse.initialSpeed, horse),
    ),
  );
  print("Result");
  reward.forEach((key, value) {
    print("$key: $value");
  });
  final List<DateTime> result =
      reward.keys.map((e) => DateTime.parse(e)).toList();
  result.sort((p, c) => p.compareTo(c));
  // print("D $result");
  final top3 = result.take(3).map((e) => e.toString());
  //print("D $top3");
  // reward String,List<H>
  // List<H> ,String
  // H,      String

  // [].add('');

  final Map<Horse, String> update = reward.map((key, value) {
    if (value.contains(beatHorses.last)) {
      return MapEntry(beatHorses.last, key);
    }
    return MapEntry(value.first, key);
  });
  if (top3.contains(update[beatHorses.last])) {
    print("Win");
    player.win();
  } else {
    print("Lose");
    player.lose();
  }
  if (player.isGameOver) {
    print("Game Over");
  } else {
    await game();
  }
}
