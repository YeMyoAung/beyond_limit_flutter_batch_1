void main() {
  // print(exchangeV2(200, 'mmk', 'usd'));
  // final Duration wokerAPerformance =
  //     performanceTest(() => exchangeV2(10, 'mmk', 'usd'));
  final Duration wokerBPerformance =
      performanceTest(() => exchange(10, 'mmk', 'usd'));
  // print("worker A - $wokerAPerformance");
  print("worker B - $wokerBPerformance");
}

void worker(int count) {
  for (int a = 0; a < count; a++) {
    worker(count ~/ 10);
  }
}

const Map<String, double> currencyRate = {
  'USD_EUR': 1000,
  'USD_GBP': 2000,
  'USD_SLL': 3000,
  'USD_CNY': 4000,
  'USD_CZK': 5000,
  'USD_MMK': 6000,
  'EUR_USD': 1000,
  'EUR_GBP': 2000,
  'EUR_SLL': 3000,
  'EUR_CNY': 4000,
  'EUR_CZK': 5000,
  'EUR_MMK': 6000,
  'GBP_USD': 1000,
  'GBP_EUR': 2000,
  'GBP_SLL': 3000,
  'GBP_CNY': 4000,
  'GBP_CZK': 5000,
  'GBP_MMK': 6000,
  'SSL_USD': 1000,
  'SSL_GBP': 2000,
  'SSL_EUR': 3000,
  'SSL_CNY': 4000,
  'SSL_CZK': 5000,
  'SSL_MMK': 6000,
  'CNY_USD': 1000,
  'CNY_GBP': 2000,
  'CNY_SLL': 3000,
  'CNY_EUR': 4000,
  'CNY_CZK': 5000,
  'CNY_MMK': 6000,
  'MMK_USD': 1000,
  'MMK_GBP': 2000,
  'MMK_SLL': 3000,
  'MMK_CNY': 4000,
  'MMK_CZK': 5000,
  'MMK_EUR': 6000,
};

// currency change function
// @parameter double from
// @parameter String from,String to
// @return double
double exchangeV2(double amount, String fromC, String toC) {
  final String format = '${fromC.toUpperCase()}_${toC.toUpperCase()}';
  final double? rate = currencyRate[format];
  if (rate == null) return -1;
  return amount * rate;
}

double exchange(double amount, String fromC, String toC) {
  fromC = fromC.toUpperCase();
  toC = toC.toUpperCase();

  /// Validate
  /// Format DATA_DAT2
  /// from * to
  final List<String> availableCurrency = [
    'USD',
    'EUR',
    'CNY',
    'CZK',
    'MMK',
  ];
  int count = 0;

  /// For in loop
  for (String a in availableCurrency) {
    if (count == 2) {
      break; // loop;
    }
    if (a == fromC) {
      count++;
      continue; // loop,
    }
    if (a == toC) {
      count++;
      continue;
    }
  }
  print(count);
  if (count != 2) return -1;

  final String format = '${fromC}_${toC}';
  final double rate = currencyRate[format]!;
  return amount * rate;
}

/// @parameter Function()
/// @return double
Duration performanceTest(Function callback) {
  /// set time
  /// run function
  /// calculate time
  final DateTime now = DateTime.now();
  callback();
  return now.difference(DateTime.now());
}
