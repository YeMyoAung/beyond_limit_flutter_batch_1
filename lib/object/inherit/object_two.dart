class Phone {
  double battery = 100;
  int ram = 6;
  int cup = 8;
}

class Vivo extends Phone {}

class Huawei extends Phone {}

void needAPhone(Phone device) {
  print(device is Vivo);
  print(device);
}

class A {}

void main() {
  needAPhone(Vivo());
  needAPhone(Huawei());
  Phone vivo = Vivo();
  Huawei huawei = Huawei();
}
