import 'dart:html';

class ExchangeRate {
  TimeElement time;
  String baseCurrency;
  String comparedCurrency;
  double rate;

  ExchangeRate(this.time, this.baseCurrency, this.comparedCurrency, this.rate);
}
