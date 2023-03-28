import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';



class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {




  @override


  @override
  Widget build(BuildContext context) {
          return Scaffold(
            backgroundColor: Color(0xff00e4981),
            body:
                     SafeArea(
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
                          child: Image.asset("assets/images/Inserco 1.png"),
                        ),//AppBa
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width/2.5,
                                height: MediaQuery.of(context).size.height/4.7,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5))
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child:    SvgPicture.asset (
                                        'assets/images/car_ins_btn.svg',
                                      ),
                                    ),
                                    SizedBox(height: 20,),
                                    Container(
                                      child: Text('Motor Insurco',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xff00e4981),
                                            fontWeight: FontWeight.bold
                                        ),),
                                    ),



                                  ],
                                ),
                              ),
                              SizedBox(width: 25,),
                              Container(
                                width: MediaQuery.of(context).size.width/2.5,
                                height: MediaQuery.of(context).size.height/4.7,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5))
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child:    SvgPicture.asset (
                                        'assets/images/health_ins_btn.svg',
                                      ),
                                    ),
                                    SizedBox(height: 20,),
                                    Container(
                                      child: Text('Health Insurco',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xff00e4981),
                                            fontWeight: FontWeight.bold
                                        ),),
                                    ),



                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 25,),
                        Container(

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width/2.5,
                                height: MediaQuery.of(context).size.height/4.7,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5))
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child:    SvgPicture.asset (
                                        'assets/images/life_ins_btn.svg',
                                      ),
                                    ),
                                    SizedBox(height: 20,),
                                    Container(
                                      child: Text('Live Insurco',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xff00e4981),
                                            fontWeight: FontWeight.bold
                                        ),),
                                    ),



                                  ],
                                ),
                              ),
                              SizedBox(width: 25,),
                              Container(
                                width: MediaQuery.of(context).size.width/2.5,
                                height: MediaQuery.of(context).size.height/4.7,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5))
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child:    SvgPicture.asset (
                                        'assets/images/travel_ins_btn.svg',
                                      ),
                                    ),
                                    SizedBox(height: 20,),
                                    Container(
                                      child: Text('Travel Insurco',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xff00e4981),
                                            fontWeight: FontWeight.bold
                                        ),),
                                    ),



                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        // الاصلي
                        // Container(
                        //     padding: EdgeInsets.all(15),
                        //     height: 700,
                        //     child: GridView.builder(
                        //         shrinkWrap: true,
                        //         itemCount: state.Data!.result!.length,
                        //         gridDelegate:
                        //         SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                        //         itemBuilder: (context, index) {
                        //           return  Container(
                        //             width: (MediaQuery.of(context).size.width / 2.4),
                        //             height: (MediaQuery.of(context).size.width / 2.4),
                        //             child: Card(
                        //               child: Column(
                        //                 mainAxisAlignment: MainAxisAlignment.center,
                        //                 children: [
                        //                   Container(
                        //                       height: 100,
                        //                       child: Image.network(state.Data!.result![index].image.toString())),
                        //                   // SvgPicture.asset (
                        //                   //   'assets/images/car_ins_btn.svg',
                        //                   //
                        //                   //   height: 80,
                        //                   //   width: 80,
                        //                   // ),
                        //                   SizedBox(height: 15,),
                        //                   Container(
                        //                     child: Text(state.Data!.result![index].name.toString()),
                        //                   )
                        //
                        //
                        //                 ],
                        //               ),
                        //             ),
                        //           );
                        //
                        //
                        //           // return _tile(data[index].name, data[index].name, Icons.work);
                        //         })
                        //
                        // ),//باستخدام الجرايد

                        SizedBox(height: 25,),
                        Container(
                          width: MediaQuery.of(context).size.width/1.15,

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              color: Colors.white),
                          child: ImageSlideshow(

                            /// Width of the [ImageSlideshow].

                            /// Height of the [ImageSlideshow].

                            /// The page to show when first creating the [ImageSlideshow].
                            initialPage: 0,

                            /// The color to paint the indicator.
                            indicatorColor: Colors.blue.withOpacity(0),

                            /// The color to paint behind th indicator.
                            indicatorBackgroundColor: Colors.grey.withOpacity(0),

                            /// The widgets to display in the [ImageSlideshow].
                            /// Add the sample image file into the images folder
                            children: [
                              Image.asset(
                                'assets/images/done.png',

                              ),
                              Image.asset(
                                'assets/images/done.png',
                              ),
                              Image.asset(
                                'assets/images/done.png',
                              ),
                            ],

                            /// Called whenever the page in the center of the viewport changes.
                            onPageChanged: (value) {
                              print('Page changed: $value');
                            },

                            /// Auto scroll interval.
                            /// Do not auto scroll with null or 0.
                            autoPlayInterval: 3000,
                          ),

                        ),

                      ],
                    ),

                  ),
                )


          );


  }


}


