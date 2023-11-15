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
  ChildOne(String name, String age) : super(name) {
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

class ChildTwo extends Parent {
  ChildTwo(super.name);
}

class ChildOneChild extends ChildOne {
  // ChildOneChild(String v1, String v2) : super(v1, v2);
  ChildOneChild(super.name, super.age);
}

void main() {
  // ChildOneChild();
  ///အစားတောင်း,ကိုယ်တိုင်တောင်း ပြန်ထည့်ပေး
  ///super     , (fadsf):super()
  // ChildOne();
}
