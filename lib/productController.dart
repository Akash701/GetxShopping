import 'package:get/get.dart';
import 'package:getx_shoppapp/product.dart';
import 'package:getx_shoppapp/service.dart';
import 'package:http/http.dart' as http;

class ProductController extends GetxController {
  var productList = List<Welcome>().obs;
  @override
  void onInit() {
    FetchProduct();
    super.onInit();
  }

  void FetchProduct() async {
    var product = await RemoteService.fetchProduct();
    if (product != null) {
      productList.value = product;
    }
  }
}
