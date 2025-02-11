import 'package:flutter/material.dart';
import '../../../component/basic_container.dart';
import '../../../component/basic_text.dart';
import '../../../component/common/height_box.dart';
import '../../../component/common/navigation.dart';
import '../../../component/common/width_box.dart';
import '../../../constants/colors.dart';

class SettingPrivacyPage extends StatelessWidget {
  const SettingPrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            const Navigation(title: "공개범위 설정"),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const BasicText(
                      "상대방의 정보조회시, 자신이 공개한 항목만 조회할 수 있습니다.",
                      12,
                      17,
                      FontWeight.w400,
                    ),
                    const HeightBox(23),
                    groupItem("Mobile", true),
                    const HeightBox(18),
                    groupItem("Office Phone", false),
                    const HeightBox(18),
                    groupItem("Email", true),
                    const HeightBox(18),
                    groupItem("직장정보", false),
                    const HeightBox(18),
                    groupItem("출생년도", true),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget groupItem(String text, bool value) {
    return BasicContainer(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: BasicText(text, 16, 23, FontWeight.w400),
          ),
          const WidthBox(16),
          Switch(
            value: value,
            onChanged: (bool newValue) {},
            inactiveThumbColor: Colors.white,
            inactiveTrackColor: const Color(0x29787880),
          ),
        ],
      ),
    );
  }
}
