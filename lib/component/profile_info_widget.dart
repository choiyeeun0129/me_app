import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'basic_text.dart';
import 'common/width_box.dart';

class ProfileInfoWidget extends StatelessWidget {
  final IconData icon;
  final String text;

  const ProfileInfoWidget(this.icon, this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white70,  // 배경 색상 (필요에 따라 변경)
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),  // 그림자 색상
            spreadRadius: 0.5,                       // 퍼지는 범위
            blurRadius: 6,                         // 흐림 정도
            offset: const Offset(0, 4),            // 그림자의 방향
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, size: 24, color: AppColors.black),
          const WidthBox(12),
          Expanded(child: BasicText(text, 20, 29, FontWeight.w400)),
        ],
      ),
    );
  }
}
