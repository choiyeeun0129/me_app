import 'package:flutter/material.dart';
import '../../../component/basic/basic_button.dart';
import '../../../component/basic_container.dart';
import '../../../component/basic_text.dart';
import '../../../component/common/height_box.dart';
import '../../../component/common/navigation.dart';
import '../../../component/common/width_box.dart';
import '../../../constants/colors.dart';
import '../../../routes/app_routes.dart';

class ProfileMyPage extends StatelessWidget {
  const ProfileMyPage({super.key});
  

  void _onClickEdit(BuildContext context) {
    Navigator.pushNamed(
      context,
      routeProfileEditPage,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            const Navigation(title: "내 프로필"),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      padding: const EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(color: AppColors.black, width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BasicText("홍길동", 20, 29, FontWeight.w700),
                          const HeightBox(4),
                          BasicText("1985년생", 14, 20, FontWeight.w500),
                          const HeightBox(8),
                          Row(
                            children: [
                              Container(
                                height: 30,
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                alignment: Alignment.center,
                                color: AppColors.primary,
                                child: BasicText(
                                  "직책",
                                  20,
                                  28,
                                  FontWeight.w700,
                                  textColor: const Color(0xffEAFAFF),
                                ),
                              ),
                              const WidthBox(12),
                              BasicText(
                                "회사 정보",
                                20,
                                28,
                                FontWeight.w500,
                                textColor: const Color(0xff009EDB),
                              ),
                            ],
                          ),
                          const HeightBox(8),
                          BasicText(
                            "재직 중 ABC 회사 | 팀장 | 개발자",
                            16,
                            23,
                            FontWeight.w400,
                          ),
                          const HeightBox(20),
                          Row(
                            children: [
                              const Icon(Icons.phone_android, size: 20),
                              const WidthBox(8),
                              BasicText("010-1234-5678", 16, 23, FontWeight.w400),
                            ],
                          ),
                          const HeightBox(8),
                          Row(
                            children: [
                              const Icon(Icons.email, size: 20),
                              const WidthBox(8),
                              BasicText("hong@example.com", 16, 23, FontWeight.w400),
                            ],
                          ),
                          const HeightBox(8),
                          Row(
                            children: [
                              const Icon(Icons.location_pin, size: 20),
                              const WidthBox(8),
                              BasicText("서울특별시 강남구", 16, 23, FontWeight.w400),
                            ],
                          ),
                          const HeightBox(20),
                          const BasicText("지도교수", 14, 20, FontWeight.w500),
                          const HeightBox(4),
                          BasicContainer(
                            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                            alignment: Alignment.centerLeft,
                            child: BasicText("김교수", 16, 18, FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
                      child: BasicButton("수정", () => _onClickEdit(context),),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
