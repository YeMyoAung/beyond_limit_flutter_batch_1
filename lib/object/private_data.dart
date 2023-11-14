class _PublicAccess {
  String? publicName;
  String? _privateName;
}

class PrivateAccess {
  String? publicName;
  String? _privateName;
  void _a() {}
}

void main() {
  _PublicAccess()._privateName;
}
