import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
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
            ),//AppBar
            SizedBox(height: 20,),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 20),
              child: Text('About Insurco',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),),
            ),
            SizedBox(height: 10,),
            Container(
              width: MediaQuery.of(context).size.width/1.11,
              height: MediaQuery.of(context).size.height/4.7,

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Colors.white),


            ),
            SizedBox(height: 50,),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 20),
              child: Text('if you need any assistance, feel free to contact us:',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),),
            ),
            SizedBox(height: 20,),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width/3.3,
                          height: MediaQuery.of(context).size.height/8.5,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Icon(Icons.call,  color: Color(0xff00e4981),
                                ),
                              ),
                              SizedBox(height: 20,),
                              Container(
                                child: Text('Contact Us',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold
                                  ),),
                              ),



                            ],
                          ),
                        ),


                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width/3.3,
                          height: MediaQuery.of(context).size.height/8.5,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Icon(Icons.request_page_outlined
                                  ,  color: Color(0xff00e4981),
                                ),
                              ),
                              SizedBox(height: 20,),
                              Container(
                                child: Text("FAQ'S",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold
                                  ),),
                              ),



                            ],
                          ),
                        ),


                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width/3.3,
                          height: MediaQuery.of(context).size.height/8.5,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Icon(Icons.comment,  color: Color(0xff00e4981),
                                ),
                              ),
                              SizedBox(height: 20,),
                              Container(
                                child: Text('Contact Us',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold
                                  ),),
                              ),



                            ],
                          ),
                        ),


                      ],
                    ),
                  ),
                ],
              )
            ),
            SizedBox(height: 35,),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 20),
              child: Text('Follow Us',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),),
            ),
            Container(
              padding: EdgeInsets.all(22),
              child: Row(

                children: [
                  Container(
                    child: SvgPicture.asset('assets/images/fb_logo_s.svg'),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    child: SvgPicture.asset('assets/images/insta_logo_s.svg'),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    child: SvgPicture.asset('assets/images/inter_logo_s.svg'),
                  )

                ],
              ),
            )









          ],
        ),
      ),
    );
  }
}
