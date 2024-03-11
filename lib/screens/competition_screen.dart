import 'package:flutter/material.dart';

import '../config/size_config.dart';

class CompetitionScreen extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<CompetitionScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(
                    left: SizeConfig.safeBlockHorizontal * 7,
                    top: SizeConfig.safeBlockVertical * 3),
                child: Text(
                  '대회',
                  style: TextStyle(
                    fontSize: SizeConfig.safeBlockHorizontal * 5.4,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: SizeConfig.safeBlockVertical * 70,
                alignment: Alignment.center,
                child: Text(
                  "대회 기간에 사용하실 수 있습니다.",
                  style: TextStyle(
                    color: Color(0xff9a9a9a),
                    fontSize: SizeConfig.safeBlockHorizontal * 4
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}