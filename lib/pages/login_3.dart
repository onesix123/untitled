import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ROGCIA 901 Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(30.0, 80.0, 30.0, 0.0),  //왼쪽, 상단, 오른쪽, 하단 순서padding: EdgeInsets.symmetric(horizontal: 30.0),  //양 옆 패딩값 조절,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(
                'assets/icons/logo.svg', // 로고 파일 경로 확인 필요
                width: 49,
                height: 55.37,
              ),
              SizedBox(height: 15.0),
              // Email Text Field
              Container(
                margin: EdgeInsets.only( top: 1),
                alignment: Alignment.center,
                child: InkWell(
                  child: SvgPicture.asset(
                    'assets/icons/rocciafont.svg',
                    height: 30,
                  ),
                ),
              ),
              SizedBox(height: 30.0),

              Text(
                '새 비밀번호                                                            ',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 8.0), // 설명 텍스트와 입력 필드 사이 간격
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: '영문, 숫자, 특수문자를 포함하여 7자이상 입력해주세요.',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),




                ],
              ),
              SizedBox(height: 20.0),
              Text(
                '새 비밀번호 확인                                                            ',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20.0),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: '비밀번호를 다시 한번 입력해주세요.',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),





                ],
              ),
              Container(
                alignment: Alignment.center,
                child: InkWell(
                  child: SvgPicture.asset(
                    'assets/icons/changepassbutton2.svg',
                    height: 60,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  // TODO: Implement forgot password logic
                },
                child: Text(
                  '회원가입|로그인',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
