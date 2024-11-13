import 'package:flutter/material.dart';

class VerticalMargin extends StatelessWidget {
  const VerticalMargin({super.key, required this.margin, required this.child});
  final double margin;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: child,
    );
  }
}
