import 'package:ecommerce_project/Services/api_services.dart';
import 'package:flutter/material.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  ApiServices _apiServices=ApiServices();
  List?products;

  Future<void> fetchProducts()async{
    final data= await _apiServices.ProductApi();
    try{
      setState(() {
        products=data;
      });
    }catch(e){
      print('The problem is ; $e');
    }
  }
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchProducts();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Producs Screen'),
      ),
      body:products==null?Center(child: CircularProgressIndicator(),) :Container(
        child: GridView.builder(
          scrollDirection: Axis.vertical,
             itemCount: products!.length,
             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount: 2),
            itemBuilder: (context,index){
               final productslist= products![index];
               return Card(
                 child: Column(
                   children: [
                     Expanded(child: Image.network(productslist['category']['image'],height: 50,width: double.infinity,fit: BoxFit.cover,),),
                     Expanded(child: Text(productslist['title']))
                   ],
                 ),
               );
            },
        ),
      ),
    );
  }
}
