import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tameen/Ui/Choose_Languge/page/Choose_Languge.dart';

class SplachScreen extends StatefulWidget {
  @override
  _SplachScreenState createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  void delay() {
    Future.delayed(Duration(milliseconds: 3000), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>  ChooseLanguge()),
      );

    });
  }
  @override
  void initState() {
    delay();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00e4981),
      body: SafeArea(
          child: Container(
            child: Center(child: SvgPicture.asset('assets/images/app_circle_logo.svg')),
          ),

      ),
    );


  }
}
