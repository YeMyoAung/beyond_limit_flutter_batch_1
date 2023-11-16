class Control {
  control() {
    print("Normal Control");
  }
}

class CarControl implements Control {
  @override
  control() {
    print("Car Control");
  }
}

class TrainControl implements Control {
  @override
  control() {
    print("Train Control");
  }
}

class Drive {
  final Control control;

  Drive(this.control);

  drive() {
    control.control();
  }
}

void main() {
  // Control car = CarControl();
  // Control train = TrainControl();
  final Drive carDriver = Drive(CarControl());
  final Drive trainDriver = Drive(TrainControl());
  final Drive normalDriver = Drive(Control());

  carDriver.drive();
  trainDriver.drive();
  normalDriver.drive();
}
