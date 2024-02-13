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
                '이메일                                                            ',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              Row(
                children: <Widget>[

                  Container(
                    padding: EdgeInsets.only(left: 1, top: 0), // 외부 여백을 위한 패딩

                    child: SizedBox(
                      width: 195, // Figma에서 지정한 너비
                      height: 50, // Figma에서 지정한 높이
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: '이메일을 입력해주세요',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6), // 모서리의 둥글기 지정
                          ),
                          // TextField 내부의 상하좌우 여백을 조절, 필요에 따라 조정 가능
                          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                        ),
                      ),
                    ),
                  ),
                  //SizedBox(width:5),
                  Container(
                    padding: EdgeInsets.only(left: 5, top: 0), // 외부 여백을 위한 패딩
                    child: InkWell(
                      child: SvgPicture.asset(
                        'assets/icons/check1.svg',
                        height:50
                        ,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  Expanded(

                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: ' 1:00',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                      ),
                    ),
                  ),

                  SizedBox(width:5),
                  Container(
                    alignment: Alignment.center,
                    child: InkWell(
                      child: SvgPicture.asset(
                        'assets/icons/check2.svg',
                        height: 50,
                      ),
                    ),
                  ),




                ],
              ),
              Container(
                alignment: Alignment.center,
                child: InkWell(
                  child: SvgPicture.asset(
                    'assets/icons/changepassbutton.svg',
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
