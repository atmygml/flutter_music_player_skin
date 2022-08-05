// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NewBox extends StatelessWidget {
  final Widget child;
  const NewBox({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          // darker shadow at the bottom right
          BoxShadow(
            color: Colors.grey.shade500,
            blurRadius: 15.0,
            offset: Offset(5.0, 5.0),
          ),

          // lighter shadow at the top left
          BoxShadow(
            color: Colors.white,
            blurRadius: 15.0,
            offset: Offset(-5.0, -5.0),
          ),
        ],
      ),
      child: Center(child: child),
    );
  }
}
