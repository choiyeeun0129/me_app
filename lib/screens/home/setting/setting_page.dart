import 'package:flutter/material.dart';
import '../../../component/basic_text.dart';
import '../../../component/common/height_box.dart';
import '../../../component/common/navigation.dart';
import '../../../component/common/width_box.dart';
import '../../../constants/colors.dart';
import '../../../routes/app_routes.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  // 페이지 이동 함수 유지
  _onClickProfile() {
    Navigator.pushNamed(context, routeProfileMyPage);
  }

  _onClickPrivacy() {
    Navigator.pushNamed(context, routeSettingPrivacyPage);
  }

  _onClickTerm() {
    Navigator.pushNamed(context, routeSettingTermPage);
  }

  @override
  Widget build(BuildContext context) {
    return _body;
  }
}

extension on _SettingPageState {
  Widget get _body {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            const Navigation(title: "설정"),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    settingItem(
                        Icons.manage_accounts_outlined, "프로필 설정", "Change your Account information", _onClickProfile),
                    settingItem(
                        Icons.supervisor_account_outlined, "공개범위 설정", "Privacy Settings", _onClickPrivacy),
                    settingItem(Icons.account_box_outlined, "개인정보처리방침", "Privacy Policy", _onClickTerm),
                    settingItem(Icons.person_outline, "탈퇴신청", "Request for Account Deletion", () {}),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget settingItem(IconData icon, String title, String description, Function onClick) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 28),
      child: GestureDetector(
        onTap: () => onClick.call(),
        child: Container(
          color: Colors.transparent,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(icon, size: 36, color: AppColors.black),
              const WidthBox(16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BasicText(title, 20, 29, FontWeight.w700, textColor: const Color(0xff212121)),
                    const HeightBox(2),
                    BasicText(description, 14, 19, FontWeight.w400, textColor: const Color(0xff737373)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
