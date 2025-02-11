import 'package:flutter/material.dart';
import '../../../component/basic/basic_text_field.dart';
import '../../../component/basic_container.dart';
import '../../../component/basic_text.dart';
import '../../../component/common/asset_widget.dart';
import '../../../component/common/height_box.dart';
import '../../../component/common/width_box.dart';
import '../../../constants/assets.dart';
import '../../../constants/colors.dart';
import '../../routes/app_routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController idController = TextEditingController();
  final TextEditingController pwController = TextEditingController();
  bool enableAutoLogin = false;

  _onClickFind(){
    Navigator.of(context).pushNamed(routeFindPage);
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: AppColors.basicColor,
                    borderRadius: BorderRadius.circular(27),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xff251F30).withOpacity(0.05),
                        offset: const Offset(0, 13),
                        blurRadius: 55,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      const HeightBox(46),
                      AssetWidget(
                        Assets.ill_welcome,
                        width: screenWidth - 32,
                        fit: BoxFit.cover,
                      ),
                      const HeightBox(32),
                      BasicContainer(
                        backgroundColor: const Color(0xffE3E3E3),
                        height: 56,
                        child: BasicTextField(
                          "이메일",
                          idController,
                          fontSize: 16,
                          height: 20,
                          hintColor: const Color(0xff606060),
                        ),
                      ),
                      const HeightBox(15),
                      BasicContainer(
                        backgroundColor: const Color(0xffE3E3E3),
                        height: 56,
                        child: BasicTextField(
                          "비밀번호",
                          pwController,
                          fontSize: 16,
                          height: 20,
                          hintColor: const Color(0xff606060),
                          isObscure: true,
                        ),
                      ),
                      const HeightBox(32),
                      GestureDetector(
                        onTap: () {},
                        child: const BasicContainer(
                          width: double.infinity,
                          height: 56,
                          alignment: Alignment.center,
                          backgroundColor: Color(0xff141718),
                          child: BasicText(
                            "로그인",
                            16,
                            20,
                            FontWeight.w500,
                            textColor: AppColors.white,
                          ),
                        ),
                      ),
                      const HeightBox(23),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                enableAutoLogin = !enableAutoLogin;
                              });
                            },
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  enableAutoLogin ? Icons.circle : Icons.circle_outlined,
                                  color: const Color(0xffD1D1D6),
                                  size: 24,
                                ),
                                const WidthBox(8),
                                const BasicText("자동로그인", 13, 19, FontWeight.w400),
                              ],
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: _onClickFind,
                            child: const BasicText(
                              "아이디/비밀번호 찾기",
                              14,
                              20,
                              FontWeight.w400,
                              textColor: Color(0xff323142),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(child: Container(color: const Color(0xffAFB0B6), height: 0.5)),
                    const WidthBox(14),
                    const BasicText(
                      "Or continue with",
                      13,
                      19,
                      FontWeight.w900,
                      textColor: Color(0xffAFB0B6),
                    ),
                    const WidthBox(14),
                    Expanded(child: Container(color: const Color(0xffAFB0B6), height: 0.5)),
                  ],
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {},
                  child: const AssetWidget(
                    Assets.kakao_icon,
                    width: 350,
                    height: 100,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}