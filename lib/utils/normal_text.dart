import 'package:flutter/material.dart';

class NormalText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
   NormalText({super.key,required this.text,required this.size,required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(fontSize: size,color: color),);
  }
}
