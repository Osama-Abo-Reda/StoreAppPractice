import '../helper/api.dart';
import '../model/product_model.dart';

class UpdateProductService {
  Future<ProductModel> updataProduct(
      {required int id,
      required String title,
      required String price,
      required String desc,
      required String image,
      required String catogery}) async {
    print('product id = $id');
    Map<String, dynamic> data =
        await Api().put(url: 'https://fakestoreapi.com/products/$id', body: {
      'title': title,
      'price': price,
      'description': desc,
      'image': image,
      'category': catogery,
    });
    return ProductModel.formJson(data);
  }
}
