import 'dart:convert';
import 'dart:html_common';
import 'dart:io';
import 'dart:typed_data';

class User {
  final String name; //null
  final double mark; //null
  User(this.name, this.mark);

  User.fromJson(Map data)
      : name = data['name'] ?? "NA",
        mark = double.parse(data['mark']?.toString() ?? "0");
  // factory
  // name
  factory User.fromMap(Map data) {
    return User.fromJson(data);
  }

  Map<String, dynamic> toMap() {
    return {'name': name, 'mark': mark};
  }
}

const List<Map<String, String>> userData = [
  {"name": "Edith", "mark": "21"},
  {"name": "Therine", "mark": "10"},
  {"name": "Yvonne", "mark": "15"},
  {"name": "Caritta", "mark": "13"},
  {"name": "Louella", "mark": "71"},
  {"name": "Tersina", "mark": "49"},
  {"name": "Lulita", "mark": "70"},
  {"name": "Leia", "mark": "93"},
  {"name": "Ericka", "mark": "65"},
  {"name": "Orelia", "mark": "31"},
  {"name": "Jolyn", "mark": "9"},
  {"name": "Judy", "mark": "94"},
  {"name": "Bernardine", "mark": "55"},
  {"name": "Raquela", "mark": "56"},
  {"name": "Ezmeralda", "mark": "62"},
  {"name": "Briney", "mark": "57"},
  {"name": "Farrah", "mark": "32"},
  {"name": "Ketti", "mark": "6"},
  {"name": "Christian", "mark": "24"},
  {"name": "Frieda", "mark": "62"},
  {"name": "Desirae", "mark": "21"},
  {"name": "Lily", "mark": "15"},
  {"name": "Sashenka", "mark": "29"},
  {"name": "Dyann", "mark": "98"},
  {"name": "Ronna", "mark": "43"},
  {"name": "Pierette", "mark": "6"},
  {"name": "Florencia", "mark": "5"},
  {"name": "Annabela", "mark": "84"},
  {"name": "Lilith", "mark": "91"},
  {"name": "Fanchon", "mark": "6"},
  {"name": "Allis", "mark": "22"},
  {"name": "Julieta", "mark": "90"},
  {"name": "Carmencita", "mark": "83"},
  {"name": "Goldie", "mark": "1"},
  {"name": "Jerry", "mark": "56"},
  {"name": "Concettina", "mark": "82"},
  {"name": "Morganica", "mark": "36"},
  {"name": "Gianina", "mark": "88"},
  {"name": "Christian", "mark": "69"},
  {"name": "Belva", "mark": "75"},
  {"name": "Wendi", "mark": "62"},
  {"name": "Meriel", "mark": "22"},
  {"name": "Tami", "mark": "20"},
  {"name": "Harmonia", "mark": "72"},
  {"name": "Rhea", "mark": "67"},
  {"name": "Dianemarie", "mark": "6"},
  {"name": "Annabela", "mark": "53"},
  {"name": "Addia", "mark": "16"},
  {"name": "Alisha", "mark": "49"},
  {"name": "Olivette", "mark": "13"},
  {"name": "Lorie", "mark": "69"},
  {"name": "Tabbatha", "mark": "34"},
  {"name": "Frances", "mark": "90"},
  {"name": "Janis", "mark": "42"},
  {"name": "Belva", "mark": "24"},
  {"name": "Daryl", "mark": "4"},
  {"name": "Therine", "mark": "78"},
  {"name": "Joelly", "mark": "28"},
  {"name": "Ebonee", "mark": "30"},
  {"name": "Christian", "mark": "61"},
  {"name": "Zia", "mark": "21"},
  {"name": "Queenie", "mark": "18"},
  {"name": "Sibella", "mark": "17"},
  {"name": "Tina", "mark": "73"},
  {"name": "Hallie", "mark": "54"},
  {"name": "Noelle", "mark": "81"},
  {"name": "Edee", "mark": "5"},
  {"name": "Dawn", "mark": "29"},
  {"name": "Alejandra", "mark": "64"},
  {"name": "Rosaline", "mark": "47"},
  {"name": "Marsiella", "mark": "9"},
  {"name": "Hermione", "mark": "50"},
  {"name": "Libbie", "mark": "12"},
  {"name": "Angelique", "mark": "51"},
  {"name": "Karina", "mark": "10"},
  {"name": "Amii", "mark": "90"},
  {"name": "Joelly", "mark": "63"},
  {"name": "Gerrie", "mark": "94"},
  {"name": "Iseabal", "mark": "28"},
  {"name": "Audrie", "mark": "61"},
  {"name": "Sashenka", "mark": "33"},
  {"name": "Norine", "mark": "0"},
  {"name": "Rayna", "mark": "14"},
  {"name": "Lynea", "mark": "59"},
  {"name": "Marjie", "mark": "68"},
  {"name": "Steffane", "mark": "39"},
  {"name": "Mara", "mark": "73"},
  {"name": "Lory", "mark": "37"},
  {"name": "Mellicent", "mark": "70"},
  {"name": "Tatiania", "mark": "22"},
  {"name": "Joy", "mark": "40"},
  {"name": "Augustine", "mark": "50"},
  {"name": "Kathy", "mark": "75"},
  {"name": "Zondra", "mark": "3"},
  {"name": "Linzy", "mark": "80"},
  {"name": "Luci", "mark": "40"},
  {"name": "Beth", "mark": "73"},
  {"name": "Sam", "mark": "7"},
  {"name": "Phedra", "mark": "71"},
  {"name": "Dagmar", "mark": "66"}
];

void main() {
  // final Map<String, String> data = {"name": "Edith", "mark": "21"};
  // // User(data['name'] ?? '', double.tryParse(data['mark'] ?? '') ?? 0);
  // List<User> users = listMaptoListUser(userData);

  // print(users);
  // final User user = mapToUser({
  //   'name': 'hello',
  //   'mark': 100,
  // });
  // print(user.name);
  // print(user.mark);
  final List<User> users = transformMaptoListUser(userData);
  print(users);

  /// '0'
  ///  1

  final List<Map<String, dynamic>> mapUsers = users.map((user) {
    final Map<String, dynamic> mapUser = user.toMap();
    return mapUser;
  }).toList();
  print(mapUsers);
}

User mapToUser(Map data) {
  // var name = data['name'];
  // var mark = data['mark']; //null
  // final User user = User(
  //   name ?? "NA",
  //   double.parse(mark?.toString() ?? "0"),
  // );
  // final User user = User.fromJson(data);
  final User user = User.fromMap(data);
  return user;
}

List<User> transformMaptoListUser(List<Map<String, String>> users) {
  final List<User> userList = [];
  for (Map<String, String> user in users) {
    final User userObj = mapToUser(user);
    userList.add(userObj);
  }
  return userList;
}

//List<Map<String,String>> to List<User>
// Loop for,for in,forEach,while ,do While , map => data transform
// User Object
List<User> listMaptoListUser(List<Map<String, String>> users) {
  return users.map((data) {
    return User(
      data['name'] ?? '',
      double.tryParse(data['mark'] ?? '') ?? 0,
    );
  }).toList();
}
