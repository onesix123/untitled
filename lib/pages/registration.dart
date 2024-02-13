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
          padding: EdgeInsets.fromLTRB(30.0, 80.0, 30.0, 0.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // 기존의 위젯들...
              Text(
                '이메일                                                                   ',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 1, top: 0),
                    child: SizedBox(
                      width: 195,
                      height: 50,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: '이메일을 입력해주세요',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5, top: 0),
                    child: InkWell(
                      child: SvgPicture.asset(
                        'assets/icons/check1.svg',
                        height: 50,
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
                  SizedBox(width: 5),
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
              // 새로운 비밀번호 입력 필드 추가
              SizedBox(height: 50), // 필드 사이 간격 추가
              Text(
                ' 비밀번호                                                                   ',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),

              Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.text, // 비밀번호 입력이므로 TextInputType.text 사용
                      obscureText: true, // 비밀번호 숨김 처리
                      decoration: InputDecoration(
                        labelText: '비밀번호를 입력해주세요.',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // 추가 필드를 여기에 배치할 수 있습니다.
              SizedBox(height: 50),
              Text(
                '비밀번호 확인                                                                   ',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.text, // 비밀번호 입력이므로 TextInputType.text 사용
                      obscureText: true, // 비밀번호 숨김 처리
                      decoration: InputDecoration(
                        labelText: '비밀번호를 다시 한번 입력해주세요.',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Text(
                '이름                                                                   ',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.text, // 비밀번호 입력이므로 TextInputType.text 사용
                      obscureText: true, // 비밀번호 숨김 처리
                      decoration: InputDecoration(
                        labelText: '본인 이름을 입력해주세요.',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.text, // 비밀번호 입력이므로 TextInputType.text 사용
                      obscureText: true, // 비밀번호 숨김 처리
                      decoration: InputDecoration(
                        labelText: '비밀번호를 다시 한번 입력해주세요.',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.text, // 비밀번호 입력이므로 TextInputType.text 사용
                      obscureText: true, // 비밀번호 숨김 처리
                      decoration: InputDecoration(
                        labelText: '비밀번호를 다시 한번 입력해주세요.',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.text, // 비밀번호 입력이므로 TextInputType.text 사용
                      obscureText: true, // 비밀번호 숨김 처리
                      decoration: InputDecoration(
                        labelText: '비밀번호를 다시 한번 입력해주세요.',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.text, // 비밀번호 입력이므로 TextInputType.text 사용
                      obscureText: true, // 비밀번호 숨김 처리
                      decoration: InputDecoration(
                        labelText: '비밀번호를 다시 한번 입력해주세요.',
                        border: OutlineInputBorder(),

                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
