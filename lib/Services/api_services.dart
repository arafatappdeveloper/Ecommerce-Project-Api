import 'dart:convert';

import 'package:ecommerce_project/utils/api_url.dart';
import 'package:http/http.dart' as http;
class ApiServices{

  Future<List> ProductApi()async{
    final response =await http.get(Uri.parse(ApiUrl().productsapi));
    if(response.statusCode==200){
      // print(response.body);
      return json.decode(response.body);

    }else{
      throw Exception('Sommething is error from producs load');
    }
  }

}