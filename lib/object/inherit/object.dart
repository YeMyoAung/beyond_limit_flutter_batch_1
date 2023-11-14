class Parent {
  Parent(String name) {
    print("Hello $name");
  }

  double money = 1000;
  void work() {
    print("Work as Parent Class");
  }

  double _private = 10;
}

class ParentTwo {
  double dubt = 100;
}

// extends
class ChildOne extends Parent {
  ChildOne(String name) : super(name) {
    ///instance
    print("Child One");
  }

  double get private => super._private;

  @override
  double money = 9000;

  ///overrride
  ///super  => parent class
  ///this   => instance
  @override
  void work() {
    print("Work as child one");
  }
}

class ChildTwo extends ChildOne {
  ChildTwo(super.name);
}
