void main() {
  profileMaker('Ok', 'Mg Mg', 'Ok', 'Ok');

  profileMakerWithNameParameter(name: "mg mg");

  adding(numberOne: 1, numberTwo: 2);
}

///po,np
///po,op

///default => optional
///required
void profileMakerWithNameParameter({
  required String? name,
  String? bio,
  String? birthday,
  String? age,
}) {
  print({
    'name': name,
    'bio': bio,
    'birthday': birthday,
    'age': age,
  });
}

void profileMaker(String name, String bio, String birthday, String age) {
  print({
    'name': name,
    'bio': bio,
    'birthday': birthday,
    'age': age,
  });
}

// []
void adding({required int numberOne, required int numberTwo}) {
  print(numberOne + numberTwo);
}
