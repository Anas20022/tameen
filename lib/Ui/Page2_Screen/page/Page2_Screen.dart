
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tameen/Ui/Nave_Par/page/Nav_par.dart';

class Page2Screen extends StatefulWidget {
  @override
  _Page2ScreenState createState() => _Page2ScreenState();
}

class _Page2ScreenState extends State<Page2Screen> {
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
                             fontSize: 20,
                             color: Colors.white,
                             fontWeight: FontWeight.bold
                         ),),
                     ),
                     Container(
                       alignment: Alignment.center,
                       child: Text('(2)',
                         style: TextStyle(
                             fontSize: 25,
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
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                          height: MediaQuery.of(context).size.height/15,
                          width: MediaQuery.of(context).size.width/1,
                          padding: EdgeInsets.only(left: 15,right: 15),
                          margin: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(.3),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child:Row(
                            children: [
                              Text("Upload OwnerShip (front)",style: TextStyle(color: Color(0xff00e4981),fontWeight: FontWeight.bold),),
                              Spacer(),
                              Container(
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.all(Radius.circular(5),
                                      )
                                  ),

                                  child: Icon(Icons.add,color: Colors.white,))
                            ],
                          )
                      ),
                      Container(
                          height: MediaQuery.of(context).size.height/15,
                          width: MediaQuery.of(context).size.width/1,
                          padding: EdgeInsets.only(left: 15,right: 15),
                          margin: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(.3),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child:Row(
                            children: [
                              Text("Upload OwnerShip (front)",style: TextStyle(color: Color(0xff00e4981),fontWeight: FontWeight.bold),),
                              Spacer(),
                              Container(
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.all(Radius.circular(5),
                                      )
                                  ),

                                  child: InkWell(
                                      onTap: ()async{
                                        showModalBottomSheet(
                                            context: context,
                                            builder: (BuildContext bc) {
                                              return SafeArea(
                                                child: Container(
                                                  color: Color(0xff0e4981),
                                                  child:  Wrap(
                                                    children: <Widget>[
                                                      ListTile(
                                                          leading:  Icon(
                                                            Icons.photo,
                                                            color: Colors.white,
                                                          ),
                                                          title:  Text(
                                                            'Photo Library',
                                                            style: TextStyle(
                                                                color: Colors.white
                                                            ),
                                                          ),
                                                          onTap: () async{
                                                            final ImagePicker picker = ImagePicker();
                                                            // final XFile image = await picker.pickImage(source: ImageSource.gallery);
                                                            Navigator.of(context).pop();
                                                          }),
                                                      ListTile(
                                                        leading: new Icon(
                                                          Icons.photo_camera,
                                                          color: Colors.white,
                                                        ),
                                                        title:  Text(
                                                          'Camera',
                                                          style: TextStyle(color: Colors.white),
                                                        ),
                                                        onTap: () async{
                                                          // _openCamera();
                                                          final ImagePicker _picker = ImagePicker();
                                                          // final XFile image = await _picker.pickImage(source: ImageSource.camera);                                    //_imgFromCamera();
                                                          Navigator.of(context).pop();
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            });


                                      },
                                      child: Icon(Icons.add,color: Colors.white,)))
                            ],
                          )
                      ),
                      Container(
                          height: MediaQuery.of(context).size.height/15,
                          width: MediaQuery.of(context).size.width/1,
                          padding: EdgeInsets.only(left: 15,right: 15),
                          margin: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(.3),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child:Row(
                            children: [
                              Text("Upload OwnerShip (front)",style: TextStyle(color: Color(0xff00e4981),fontWeight: FontWeight.bold),),
                              Spacer(),
                              Container(
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.all(Radius.circular(5),
                                      )
                                  ),

                                  child: Icon(Icons.add,color: Colors.white,))
                            ],
                          )
                      ),
                      Container(
                          height: MediaQuery.of(context).size.height/15,
                          width: MediaQuery.of(context).size.width/1,
                          padding: EdgeInsets.only(left: 15,right: 15),
                          margin: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(.3),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child:Row(
                            children: [
                              Text("Upload OwnerShip (front)",style: TextStyle(color: Color(0xff00e4981),fontWeight: FontWeight.bold),),
                              Spacer(),
                              Container(
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.all(Radius.circular(5),
                                      )
                                  ),

                                  child: Icon(Icons.add,color: Colors.white,))
                            ],
                          )
                      ),
                      Container(
                          height: MediaQuery.of(context).size.height/15,
                          width: MediaQuery.of(context).size.width/1,
                          padding: EdgeInsets.only(left: 15,right: 15),
                          margin: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(.3),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child:Row(
                            children: [
                              Text("Upload OwnerShip (front)",style: TextStyle(color: Color(0xff00e4981),fontWeight: FontWeight.bold),),
                              Spacer(),
                              Container(
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.all(Radius.circular(5),
                                      )
                                  ),

                                  child: Icon(Icons.add,color: Colors.white,))
                            ],
                          )
                      ),
                      Container(
                          height: MediaQuery.of(context).size.height/15,
                          width: MediaQuery.of(context).size.width/1,
                          padding: EdgeInsets.only(left: 15,right: 15),
                          margin: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(.3),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child:Row(
                            children: [
                              Text("Upload OwnerShip (front)",style: TextStyle(color: Color(0xff00e4981),fontWeight: FontWeight.bold),),
                              Spacer(),
                              Container(
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.all(Radius.circular(5),
                                      )
                                  ),

                                  child: Icon(Icons.add,color: Colors.white,))
                            ],
                          )
                      ),
                      Container(
                          height: MediaQuery.of(context).size.height/15,
                          width: MediaQuery.of(context).size.width/1,
                          padding: EdgeInsets.only(left: 15,right: 15),
                          margin: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(.3),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child:Row(
                            children: [
                              Text("Upload OwnerShip (front)",style: TextStyle(color: Color(0xff00e4981),fontWeight: FontWeight.bold),),
                              Spacer(),
                              Container(
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.all(Radius.circular(5),
                                      )
                                  ),

                                  child: Icon(Icons.add,color: Colors.white,))
                            ],
                          )
                      ),
                      Container(
                          height: MediaQuery.of(context).size.height/15,
                          width: MediaQuery.of(context).size.width/1,
                          padding: EdgeInsets.only(left: 15,right: 15),
                          margin: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(.3),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child:Row(
                            children: [
                              Text("Upload OwnerShip (front)",style: TextStyle(color: Color(0xff00e4981),fontWeight: FontWeight.bold),),
                              Spacer(),
                              Container(
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.all(Radius.circular(5),
                                      )
                                  ),

                                  child: Icon(Icons.add,color: Colors.white,))
                            ],
                          )
                      ),
                      Container(
                          height: MediaQuery.of(context).size.height/15,
                          width: MediaQuery.of(context).size.width/1,
                          padding: EdgeInsets.only(left: 15,right: 15),
                          margin: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(.3),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child:Row(
                            children: [
                              Text("Upload OwnerShip (front)",style: TextStyle(color: Color(0xff00e4981),fontWeight: FontWeight.bold),),
                              Spacer(),
                              Container(
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.all(Radius.circular(5),
                                      )
                                  ),

                                  child: Icon(Icons.add,color: Colors.white,))
                            ],
                          )
                      ),
                      Container(
                          height: MediaQuery.of(context).size.height/15,
                          width: MediaQuery.of(context).size.width/1,
                          padding: EdgeInsets.only(left: 15,right: 15),
                          margin: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(.3),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child:Row(
                            children: [
                              Text("Upload OwnerShip (front)",style: TextStyle(color: Color(0xff00e4981),fontWeight: FontWeight.bold),),
                              Spacer(),
                              Container(
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.all(Radius.circular(5),
                                      )
                                  ),

                                  child: Icon(Icons.add,color: Colors.white,))
                            ],
                          )
                      ),
                      Container(
                          height: MediaQuery.of(context).size.height/15,
                          width: MediaQuery.of(context).size.width/1,
                          padding: EdgeInsets.only(left: 15,right: 15),
                          margin: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(.3),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child:Row(
                            children: [
                              Text("Upload OwnerShip (front)",style: TextStyle(color: Color(0xff00e4981),fontWeight: FontWeight.bold),),
                              Spacer(),
                              Container(
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.all(Radius.circular(5),
                                      )
                                  ),

                                  child: Icon(Icons.add,color: Colors.white,))
                            ],
                          )
                      ),
                      Container(
                          height: MediaQuery.of(context).size.height/15,
                          width: MediaQuery.of(context).size.width/1,
                          padding: EdgeInsets.only(left: 15,right: 15),
                          margin: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(.3),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child:Row(
                            children: [
                              Text("Upload OwnerShip (front)",style: TextStyle(color: Color(0xff00e4981),fontWeight: FontWeight.bold),),
                              Spacer(),
                              Container(
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.all(Radius.circular(5),
                                      )
                                  ),

                                  child: Icon(Icons.add,color: Colors.white,))
                            ],
                          )
                      ),
                    ],
                  ),
                ),


              ),
              SizedBox(height: 30,),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(15),
                width: MediaQuery.of(context).size.width/1.1,
                height: MediaQuery.of(context).size.height/16,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Text('Submit',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),),
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

    );
  }
}

