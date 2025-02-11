import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FindIdPage extends StatefulWidget {
  const FindIdPage({super.key});

  @override
  _FindIdPageState createState() => _FindIdPageState();
}

class _FindIdPageState extends State<FindIdPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("이름", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
                  const SizedBox(height: 4),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: "이름을 입력하세요",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text("휴대폰번호", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
                  const SizedBox(height: 4),
                  const TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "번호를 입력하세요",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 44),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("인증번호 전송"),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("인증번호", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
                  SizedBox(height: 4),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "인증번호 입력",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 44),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("확인"),
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("인증번호 재전송"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("회원님의 아이디입니다.", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
                  SizedBox(height: 4),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        "your_id_here",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 22),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("로그인"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}