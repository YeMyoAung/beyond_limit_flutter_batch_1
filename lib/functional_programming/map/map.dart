void main() {
  final Map<String, String> dataset = {
    '1': 'mg mg',
    // '1': "aye aye", //mg mg
    '2': 'aung aung',
  };
  dataset['4'] = 'edited';
  // dataset.update('4', (value) {
  //   print(value);
  //   if (value != 'mg mg') return 'mg mg';
  //   return value;
  // });
  dataset.updateAll((key, value) {
    return "fjaskdfj";
  });
  print(dataset);

  return;

  print(dataset.entries);
  print(dataset.keys);
  print(dataset.values);

  // dataset.addAll(other);
  // dataset.addEntries([
  //   MapEntry('3', 'su su'),
  //   MapEntry('4', 'aye aye'),
  //   MapEntry('5', 'u mya'),
  //   MapEntry('6', 'daw hla'),
  // ]);
  // print(dataset);
  dataset.addAll({'3': 'su su', '4': 'aye aye', '5': 'u mya', '6': 'daw hla'});
  print(dataset);

  // final removeValue = dataset.remove('7');
  // print(dataset);
  // print(removeValue);
  // dataset.removeWhere((key, value) {
  //   print("Key is $key, Value is $value");
  //   return key == '6' || value == 'aye aye';
  // });
  // print(dataset);
  // dataset.clear();
  // dataset.containsKey(key);
  // dataset.containsValue(key);
  dataset.forEach((key, value) {
    print("key = $key,value = $value");
  });

  ///map => copy,tran
  final Map<String, String> copy = dataset.map<String, String>((key, value) {
    return MapEntry(key, value.toUpperCase());
  });

  print(dataset);
  print(copy);
  print("---------");
  dataset.addEntries([MapEntry('8', 'Ok')]);
  print(dataset);
  print(copy);

  final putIfAbsentResult = dataset.putIfAbsent('9', () => 'new value');
  print(dataset);

  print(putIfAbsentResult);

  // dataset.update('1', (value) => null);
}

putIfAbsent(
  String key,
  Function() value,
) {
  final a = {};
  if (a.containsKey(key)) {
    return a[key];
  }
  final v = value();
  a.addEntries([MapEntry(key, v)]);
  return v;
}
