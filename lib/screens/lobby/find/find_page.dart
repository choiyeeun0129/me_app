import 'package:flutter/material.dart';
import '../../../component/basic_container.dart';
import '../../../component/basic_text.dart';
import '../../../component/common/height_box.dart';
import '../../../component/common/navigation.dart';
import '../../../constants/colors.dart';
import '../../../routes/app_routes.dart';

class FindPage extends StatefulWidget {
  const FindPage({super.key});

  @override
  _FindPageState createState() => _FindPageState();
}

class _FindPageState extends State<FindPage> with TickerProviderStateMixin {

  _onClickFindId(){
    Navigator.of(context).pushNamed(routeFindIdPage);
  }

  _onClickFindPw(){
    Navigator.of(context).pushNamed(routeFindPwPage);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _body;
  }
}

extension on _FindPageState {
  Widget get _body {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            const Navigation(title: "아이디/비밀번호 찾기"),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  children: [
                    const HeightBox(44),
                    GestureDetector(
                      onTap: _onClickFindId,
                      child: const BasicContainer(
                        height: 56,
                        width: double.infinity,
                        alignment: Alignment.center,
                        backgroundColor: Color(0xffF7F8FA),
                        child: BasicText("아이디 찾기", 16, 20, FontWeight.w500, textColor: Colors.black),
                      ),
                    ),
                    const HeightBox(22),
                    GestureDetector(
                      onTap: _onClickFindPw,
                      child: const BasicContainer(
                        height: 56,
                        width: double.infinity,
                        alignment: Alignment.center,
                        backgroundColor: Color(0xffF7F8FA),
                        child: BasicText("비밀번호 찾기", 16, 20, FontWeight.w500, textColor: Colors.black),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}