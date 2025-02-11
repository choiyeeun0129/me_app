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

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController keywordController = TextEditingController();

  void _onClickSearch() {
      Navigator.pushNamed(
        context,
        routeSearchResultPage,
      );
    }

  void _onClearKeyword() {
    keywordController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return _body;
  }
}

extension on _SearchPageState {
  Widget get _body {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            const Navigation(title: "검색"),
            const HeightBox(24),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 56,
                          child: BasicText("검색어", 14, 18, FontWeight.w400,
                              textAlign: TextAlign.center),
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
                              hintColor: const Color(0xff818080),
                            ),
                          ),
                        ),
                        const WidthBox(8),
                        GestureDetector(
                          onTap: _onClearKeyword,
                          child: const Icon(Icons.clear, size: 24, color: AppColors.black),
                        )
                      ],
                    ),
                    const HeightBox(32),
                    BasicButton("검색", _onClickSearch),
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
