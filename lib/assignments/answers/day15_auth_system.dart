import 'dart:io';

///Register System
///Login System
///Logout System
///User Record   => Database (List)

final List<User> registerUsers = [];
// Register
// identity => email/phone
// password
// displayname
// sex

// Login
// identity =>
// password
User? loginUser;

class User {
  String identity;
  String _password;
  String displayName;
  int _sex;

  User._(this.identity, String password)
      : _password = password,
        displayName = '',
        _sex = -1;

  User._register({
    required this.identity,
    required String password,
    required this.displayName,
    required int sex,
  })  : _password = password,
        _sex = sex;

  factory User.register({
    required String identity,
    required String password,
    required String displayName,
    required int sex,
  }) {
    final User user = User._register(
      identity: identity,
      password: password,
      displayName: displayName,
      sex: sex,
    );

    if (!registerUsers.contains(user)) {
      registerUsers.add(user);
      return user;
    }
    throw "Already registered";
  }

  factory User.login(String identity, String password) {
    final User user = User._(identity, password);
    final int index = registerUsers.indexOf(user);
    if (index == -1) throw "Invalid credentials";
    loginUser = registerUsers[index];
    return loginUser!;
  }

  String get sex {
    switch (_sex) {
      case 1:
        return 'male';
      case 2:
        return 'female';
      default:
        return 'unknown';
    }
  }

  @override
  operator ==(covariant User other) {
    return other.identity == identity && other._password == _password;
  }

  @override
  int get hashCode => '$identity$_password'.hashCode;

  @override
  String toString() {
    return {
      'identity': identity,
      'displayName': displayName,
      'sex': sex,
    }.toString();
  }
}

void main() {
  ask();
}

void ask() {
  if (loginUser != null) {
    print("Welcome ${loginUser!.displayName}");
    print("1. Logout");
    int? option;
    while (option == null) {
      option = int.tryParse(stdin.readLineSync().toString());
    }

    if (option == 1) {
      loginUser = null;
      print("Logged out");
    }

    return ask();
  }
  print("Welcome from Blah Blah");
  print("1. Register");
  print("2. Login");
  int? option;
  while (option == null) {
    option = int.tryParse(stdin.readLineSync().toString());
  }

  if (option == 1) {
    return register();
  } else {
    return login();
  }
}

void register() {
  String? username, password, displayName, sex;
  while (username == null) {
    print("Username:");
    username = stdin.readLineSync();
  }
  while (password == null) {
    print("Password:");
    password = stdin.readLineSync();
  }
  while (displayName == null) {
    print("Display Name:");
    displayName = stdin.readLineSync();
  }
  while (int.tryParse(sex.toString()) == null) {
    print("Sex:");
    print("1. Male");
    print("2. Female");
    sex = stdin.readLineSync();
  }
  try {
    final User user = User.register(
        identity: username,
        password: password,
        displayName: displayName,
        sex: int.parse(sex!.toLowerCase()));
    print("Register User: $user");
  } catch (e) {
    print("User already registered");
  }
  ask();
}

void login() {
  String? username, password;
  while (username == null) {
    print("Username:");
    username = stdin.readLineSync();
  }
  while (password == null) {
    print("Password:");
    password = stdin.readLineSync();
  }
  try {
    final User user = User.login(username, password);
    print("Login User: $user");
  } catch (e) {
    print("Invalid credentials");
  }
  ask();
}
