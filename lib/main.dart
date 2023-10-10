import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  // createState가 상태 변경시마다 실행됨.
  @override
  State<MyPage> createState() {
    print("1. createState()");
    return _MyPageState();
  }
}

class _MyPageState extends State<MyPage> {
  @override
  Widget initState() {
    print("2. _MyPageState()");
    return const Placeholder();
  }

  @override
  Widget build(BuildContext context) {
    print("2. _MyPageState build()");
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: Text(
                  "1",
                  style: TextStyle(fontSize: 50),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "증가",
                    style: TextStyle(
                      fontSize: 50,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
