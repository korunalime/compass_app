import 'package:flutter/material.dart';

class Dial extends StatelessWidget {
  final child;
  const Dial({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      alignment: Alignment.center,
      margin: const EdgeInsets.all(40),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red[600],
        boxShadow: [
          BoxShadow(
              color: Colors.red.shade800,
              offset: const Offset(4.0, 4.0),
              blurRadius: 15.0,
              spreadRadius: 1.0
          ),
          BoxShadow(
              color: Colors.amber.shade500,
              offset: const Offset(-4.0, -4.0),
              blurRadius: 15.0,
              spreadRadius: 1.0
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.amber.shade500,
            Colors.green.shade600,
            Colors.amber.shade700,
            Colors.green.shade800,
          ],
          stops: const [0.3, 0.3, 0.6, 1],
        ),
      ),
      child: child,
    );
  }
}
