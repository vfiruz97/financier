import 'package:flutter/material.dart';

class WhiteCardWidget extends StatelessWidget {
  const WhiteCardWidget({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 1)]),
        child: child);
  }
}
