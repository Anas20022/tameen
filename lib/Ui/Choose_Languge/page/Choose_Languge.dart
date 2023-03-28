import 'package:flutter/material.dart';
import 'package:tameen/Ui/Slider_Screen/page/Slider_Screen.dart';

class ChooseLanguge extends StatefulWidget {
  @override
  _ChooseLangugeState createState() => _ChooseLangugeState();
}

class _ChooseLangugeState extends State<ChooseLanguge> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00e4981),

      body: SafeArea(
       child: Container(
         child: Center(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Container(
                   width: MediaQuery.of(context).size.width/1.4,
                   child: Image.asset("assets/images/Inserco22.png",)),
               SizedBox(height: 15,),
               Container(
                 color: Colors.white.withOpacity(.2),
                 height: 1,
                 width: MediaQuery.of(context).size.width/1.2,
               ),
               SizedBox(height: 18,),
               Container(
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     InkWell(
                       onTap: (){
                         Future.delayed(Duration(milliseconds: 50), () {
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) =>  SliderScreen()),
                           );

                         });
                         setState(() {
                           index =0;
                         });
                       },
                       child: Container(
                         width:MediaQuery.of(context).size.width/3.7 ,
                         height: MediaQuery.of(context).size.height/22,
                         alignment: Alignment.center,
                         decoration: BoxDecoration(
                           color: (index == 0)? Colors.blue:Colors.white,
                           borderRadius: BorderRadius.all(Radius.circular(7))
                         ),
                         child: Text("ENGLISH",style: TextStyle(fontWeight: FontWeight.w600,color: (index == 0)? Colors.white:Colors.black,),),

                       ),
                     ),
                     InkWell(
                       onTap: (){
                         Future.delayed(Duration(milliseconds: 50), () {
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) =>  SliderScreen()),
                           );

                         });
                         setState(() {
                           index = 1;
                         });
                       },
                       child: Container(
                         width:MediaQuery.of(context).size.width/3.7 ,
                         height: MediaQuery.of(context).size.height/22,
                         alignment: Alignment.center,
                         decoration: BoxDecoration(
                             color: (index == 1)? Colors.blue:Colors.white,
                             borderRadius: BorderRadius.all(Radius.circular(7))
                         ),
                         child: Text("العربية",style: TextStyle(fontWeight: FontWeight.w600,color: (index == 1)? Colors.white:Colors.black),),

                       ),
                     ),
                     InkWell(
                       onTap: (){
                         Future.delayed(Duration(milliseconds: 50), () {
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) =>  SliderScreen()),
                           );

                         });
                         setState(() {
                           index = 2;
                         });
                       },
                       child: Container(
                         width:MediaQuery.of(context).size.width/3.7 ,
                         height: MediaQuery.of(context).size.height/22,
                         alignment: Alignment.center,
                         decoration: BoxDecoration(
                             color: (index == 2)? Colors.blue:Colors.white,
                             borderRadius: BorderRadius.all(Radius.circular(7))
                         ),
                         child: Text("أردو",style: TextStyle(fontWeight: FontWeight.w600,color: (index == 2)? Colors.white:Colors.black),),

                       ),
                     ),
                   ],
                 ),
               ),
             ],
           ),
         ),
       ),
     ), 
    );
  }
}