// Container(
//     padding: EdgeInsets.all(15),
//     height: MediaQuery.of(context).size.height/2,
//     width: MediaQuery.of(context).size.width/1.1,
//     decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.all(Radius.circular(10))
//     ),
//     child: GridView.builder(
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
//       itemCount: 5,
//       itemBuilder: (ctx ,index){
//         return Container(
//           padding: EdgeInsets.only(bottom: 10),
//           child: Column(
//             children: [
//               Container(
//                   height: MediaQuery.of(context).size.height/15,
//                   width: MediaQuery.of(context).size.width/1,
//                   padding: EdgeInsets.only(left: 15,right: 15),
//                   decoration: BoxDecoration(
//                       color: Colors.grey.withOpacity(.3),
//                       borderRadius: BorderRadius.all(Radius.circular(10))
//                   ),
//                   child:Row(
//                     children: [
//                       Text("Upload OwnerShip (front)",style: TextStyle(color: Color(0xff00e4981),fontWeight: FontWeight.bold),),
//                       Spacer(),
//                       Container(
//                           decoration: BoxDecoration(
//                               color: Colors.green,
//                               borderRadius: BorderRadius.all(Radius.circular(5),
//                               )
//                           ),
//
//                           child: Icon(Icons.add,color: Colors.white,))
//                     ],
//                   )
//               ),
//               Spacer(),
//               Container(
//                   height: MediaQuery.of(context).size.height/15,
//                   width: MediaQuery.of(context).size.width/1,
//                   padding: EdgeInsets.only(left: 15,right: 15),
//                   decoration: BoxDecoration(
//                       color: Colors.grey.withOpacity(.3),
//                       borderRadius: BorderRadius.all(Radius.circular(10))
//                   ),
//                   child:Row(
//                     children: [
//                       Text("Upload OwnerShip (front)",style: TextStyle(color: Color(0xff00e4981),fontWeight: FontWeight.bold),),
//                       Spacer(),
//                       Container(
//                           decoration: BoxDecoration(
//                               color: Colors.green,
//                               borderRadius: BorderRadius.all(Radius.circular(5),
//                               )
//                           ),
//
//                           child: Icon(Icons.add,color: Colors.white,))
//                     ],
//                   )
//               ),
//               Spacer(),
//               Container(
//                   height: MediaQuery.of(context).size.height/15,
//                   width: MediaQuery.of(context).size.width/1,
//                   padding: EdgeInsets.only(left: 15,right: 15),
//                   decoration: BoxDecoration(
//                       color: Colors.grey.withOpacity(.3),
//                       borderRadius: BorderRadius.all(Radius.circular(10))
//                   ),
//                   child:Row(
//                     children: [
//                       Text("Upload OwnerShip (front)",style: TextStyle(color: Color(0xff00e4981),fontWeight: FontWeight.bold),),
//                       Spacer(),
//                       Container(
//                           decoration: BoxDecoration(
//                               color: Colors.green,
//                               borderRadius: BorderRadius.all(Radius.circular(5),
//                               )
//                           ),
//
//                           child: Icon(Icons.add,color: Colors.white,))
//                     ],
//                   )
//               ),
//               Spacer(),
//               Container(
//                   height: MediaQuery.of(context).size.height/15,
//                   width: MediaQuery.of(context).size.width/1,
//                   padding: EdgeInsets.only(left: 15,right: 15),
//                   decoration: BoxDecoration(
//                       color: Colors.grey.withOpacity(.3),
//                       borderRadius: BorderRadius.all(Radius.circular(10))
//                   ),
//                   child:Row(
//                     children: [
//                       Text("Upload OwnerShip (front)",style: TextStyle(color: Color(0xff00e4981),fontWeight: FontWeight.bold),),
//                       Spacer(),
//                       Container(
//                           decoration: BoxDecoration(
//                               color: Colors.green,
//                               borderRadius: BorderRadius.all(Radius.circular(5),
//                               )
//                           ),
//
//                           child: Icon(Icons.add,color: Colors.white,))
//                     ],
//                   )
//               ),
//               Spacer(),
//               Container(
//                   height: MediaQuery.of(context).size.height/15,
//                   width: MediaQuery.of(context).size.width/1,
//                   padding: EdgeInsets.only(left: 15,right: 15),
//                   decoration: BoxDecoration(
//                       color: Colors.grey.withOpacity(.3),
//                       borderRadius: BorderRadius.all(Radius.circular(10))
//                   ),
//                   child:Row(
//                     children: [
//                       Text("Upload OwnerShip (front)",style: TextStyle(color: Color(0xff00e4981),fontWeight: FontWeight.bold),),
//                       Spacer(),
//                       Container(
//                           decoration: BoxDecoration(
//                               color: Colors.green,
//                               borderRadius: BorderRadius.all(Radius.circular(5),
//                               )
//                           ),
//
//                           child: Icon(Icons.add,color: Colors.white,))
//                     ],
//                   )
//               ),
//
//             ],
//           ),
//         );
//
//
//       },
//     ),
// ),

