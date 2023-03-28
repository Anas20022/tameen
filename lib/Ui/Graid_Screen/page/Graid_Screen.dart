import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tameen/Ui/More_Screen/page/More_Screen.dart';
import 'package:tameen/Ui/Nave_Par/page/Nav_par.dart';

class GraidScreen extends StatefulWidget {
  @override
  _GraidScreenState createState() => _GraidScreenState();
}

class _GraidScreenState extends State<GraidScreen> {
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
              child: Stack(children: [
                Container(
                    alignment: Alignment.center,
                    child: Image.asset("assets/images/Inserco 1.png")),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                      icon: Icon(Icons.arrow_back,color: Color(0xff00e4981),size: 30,),
                    onPressed: ()=> Navigator.of(context).pop(),
                  )

                  // InkWell(
                  //     onTap: (){
                  //       setState(() {
                  //         ali.NavIndex = ali.NavIndex;
                  //       });
                  //       Navigator.push(
                  //         context,
                  //         MaterialPageRoute(builder: (context) =>  Navpar()),
                  //       );
                  //     },
                  //     child: Icon(Icons.arrow_back,color: Color(0xff00e4981),size: 30,)),
                      ),

              ],)
            ),//appBar
            SizedBox(height: 20,),
            Container(
              child: Text('Insurance Type',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),),
            ),
            SizedBox(height: 15,),
            Container(
              height: MediaQuery.of(context).size.height/1.5,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemCount: 20,
                itemBuilder: (ctx , index){
                  return Container(
                    width: MediaQuery.of(context).size.width/2.2,
                    height: MediaQuery.of(context).size.height/4.5,
                    margin: EdgeInsets.only(right: 7,left: 7,top: 1,bottom: 1),
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width/2.7,
                              height: MediaQuery.of(context).size.height/8,
                              child: Image.asset('assets/images/mulkiya_img.jpg')),
                          Container(
                            child: Text('Insurance Type',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color(0xff00e4981),
                                  fontWeight: FontWeight.bold
                              ),),
                          ),

                        ],
                      ),
                    ),
                  );
                },
              ),
            ),



          ],
        ),
      ),
    );
  }
}


