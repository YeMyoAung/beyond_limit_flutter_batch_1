import 'dart:async';

void main() {
  //Future => onError
  //Stream => onError
  // try {} catch (error) {}
  // Future.doWhile(() {
  //   try {
  //     return false;
  //   } catch (e) {
  //     return true;
  //   }
  // });
  print("Start");
  error();
  try {
    int.parse("1");
  } on FormatException catch (e) {
    print(e);
  } on IndexError catch (e) {
    print(e);
  } on TimeoutException catch (e) {
    print(e);
  } catch (e) {
  } finally {
    print("Ok");
  }
  print("End");
}

void error() {
  throw CustomError('fjaksfas');
}

class CustomError implements Exception {
  String name;
  CustomError(this.name);

  @override
  String toString() {
    return name;
  }
}

class ClassName {
  ClassName.name();
  factory ClassName.factory(String name) => ClassName.name();
}

class H extends ClassName {
  H() : super.name();
}
