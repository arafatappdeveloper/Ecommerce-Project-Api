import 'dart:convert';

import 'package:ecommerce_project/utils/api_url.dart';
import 'package:http/http.dart' as http;
class ApiServices{
//products
  Future<List> ProductApi()async{
    final response =await http.get(Uri.parse(ApiUrl().productsapi));
    if(response.statusCode==200){
      // print(response.body);
      return json.decode(response.body);

    }else{
      throw Exception('Sommething is error from producs load');
    }
  }
  //single products
  Future<Map<String,double>> SingleProductsApi(String id)async{
    final url="https://api.escuelajs.co/api/v1/products/$id";
    final response =await http.get(Uri.parse(url));
    if(response.statusCode==200){
      print(response.body);
      return json.decode(response.body);

    }else{
      throw Exception('Sommething is error from producs load');
    }
  }

}