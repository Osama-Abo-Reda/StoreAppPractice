import 'package:store_app/helper/api.dart';
import 'package:store_app/model/product_model.dart';

class CategoriesServices {
  Future<List<ProductModel>> getCateogriesProducts(
      {required String categoryName}) async {
    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$categoryName');
    List<ProductModel> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(
        ProductModel.formJson(data[i]),
      );
    }
    return productsList;
  }
}
