// double compute(double a, double b) {
//   ///
// }

// bool checkParenthesis(String value) {
//   ///
// }

// void timer(
//   int seconds,
// ) {
//   ///
// }

// bool checkNested(Map data) {
//   ///
// }

// int getIndex(String value, String pattern) {
//   ///
// }

import 'dart:math';

/// data structure      rules
/// algorithm           theory

int getIndex(String originalString, String pattern,
    [bool caseSensitive = true]) {
  /// original string length 5
  int valueCount = originalString.length;

  /// pattern string length 6
  int patternCount = pattern.length;
  if (patternCount > valueCount) {
    return -1;
  }

  /// original string length 6
  /// pattern string length  3
  for (int i = 0; i < valueCount; i++) {
    ///object  = 6
    ///i (0,1,2,3,4,5)
    ///pattern je = 2
    ///start i - o
    ///end   i + 2
    int count = i + patternCount;
    if (!(count < valueCount)) break;

    final String substring = originalString.substring(i, count);

    if (caseSensitive) {
      if (substring == pattern) {
        return i;
      }
    } else {
      if (substring.toLowerCase() == pattern.toLowerCase()) {
        return i;
      }
    }
  }
  return -1;
}

bool checkNestedData(Map data) {
  for (var element in data.values) {
    if (element.runtimeType != String &&
        element.runtimeType != int &&
        element.runtimeType != double &&
        element.runtimeType != bool) return true;
  }
  return false;
}

void main() {
  final String originalString = '{}';

  /// (())
  /// )  false
  /// (  +1      1
  /// )  +1      0

  // final a = 'object'.indexOf('ec');
  // final b = getIndex('object', 'EC', false);
  // print(a);
  // print(b);

  // final map = {
  //   'name': "a",
  //   'a': '1',
  // };

  // print(checkNestedData(map));

  // map.forEach((key, value) {});
  // map.map((key, value) {});
  // for (var element,var a in map) {

  // }
  // for (var i = 0; i < map.length; i++) {
  //   map[i];
  // }

  // print(compute(2, 2));
  print(checkParenthesis(originalString, '{', '}'));

  // timer(20);
}

Future<void> timer(int number) async {
  if (number >= 0) {
    print(number);
    await Future.delayed(Duration(seconds: 1));
    number--;
    await timer(number);
  }
}

bool checkParenthesis(String originalString,
    [String startSign = '(', String endSign = ')']) {
  final int startP = originalString.indexOf(startSign);

  ///5
  final int endP = originalString.indexOf(endSign);

  ///4 )(
  if (startP > endP) {
    return false;
  }
  int start = 0; //
  int end = 0; // 1
  for (var i = startP; i < originalString.length; i++) {
    if (start < end) {
      return false;
    }
    if (originalString[i] == startSign) {
      start += 1;
    }
    if (originalString[i] == endSign) {
      end += 1;
    }
  }

  return start == end;
}

double compute(double a, double b) {
  return sqrt(pow(a, 2) + pow(b, 2));
}


// api dart 
// api nodejs  //expres javascript ///typescript
// api python  //django            ///          
// api php     //laravel                        
// api java spring boot                          