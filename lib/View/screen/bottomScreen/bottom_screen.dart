import 'package:ecommerce_project/const/color.dart';
import 'package:flutter/material.dart';

import 'favorite_screen.dart';
import 'home_screen.dart';
import 'myorder_screen.dart';
import 'myprofile_screen.dart';

class BottomScreen extends StatefulWidget {
  const BottomScreen({super.key});

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  List _pagelist=[
    HomeScreen(),
    MyOrderScreen(),
    FavoriteScreen(),
    MyProfileScreen(),
  ];
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _pagelist.elementAt(selectedIndex),),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value){
          setState(() {
            selectedIndex=value;
          });
        },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home,color: selectedIndex==0 ? AppColors().primariColor:Colors.grey,), label: 'Home', backgroundColor: AppColors().whiteColor),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined,color: selectedIndex==1 ? AppColors().primariColor:Colors.grey,), label: 'My order', backgroundColor: AppColors().whiteColor),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_border,color: selectedIndex==2 ? AppColors().primariColor:Colors.grey,), label: 'Favorite', backgroundColor:AppColors().whiteColor),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline,color: selectedIndex==3 ? AppColors().primariColor:Colors.grey,), label: 'My Profile', backgroundColor: AppColors().whiteColor),
          ]
      ),
    );
  }
}
