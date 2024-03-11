import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pie_chart/pie_chart.dart';

import '../config/size_config.dart';

class AttendanceHistoryScreen extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<AttendanceHistoryScreen> {
  Map<String, double> dataMap = {
    "출석": 3,
    "지각": 1,
    "결석": 1
  };
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        title: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: SvgPicture.asset(
            'assets/icons/attendance_history_back.svg',
            color: Color(0xFF000000),
            height: SizeConfig.safeBlockVertical * 5,
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
          child: Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          left: SizeConfig.safeBlockHorizontal * 9,
                          top: SizeConfig.safeBlockVertical * 5,
                          bottom: SizeConfig.safeBlockVertical * 6
                      ),
                      child: Text(
                        "출석 종합",
                        style: TextStyle(
                            fontSize: SizeConfig.safeBlockHorizontal * 3.5,
                            color: Color(0xff9a9a9a)
                        ),
                      ),
                    ),
                    Container(
                      child: Center(
                        child: PieChart(
                          dataMap: dataMap,
                          animationDuration: Duration(milliseconds: 1500),
                          colorList: [
                            Color(0xffcae4c1),
                            Color(0xffffe200),
                            Color(0xffea7373)
                          ],
                          chartRadius: MediaQuery.of(context).size.width * 0.5,
                          legendOptions: LegendOptions(
                            legendPosition: LegendPosition.bottom,
                            showLegendsInRow: true,
                          ),
                          chartValuesOptions: ChartValuesOptions(
                            showChartValueBackground: false,
                            showChartValues: false
                          ),
                        ),
                      ),
                    )
                  ]
              )
          )
      ),
    );
  }
}