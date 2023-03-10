import 'package:store_app/helper/api.dart';
import 'package:store_app/model/product_model.dart';

class AddProduct {
  Future<ProductModel> addProduct(
      {required String title, price, desc, image, catogery}) async {
    Map<String, dynamic> data =
        await Api().post(url: 'https://fakestoreapi.com/products', body: {
      'title': title,
      'price': price,
      'description': desc,
      'image': image,
      'category': catogery,
    });
    return ProductModel.formJson(data);
  }
}
