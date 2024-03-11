import 'package:flutter/material.dart';
import 'package:untitled/screens/record_screen/my_record_tab.dart';
import 'package:untitled/screens/record_screen/ranking_tab.dart';

import '../../config/size_config.dart';

class RecordScreen extends StatefulWidget {
  const RecordScreen({Key? key}) : super(key: key);

  @override
  State<RecordScreen> createState() => _RecordScreenState();
}

class _RecordScreenState extends State<RecordScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<Widget> _tabs = [
    const Tab(
      child: Text(
          "내 기록",
          style: TextStyle(
              fontSize: 15
          )
      ),
    ),
    const Tab(
      child: Text(
          "랭킹",
          style: TextStyle(fontSize: 15)),
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(
                  left: SizeConfig.safeBlockHorizontal * 6,
                  top: SizeConfig.safeBlockVertical * 1.5
              ),
              height: SizeConfig.safeBlockVertical * 8,
              child: Text(
                '기록',
                style: TextStyle(
                  fontSize: SizeConfig.safeBlockHorizontal * 5.4,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TabBar(
              tabs: _tabs,
              controller: _tabController,
              //physics: NeverScrollableScrollPhysics(),
              indicatorColor: Color(0xffcae4c1),
              indicatorWeight: 3,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
            ),
            Expanded(
              child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _tabController,
                children: [
                  MyRecordTab(),
                  RankingTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
