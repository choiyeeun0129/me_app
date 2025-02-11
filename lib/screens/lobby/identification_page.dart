import 'package:flutter/material.dart';

import '../../component/basic/basic_text_field.dart';
import '../../component/basic_container.dart';
import '../../component/basic_text.dart';
import '../../component/common/height_box.dart';
import '../../component/common/width_box.dart';
import '../../constants/colors.dart';
import '../../routes/app_routes.dart';

class IdentificationPage extends StatefulWidget {
  const IdentificationPage({super.key});

  @override
  _IdentificationPageState createState() => _IdentificationPageState();
}

class _IdentificationPageState extends State<IdentificationPage> {
  final TextEditingController _phoneController = TextEditingController();

  void _onClickIdentify() {
    // 버튼 클릭 시 동작 (임시)
    // ScaffoldMessenger.of(context).showSnackBar(
    //   SnackBar(content: Text("입력한 번호: ${_phoneController.text}")),
    // );
    Navigator.pushReplacementNamed(context, routeHomePage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            const HeightBox(22),
            const BasicText("본인인증", 23, 33, FontWeight.w700),
            const HeightBox(25),
            const BasicText("본인인증을 위해 휴대전화 번호를 입력하세요", 14, 20, FontWeight.w400),
            const HeightBox(25),
            Row(
              children: [
                const WidthBox(18),
                Expanded(
                  child: BasicContainer(
                    height: 56,
                    child: BasicTextField(
                      "전화번호를 입력하세요",
                      _phoneController,
                      onChanged: (text) {
                        // 숫자만 입력받도록 필터링
                        String filteredText = text.replaceAll(RegExp(r'[^0-9]'), '');

                        if (filteredText.length > 11) {
                          filteredText = filteredText.substring(0, 11);
                        }
                        _phoneController.text = filteredText;
                        _phoneController.selection = TextSelection.fromPosition(
                          TextPosition(offset: filteredText.length),
                        );
                      },
                    ),
                  ),
                ),
                const WidthBox(10),
                GestureDetector(
                  onTap: _onClickIdentify,
                  child: const BasicContainer(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                    backgroundColor: AppColors.black,
                    child: BasicText("인증요청", 14, 17, FontWeight.w500, textColor: Colors.white),
                  ),
                ),
                const WidthBox(18),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
