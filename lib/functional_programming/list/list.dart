import 'dart:math';

void main() {
  List<int> a = [1, 2, 3, 4, 5, 6];
  //count 6
  //index 5
  print(a[3]); //4

  List<String> b = ['mg mg', 'aung aung', 'su su'];
  print(b[2]);

  ///assign => mirror
  ///Force copy
  List<String> c = b.toList();
  print(b);
  print(c);
  print("------");
  b.add("aung aung");
  print(b);
  print(c);
  print("*********");

  List<String> names = ['mg mg', 'aung aung'];

  names.isEmpty;
  names.isNotEmpty;
  names.length;

  names.first;

  ///error
  names.firstOrNull;

  ///null

  names.last;

  ///error
  names.lastOrNull; //null
  ///hashCode
  names.contains('mg mg'); //true

  names.reversed.toList();

  ///reversed

  // names.addAll(["1", "2", '3']);
  // print(names);
  // names.clear();
  // print(names);

  // names.add("aung aung");
  // print(names);
  // names.remove('mg mg');
  // print(names);
  final List<String> dataset = ['mg mg', 'aung aung', 'su su', 'aye aye'];
  // String result = dataset.firstWhere(
  //   (String value) {
  //     return value == 'mg mg';
  //   },
  //   orElse: () => 'Not Found',
  // );
  // print(result);
  final String firstResult = dataset.firstWhere((value) => value.contains('g'));
  print(firstResult);
  final String lastResult = dataset.lastWhere((value) {
    return value.contains('z');
  }, orElse: () => 'Not Found');
  print(lastResult);
  final whereResult = dataset.where((value) {
    return value.contains('a');
  });
  print(whereResult.toList());

  final int indexResult = dataset.indexWhere((value) {
    /// index number = 0
    return value.startsWith('a');
  });

  print(indexResult);

  final int lastIndexResult = dataset.lastIndexWhere((value) {
    /// index number = 0
    return value.startsWith('a');
  });
  print(lastIndexResult);

  // dataset.removeWhere((element) {
  //   return element == 'mg mg';
  // });

  // print(dataset);

  // dataset.retainWhere((element) {
  //   return element.startsWith('a');
  // });
  print(dataset);
  dataset.sort((child, current) {
    return child.compareTo(current);
  });
  print(dataset);

  ///LOOP => limit
  ///map,forEach == for in
  final mapResult = dataset.map<Map<String, String>>((a) {
    return {
      "name": a,
    };
  });
  //['value',]//index
  ///{
  ///index:value,
  ///}
  print(mapResult);

  dataset.forEach((String value) {
    print(value);
  });

  final bool everyResult = [12, 15, 10].every((element) {
    return element > 10;
  });
  print(everyResult);

  final bool anyResult = [12, 15, 10, 16].any((element) {
    return element > 15;
  });
  print(anyResult);

  final List takeResult = [1, 2, 3, 4].take(1).toList();
  print(takeResult);

  final List<int> sublistResult = [1, 2, 3, 4, 5].sublist(2, 4);
  print(sublistResult);

  final List<int> generatedValues = List.generate(10, (value) {
    ///null
    return value + 1;
  });
  print(generatedValues);

  final List customGeneratedValues = generate(20, (i) => i + 1);
  print(customGeneratedValues);

  List.empty(); //[]
  final List<String> filledValues = List.filled(10, 'hello');
  print(filledValues);
  print(filled(10, 1));

  customGeneratedValues.shuffle(Random());
  print(customGeneratedValues);
  customGeneratedValues.shuffle(Random.secure());
  print(customGeneratedValues);
}

List generate(int lenght, Function(int i) callback) {
  List values = [];
  for (int i = 0; i < lenght; i++) {
    values.add(callback(i));
  }
  return values;
}

List filled(int lenght, value) {
  List values = [];
  for (var i = 0; i < lenght; i++) {
    values.add(value);
  }
  return values;
}
