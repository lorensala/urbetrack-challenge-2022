import 'package:flutter/material.dart';

import '../helpers/helpers.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.color,
    required this.child,
    required this.onPressed,
  }) : super(key: key);

  final Color color;
  final Widget child;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: AnimatedContainer(
          padding: kPagePadding,
          decoration: BoxDecoration(
            color: color,
            borderRadius: kBorderRadius,
          ),
          duration: const Duration(milliseconds: 300),
          child: child),
    );
  }
}
