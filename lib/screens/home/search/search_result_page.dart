import 'package:flutter/material.dart';
import '../../../component/basic/basic_text_field.dart';
import '../../../component/basic_container.dart';
import '../../../component/basic_text.dart';
import '../../../component/common/navigation.dart';
import '../../../component/common/width_box.dart';
import '../../../constants/colors.dart';

class SearchResultPage extends StatelessWidget {
  final TextEditingController keywordController = TextEditingController();

  SearchResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            const Navigation(title: "검색 결과"),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
              child: Row(
                children: [
                  const SizedBox(
                    width: 56,
                    child: BasicText(
                      "검색어 : ",
                      14,
                      18,
                      FontWeight.w400,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const WidthBox(24),
                  Expanded(
                    child: BasicContainer(
                      height: 45,
                      child: BasicTextField(
                        "이름, 직장 검색",
                        keywordController,
                        fontSize: 16,
                        height: 20,
                        hintColor: const Color(0xff606060),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(), // 빈 공간 추가 (화면 균형 맞춤)
            const Center(
              child: BasicText(
                "검색 결과가 없습니다.",
                16,
                20,
                FontWeight.w400,
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
