import 'package:flutter/material.dart';

class BasicContainer extends StatelessWidget {
  final Color? backgroundColor;
  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final Alignment? alignment;
  final Widget child;

  const BasicContainer({super.key,
    this.backgroundColor = const Color(0xffF7F8FA),
    this.width,
    this.height,
    this.padding,
    this.alignment,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      alignment: alignment,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(27),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.1),
              offset: const Offset(0, 4),
              spreadRadius: 0.5,
              blurRadius: 6,
          ),
        ],
      ),
      child: child,
    );
  }
}