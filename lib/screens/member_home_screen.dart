import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:untitled/screens/attendance_request_screen.dart';
import 'package:untitled/screens/attendance_history_screen.dart';

import '../config/size_config.dart';

class MemberHomeScreen extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MemberHomeScreen> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusDay) {
    setState(() {
      today = day;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.only(
                left: SizeConfig.safeBlockHorizontal * 6.667,
                right: SizeConfig.safeBlockHorizontal * 6.667,
                top: SizeConfig.safeBlockVertical * 3
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: SizeConfig.safeBlockVertical * 4),
                  child: Text(
                    '홈',
                    style: TextStyle(
                      fontSize: SizeConfig.safeBlockHorizontal * 5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  child: SvgPicture.asset(
                    'assets/banners/howto.svg',
                    width: SizeConfig.safeBlockHorizontal * 100,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: SizeConfig.safeBlockVertical * 4,
                      bottom: SizeConfig.safeBlockVertical * 2
                  ),
                  child: Text(
                    '출석',
                    style: TextStyle(
                        fontSize: SizeConfig.safeBlockHorizontal * 3.3,
                        color: Color(0xff9a9a9a)),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: SizeConfig.safeBlockHorizontal * 3),
                      child: InkWell(
                        child: SvgPicture.asset(
                          'assets/icons/atd.svg',
                          width: SizeConfig.safeBlockHorizontal * 41,
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AttendanceRequestScreen()
                              )
                          );
                          },
                      ),
                    ),
                    Container(
                      child: InkWell(
                        child: SvgPicture.asset(
                          'assets/icons/atd_history.svg',
                          width: SizeConfig.safeBlockHorizontal * 41,
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AttendanceHistoryScreen()));
                          },
                      ),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: SizeConfig.safeBlockVertical * 4),
                  child: Text(
                    '출석 현황',
                    style: TextStyle(
                        fontSize: SizeConfig.safeBlockHorizontal * 3.3,
                        color: Color(0xff9a9a9a)),
                  ),
                ),
                SafeArea(
                  child: TableCalendar(
                    focusedDay: today,
                    shouldFillViewport: true,
                    selectedDayPredicate: (day) => isSameDay(day, today),
                    firstDay: DateTime(2015),
                    lastDay: DateTime(2050),
                    locale: 'ko-KR',
                    onDaySelected: _onDaySelected,
                    headerStyle: HeaderStyle(
                      formatButtonVisible: false,
                      titleCentered: true,
                    ),
                    calendarStyle: CalendarStyle(
                      todayDecoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border(
                              bottom:
                              BorderSide(width: 3, color: Color(0xff7b7b7b)
                              )
                          )
                      ),
                      todayTextStyle:
                      TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      selectedDecoration: BoxDecoration(
                          color: Color(0xffcae4c1), shape: BoxShape.circle),
                      selectedTextStyle: TextStyle(color: Colors.white),
                      outsideDaysVisible: false,
                    ),
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
