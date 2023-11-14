class Phone {
  final int androidVersion;
  Phone(this.androidVersion);

  Phone.pie() : androidVersion = 9;

  Phone.q() : androidVersion = 10;

  int batteryMah = 2500;

  List setting() {
    return [1, 2, 3];
  }
}

class Huawei extends Phone {
  // Huawei(super.androidVersion);
  Huawei(int name) : super(name);
  @override
  int batteryMah = 5000;

  @override
  List setting() {
    ///1,2,3
    ///4,5,6
    List a = super.setting().toList();
    a.addAll([4, 5, 6]);
    return a;
  }
}

class Vivo extends Phone {
  @override
  int batteryMah = 3500;

  Vivo(super.androidVersion);
}

void main() {
  Vivo vivo = Vivo(13);
  Huawei huawei = Huawei(11);

  print(vivo.androidVersion);
  print(huawei.androidVersion);

  // print(vivo.setting());
  // print(huawei.setting());
}
