import 'package:flutter/material.dart';
import '../../../component/basic/basic_button.dart';
import '../../../component/basic/basic_text_field.dart';
import '../../../component/basic_container.dart';
import '../../../component/basic_text.dart';
import '../../../component/common/height_box.dart';
import '../../../component/common/navigation.dart';
import '../../../component/common/width_box.dart';
import '../../../constants/colors.dart';
import '../../../routes/app_routes.dart';

class ProfileEditPage extends StatelessWidget {
  const ProfileEditPage({super.key});

  void _onClickComplete(BuildContext context) {
    Navigator.pushNamed(
      context,
      routeProfileMyPage,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            const Navigation(title: "내 프로필 수정"),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 160,
                        height: 160,
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: ClipOval(
                                child: Container(
                                  color: Colors.grey[300],
                                  alignment: Alignment.center,
                                  child: const Icon(Icons.person, size: 80, color: Colors.white),
                                ),
                              ),
                            ),
                            Positioned(
                              right: 0,
                              bottom: 0,
                              child: Container(
                                width: 40,
                                height: 40,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: const Color(0xffEE8924),
                                  borderRadius: BorderRadius.circular(360),
                                ),
                                child: const Icon(Icons.edit, size: 24, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
                          const BasicText("홍길동", 20, 29, FontWeight.w700),
                          const HeightBox(8),
                          editWidget(Icons.phone_android, "휴대전화"),
                          editWidget(Icons.call, "전화번호"),
                          editWidget(Icons.email, "이메일"),
                          editWidget(Icons.business, "회사명"),
                          editWidget(Icons.work, "직책"),
                          editWidget(Icons.description_rounded, "직급"),
                          editWidget(Icons.location_pin, "장소"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
                      child: BasicButton("완료", () => _onClickComplete(context)),
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

  Widget editWidget(IconData icon, String hint) {
    return Column(
      children: [
        const HeightBox(8),
        Row(
          children: [
            Icon(icon, size: 24, color: AppColors.black),
            const WidthBox(18),
            Expanded(
              child: BasicContainer(
                height: 45,
                child: BasicTextField(
                  hint,
                  TextEditingController(),
                  fontSize: 16,
                  height: 20,
                  hintColor: const Color(0xff606060),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
