import 'package:flutter/material.dart';
import '../basic_container.dart';
import '../basic_text.dart';

class BasicButton extends StatelessWidget {
  final String text;
  final Function onClick;
  final double? width;
  final double? height;

  const BasicButton(this.text, this.onClick, {super.key,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onClick.call(),
      child: BasicContainer(height: height ?? 56, width: width, alignment: Alignment.center, backgroundColor: const Color(0xff141718), child: BasicText(text, 16, 20, FontWeight.w500, textColor: Colors.white)),
    );
  }
}