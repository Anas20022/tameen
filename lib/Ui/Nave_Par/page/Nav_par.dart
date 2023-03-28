import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:tameen/Ui/Choose_Languge/page/Choose_Languge.dart';
import 'package:tameen/Ui/Home_Screen/page/Home_Screen.dart';
import 'package:tameen/Ui/More_Screen/page/More_Screen.dart';
import 'package:tameen/Ui/Slider_Screen/page/Slider_Screen.dart';
import 'package:tameen/Ui/Splach_Screen/pages/Splach_Screen.dart';
import 'package:tameen/Ui/about_Screen/page/about_Screen.dart';
class Navpar extends StatefulWidget {
  @override
  ali createState() => ali();
}
class ali extends State<Navpar> {
  static int NavIndex = 1;
  final List<Widget> navScreens = [AboutScreen(),HomeScreen(),MoreScreen()];

  void onTabed(int index){
        setState(() {
      NavIndex = index;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navScreens[NavIndex],
        bottomNavigationBar: ConvexAppBar(

          backgroundColor: Colors.white,
          color: Color(0xff00e4981),
          activeColor:Color(0xff00e4981),
          items: [
            TabItem(icon: Icons.app_blocking_outlined, title: 'About'),
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.settings, title: 'More'),
          ],
          height: MediaQuery.of(context).size.height/17,
          initialActiveIndex: NavIndex,//optional, default as 0
          onTap: (int i) => onTabed(i),
        )
    );
  }
}



