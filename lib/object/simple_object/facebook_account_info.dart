class FacebookAccountInfo {
  ///Read Only Access
  String? _name; //can't change
  String? nickname; //change
  ///Write only access
  String? _password;
  String? _accessToken;

  //Getter Read Only Access

  //D get Name {} | =>
  String get name => _name ?? "NA";

  String? get password => _password;

  //Setter Write only access
  // set name(D value) {}|=>
  set changePassword(String value) {
    _password = value;
  }

  ///authorized
  bool get active {
    return _isAuthorized(_accessToken ?? '');
  }

  bool _isAuthorized(String accessToken) {
    ///accessToken server
    return true;
  }
}
