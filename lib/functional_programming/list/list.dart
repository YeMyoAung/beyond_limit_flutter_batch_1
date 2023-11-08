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

  // names.where(element);


  // names.addAll(["1", "2", '3']);
  // print(names);
  // names.clear();
  // print(names);

  // names.add("aung aung");
  // print(names);
  // names.remove('mg mg');
  // print(names);
}


