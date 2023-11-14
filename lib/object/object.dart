/// Private         Public
/// start with _
// import
// export
import 'private_data.dart';

void main() {
  // _PublicAccess publicAccess = _PublicAccess();

  Phone vivo = Phone(); //instance
  vivo.name = 'Vivo';
  print(vivo.name);
  Phone iphone = Phone();
  iphone.name = 'fjaskld';
  print(iphone.name);
  print(vivo == iphone);

  //false
  print(vivo.name == iphone.name);
}

/// class name {}
/// hello world CelloWorld
//  Object => empty
class Phone {
  ///Feature
  /// properties(variable),method(function)
  String? name;
}
