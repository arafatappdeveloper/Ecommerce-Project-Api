import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: EdgeInsets.only(left: 9.w, right: 12.w, top: 20.h,bottom: 20.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.person_outline),
                    SizedBox(width: 5.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Name'),
                        Text('Let’s go shopping'),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(width: 7.w),
                    Icon(Icons.notifications_none_sharp),
                  ],
                ),

              ],
            ),
          ),

          bottom: TabBar(
            tabs: [
              Tab(text: 'Home'),
              Tab(text: 'Category'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('Home Tab Content')),
            Center(child: Text('Category Tab Content')),
          ],
        ),
      ),
    );
  }
}
