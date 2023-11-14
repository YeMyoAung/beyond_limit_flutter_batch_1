import 'package:dart_programming/object/simple_object/facebook_account_info.dart';

void main() {
  FacebookAccountInfo user1 = FacebookAccountInfo();
  FacebookAccountInfo user2 = FacebookAccountInfo();
  user1.nickname = 'fdasf'; //public
  user2.nickname = 'fasfd'; //public
  /// read
  user1.name;

  /// write
  user1.changePassword = 'jfkasdjf';
  user1.changePassword = 'jfkasdjf';
  user1.changePassword = 'jfkasdjf';

  user1.active;
}
