import 'dart:convert';

import 'package:http/http.dart' as http;

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const String apiKey = '9D1A1B8E-6420-4763-A949-854C58B69B0D';

String apiEndpoint = 'https://rest.coinapi.io/v1/exchangerate';

class CoinData {
  Future getCoinData() async {
    String requestURL = '$apiEndpoint/BTC/USD?apikey=$apiKey';
    http.Response response = await http.get(Uri.parse(requestURL));

    if (response.statusCode == 200) {
      var decodedData = jsonDecode(response.body);

      var lastPrice = decodedData['rate'];
      return lastPrice;
    } else {
      print(response.statusCode);

      throw 'Problem with the get request';
    }
  }
}
