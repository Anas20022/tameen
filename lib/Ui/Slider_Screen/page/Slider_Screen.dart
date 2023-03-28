import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tameen/Ui/Choose_Languge/page/Choose_Languge.dart';
import 'package:tameen/Ui/Nave_Par/page/Nav_par.dart';



class SliderScreen extends StatefulWidget {
  @override
  _SliderScreenState createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  int dot = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00e4981),
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Container(
                child: PageView.builder(

                  itemCount: 3,
                  onPageChanged: (int index ){
                    setState(() {
                      dot = index;
                    });
                  },
                  itemBuilder: (ctx , index){
                    return Container(
                      child:Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: MediaQuery.of(context).size.height/10,),
                          Container(
                              child: SvgPicture.asset(
                                (index == 0)
                                    ?'assets/images/walkthrough_img1.svg'
                                    :(index == 1)
                                    ?'assets/images/walkthrough_img2.svg'
                                    :'assets/images/walkthrough_img3.svg',
                            )

                          ),
                          SizedBox(height: MediaQuery.of(context).size.height/10,),
                          Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.only(left: MediaQuery.of(context).size.height/20) ,
                            child: Text(
                            (index == 0)
                                ?  'Motor Insurance'
                                : (index == 1)
                                ? 'Motor Insurance1'
                                : 'Motor Insurance2',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white.withOpacity(.8),
                              // fontWeight: FontWeight.bold
                            ),
                          ),
                          ),
                          SizedBox(height: 8,),
                          Container(
                            alignment: Alignment.topLeft,

                            padding: EdgeInsets.only(left: MediaQuery.of(context).size.height/20,right:MediaQuery.of(context).size.height/30) ,
                            child: Text(
                              (index == 0)
                                  ? 'Dont gamble with your health, your health is important to us'
                                  : (index == 1)
                                  ? 'Dont gamble with your health, your health is important to us1'
                                  : 'Dont gamble with your health, your health is important to us2',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white.withOpacity(.7),
                                // fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          SizedBox(height: 8,),
                          Container(
                            alignment: Alignment.topLeft,

                            padding: EdgeInsets.only(left: MediaQuery.of(context).size.height/20,right:MediaQuery.of(context).size.height/30) ,
                            child: Text(
                              (index == 0)
                                  ? ' If you are looking for health insurance for you and your family then you are in the right place.'
                                  : (index == 1)
                                  ? ' If you are looking for health insurance for you and your family then you are in the right place.1'
                                  : ' If you are looking for health insurance for you and your family then you are in the right place.2',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white.withOpacity(.7),
                                // fontWeight: FontWeight.bold
                              ),
                            ),
                          ),

                        ],
                      ) ,
                    );

                  },
                ),
              ),


              Container(

                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height/7),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: (dot == 0)?15:(dot == 1)?10:10,
                      width: (dot == 0)?15:(dot == 1)?10:10,
                      decoration: BoxDecoration(
                        color: (dot == 0)?Colors.white:(dot == 1)?Colors.white54:Colors.white54,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        border: Border.all(color: Colors.white,)
                      ),
                    ),
                    SizedBox(width: 7,),
                    Container(
                      height: (dot == 0)?10:(dot == 1)?15:10,
                      width: (dot == 0)?10:(dot == 1)?15:10,
                      decoration: BoxDecoration(
                          color: (dot == 0)?Colors.white54:(dot == 1)?Colors.white:Colors.white54,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          border: Border.all(color: Colors.white,)
                      ),
                    ),
                    SizedBox(width: 7,),
                    Container(
                      height: (dot == 0)?10:(dot == 1)?10:15,
                      width: (dot == 0)?10:(dot == 1)?10:15,
                      decoration: BoxDecoration(
                          color: (dot == 0)?Colors.white54:(dot == 1)?Colors.white54:Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          border: Border.all(color: Colors.white,)
                      ),
                    ),
                  ],
                ) ,
              ),

              Positioned(
                bottom: MediaQuery.of(context).size.height/15,
                right: MediaQuery.of(context).size.height/15 ,
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  Navpar()),
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height/30,
                    width: MediaQuery.of(context).size.width/6,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(3))
                    ),
                    child: Text('skip',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),

            ],
          ),
        )
      ),
    );
  }
}
