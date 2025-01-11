import 'package:ecommerce_project/Services/api_services.dart';
import 'package:ecommerce_project/View/single_products_view.dart';
import 'package:ecommerce_project/utils/model_text.dart';
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
               return InkWell(
                 onTap: (){
                   Navigator.push(context, 
                       MaterialPageRoute(builder: (context)=>SingleProductsView(product: productslist)));
                 },
                 child: Card(
                   child: Stack(
                     textDirection: TextDirection.ltr,
                     fit: StackFit.loose,
                     alignment: AlignmentDirectional.bottomCenter,
                     children: [
                       Image.network(productslist['category']['image'],width: double.infinity,fit: BoxFit.cover,),
                       Text(productslist['title'],style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                       Positioned(
                         top: 10,left:140,right: 10,
                           child: Icon(Icons.favorite_border,size: 25,color: Colors.white,))
                     ],
                   ),
                 ),
               );
            },
        ),
      ),
    );
  }
}
