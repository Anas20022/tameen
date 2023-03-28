
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tameen/Ui/Nave_Par/page/Nav_par.dart';
import 'package:tameen/Ui/Page2_Screen/page/Page2_Screen.dart';

class Page1Screen extends StatefulWidget {
  @override
  _Page1ScreenState createState() => _Page1ScreenState();
}

class _Page1ScreenState extends State<Page1Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00e4981),
      body: SafeArea(
        child: SingleChildScrollView(
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
              ),  //appBar
              SizedBox(height: 30,),
              Stack(
               alignment: Alignment.centerLeft,
               children: [
                 Container(
                   padding: EdgeInsets.only(left: 20),
                   child: Text('Inquiry From',
                     style: TextStyle(
                         fontSize: 14,
                         color: Colors.white,
                         fontWeight: FontWeight.bold
                     ),),
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Container(
                       child: Text('(1)',
                         style: TextStyle(
                             fontSize: 25,
                             color: Colors.white,
                             fontWeight: FontWeight.bold
                         ),),
                     ),
                     Container(
                       alignment: Alignment.center,
                       child: Text('(2)',
                         style: TextStyle(
                             fontSize: 20,
                             color: Colors.white,
                             fontWeight: FontWeight.bold
                         ),),
                     ),

                   ],
                 ),

               ],
             ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(15),
                height: MediaQuery.of(context).size.height/2,
                width: MediaQuery.of(context).size.width/1.1,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10,right: 10),
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(.3),
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: TextField(
                          textInputAction: TextInputAction.done,
                          style: TextStyle(
                            color: Color(0xff00e4981),
                            fontWeight: FontWeight.bold
                          ),
                          decoration: InputDecoration(
                            hintText: ('Full Name'),
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,

                            ),
                            border: InputBorder.none
                          ),
                          keyboardType: TextInputType.name,
                        )
                    ),
                    SizedBox(height: 10,),
                    Container(
                        padding: EdgeInsets.only(left: 10,right: 10),
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(.3),
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: TextField(
                          textInputAction: TextInputAction.done,
                          style: TextStyle(
                              color: Color(0xff00e4981),
                              fontWeight: FontWeight.bold
                          ),
                          decoration: InputDecoration(
                              hintText: ('phone Number'),
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,

                              ),
                              border: InputBorder.none
                          ),
                          keyboardType: TextInputType.phone,
                        )
                    ),
                    SizedBox(height: 10,),
                    Container(
                        padding: EdgeInsets.only(left: 10,right: 10),
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(.3),
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: TextField(
                          textInputAction: TextInputAction.done,
                          style: TextStyle(
                              color: Color(0xff00e4981),
                              fontWeight: FontWeight.bold
                          ),
                          decoration: InputDecoration(
                              hintText: ('Email'),
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,

                              ),
                              border: InputBorder.none
                          ),
                          keyboardType: TextInputType.emailAddress
                          ,
                        )
                    ),
                    SizedBox(height: 10,),
                    Container(
          padding: EdgeInsets.only(left: 5),
          alignment: Alignment.centerLeft,
          child: Text('Choose the type of insurance',style: TextStyle(
            color: Color(0xff00e4981),
            fontWeight: FontWeight.bold,
          ),
          ),
        ),
                    SizedBox(height: 20,),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width/3,
                            height: MediaQuery.of(context).size.height/18,
                            decoration: BoxDecoration(
                              border: Border.all(color:Color(0xff00e4981),width: 2 ),
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            padding: EdgeInsets.only(left: 10,right: 10),
                            child: Text('comprehensive',
                              style: TextStyle(
                                color: Color(0xff00e4981),
                                fontWeight: FontWeight.bold,
                              ),),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width/3,
                            height: MediaQuery.of(context).size.height/18,
                            decoration: BoxDecoration(
                              border: Border.all(color:Color(0xff00e4981),width: 2 ),
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            padding: EdgeInsets.only(left: 10,right: 10),
                            child: Text('Thrid party',
                              style: TextStyle(
                                color: Color(0xff00e4981),
                                fontWeight: FontWeight.bold,
                              ),),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30,),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Page2Screen()),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(15),
                  width: MediaQuery.of(context).size.width/1.1,
                  height: MediaQuery.of(context).size.height/16,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Text('Next',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),),
                ),
              ),
              SizedBox(height: 10,),
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(15),
                  width: MediaQuery.of(context).size.width/1.1,
                  height: MediaQuery.of(context).size.height/16,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Text('Back',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),),
                ),
              ),


            ],
          ),
        ),
      ),

    );
  }
}
