

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tameen/Ui/Splach_Screen/pages/Splach_Screen.dart';


void main (){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',

    home: SplachScreen(),
  )
  );
}

// flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs
