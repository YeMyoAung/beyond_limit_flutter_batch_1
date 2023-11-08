dynamic firstWhere(bool test(dynamic element), {dynamic orElse()?}) {
  for (dynamic element in []) {
    if (test(element)) return element;
  }
  if (orElse != null) return orElse();
  throw "IterableElementError.noElement()";
}

///
///datatype Function(args) `name`
dynamic firstWherePro(bool Function(dynamic element) test, {
  dynamic Function()? orElse,
}) {}

int lastIndexWhere(bool test(dynamic element), [int? start]) {
  return 1;
}

///datatype Function(args) `name`
int lastIndexWherePro(bool Function(dynamic element) test, [int? start]) {
  return 1;
}

Iterable where(bool test(dynamic element)) => [];

///datatype Function(args) `name`
///dnv
///d => String
///d => datatype Function(args)
Iterable wherePro(bool Function(dynamic element) test,) =>
    [];

void pro(bool Function(String a, int b, [bool? c]) test,
    bool Function({
    required String a,
    required int b,
    required double c,
    required bool e,
    }) pass,) {
  test("", 1, null);
  pass(a: '', b: 1, c: 1, e: false);
}

bool test(String a, int b, [bool? c]) {
  return true;
}

bool pass({
  required String a,
  required int b,
  required double c,
  required bool e,
}) {
  return true;
}

void main() {
  pro(test, pass);
  pro((String a, int b, [bool? c]) => true, ({
    required String a,
    required int b,
    required double c,
    required bool e,
  }) {
    return true;
  });

  ///short hand | callback | anonymous
  // () => * /// single line,return
  // () {} /// block
  faq(question);

  /// datatype Function(args)
  final int Function(dynamic value) a = (dynamic value) {
    return 1;
  };

  a('h');

  final int Function() b = () => 1;

  b();

  final c = 'a';
}

String answerIs(dynamic value) {
  return "Answer: $value.";
}

String question(String value) {
  return "Question: $value";
}

///callback
/// datatype Function(args) `name`
// void firstWhere(
//   String Function(
//     String value,
//   ) name,
// ) {
//   name(
//     '',
//   );
// }

void hit(void a()) {}

void faq(String question(String value)) {
  print(question("jkafsdjk"));
  print(answerIs("My name is AYe"));
}
