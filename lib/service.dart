import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:getx_shoppapp/product.dart';

class RemoteService {
  static var client = http.Client();
  static Future<List<Welcome>> fetchProduct() async {
    var responce = await client
        .get('https://makeup-api.herokuapp.com/api/v1/products.json.com');
    if (responce.statusCode == 200) {
      var jasonString = responce.body;
      return welcomeFromJson(jasonString);
    } else {
      return null;
    }
  }
}
