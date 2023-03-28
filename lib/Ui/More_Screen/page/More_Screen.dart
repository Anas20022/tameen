import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tameen/Ui/Graid_Screen/page/Graid_Screen.dart';
import 'package:tameen/Ui/Page1_Screen/page/Page1_Screen.dart';


class MoreScreen extends StatefulWidget {
  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00e4981),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width/1,
              height: MediaQuery.of(context).size.height/13,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20) )
              ),
              child: Image.asset("assets/images/Inserco 1.png"),
            ),//AppBa
            SizedBox(height: 30,),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 17),
              child: Text('More',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(right: 20,left:20 ,top: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                      color: Colors.white
                    ),
                    child: Row(
                      children: [
                        Text("FAQ'S"),
                        Spacer(),
                       Icon(Icons.arrow_forward_ios_outlined)
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(right: 20,left: 20),
                    child: Row(
                      children: [
                        Text("contact Us"),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios_outlined)
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,

                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(right: 20,left: 20),
                    child: Row(
                      children: [
                        Text("Terms & tracking"),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios_outlined)
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(right: 20,left: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
                        color: Colors.white
                    ),
                    child: Row(
                      children: [
                        Text("Languge"),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios_outlined)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Page1Screen()),
                );
              },
              child: Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(right: 20,left: 20,top: 20),

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.blue.withAlpha(150)
                ),
                child: Row(
                  children: [
                    Icon(Icons.power_settings_new,color: Colors.white,size: 15,),
                    SizedBox(width: 10,),
                    Text("LOGIN",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  GraidScreen()),
                );
              },
              child: Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(right: 20,left: 20,top: 10),

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.blue.withAlpha(150)
                ),
                child: Row(
                  children: [
                    Icon(Icons.wifi_tethering,color: Colors.white,size: 17,),
                    SizedBox(width: 10,),
                    Text("Order tracing",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(right: 20,left: 20,top: 10),

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.blue.withAlpha(150)
              ),
              child: Row(
                children: [
                  Icon(Icons.menu,color: Colors.white,size: 15,),
                  SizedBox(width: 10,),
                  Text("Company",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
