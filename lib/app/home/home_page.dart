import 'package:flutter/material.dart';
import 'package:matsui/app/home/profile_page.dart';
import 'package:matsui/app/home/statistics_page.dart';
import 'package:matsui/app/home/upload_page.dart';

import 'package:matsui/widgets/my_app_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        appBar: MyAppBar(),
        body: PageView(
          scrollDirection: Axis.vertical,
          onPageChanged: (int page) {},
          physics: BouncingScrollPhysics(),
          controller: controller,
          children: <Widget>[
            ProfilePage(),
            StatisticsPage(),
            UploadPage(),
          ],
        ),
      ),
    );
  }
}
