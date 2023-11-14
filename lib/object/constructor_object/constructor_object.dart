// // Cat(_name) => error
// // name
// class Cat {
//   String _name; //null

//   ///scope
//   Cat(String name) {
//     // Cat(null)._name = 'fjaslkdf';

//     ///already exist instance
//     _name = name;
//     print(
//       "Before return an object $name",
//     );
//   }
// }

class Car {
  ///this => instance =>
  //Feature
  final String name; //m1
  String a;

  Car(
    this.name,
  ) : a = '' {
    print("Before Return $this");

    ///Car => String name => null => Fail
    ///instance created
    // name = value;
    // print('name $name');
    // print('Value $value');
    // print("Before return");
  }

  ///name = 'M1'
  Car.m1()
      //bind
      : name = 'fasdfjkl',
        a = 'fasdf' {
    // name = 'fasdf';
  }
  //name

  // factory Named Constructor
  factory Car.custom(String name) {
    name = 'Model - $name';
    return Car(name);
  }
}
