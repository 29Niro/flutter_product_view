import 'dart:convert';

import 'package:flutter_product_view/models/product_model.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  Future<List<ProductModel>?> getProductList() async {
    try {
      final response = await http.get(
        Uri.parse('https://dummyjson.com/products'),
      );

      final result = json.decode(response.body);

      if (response.statusCode == 200) {
        List<ProductModel> list = [];

        var items = (result["products"]);

        if (items != null) {
          for (var item in items) {
            list.add(ProductModel.fromParsedJson(item));
          }
        }
        return list;
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }
}
