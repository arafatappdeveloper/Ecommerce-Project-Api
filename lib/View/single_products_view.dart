import 'package:ecommerce_project/utils/model_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SingleProductsView extends StatefulWidget {
  Map<String,dynamic> product;
   SingleProductsView({super.key,required this.product});

  @override
  State<SingleProductsView> createState() => _SingleProductsViewState();
}

class _SingleProductsViewState extends State<SingleProductsView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.product['category']['name'].toString()),
        actions: [
          Icon(Icons.favorite_border),
          SizedBox(width: 10.w,),
          Icon(Icons.add_shopping_cart),
         SizedBox(width: 15.w,)
        ],
      ),
       body: Padding(
         padding:  EdgeInsets.only(left: 10.w,top: 25.h,right: 10.w),
         child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
            Image.network(widget.product['category']['image'].toString(),cacheHeight: 300,cacheWidth: 400,),
            SizedBox(
              height: 10.h,
            ),
             Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: ModelText(text: widget.product['title'].toString(), size: 20.sp)),
                ModelText(text: '\$${widget.product['price'].toString()}', size: 20.sp),
              ],
            ),
             SizedBox(
               height: 5.h,
             ),
             ModelText(text: widget.product['description'].toString(), size: 14.sp),
             ModelText(text: 'See more Products', size: 20.sp),
             Container(
               child: Expanded(
                 child: ListView.builder(
                   scrollDirection: Axis.horizontal,
                   itemCount: widget.product['images'].length,
                     itemBuilder: (context,index){
                     final images=widget.product['images'][index];
                       return Padding(
                         padding:  EdgeInsets.all(1),
                         child: Image.network(images.toString(),width: 130,),
                       );
                     }),
               ),
             ),
             // Row(
             //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
             //   children: [
             //     Image.network(widget.product['images'][0].toString(),cacheHeight: 100,),
             //     Image.network(widget.product['images'][1].toString(),cacheHeight: 100,),
             //     Image.network(widget.product['images'][2].toString(),cacheHeight: 100,),
             //   ],
             // ),

           ],
         ),
       ),
    );
  }
}
