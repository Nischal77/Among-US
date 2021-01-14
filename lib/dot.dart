import 'package:flutter/material.dart';

class dot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Colors.white),
        height: 8,
        width: 8);
  }
}
