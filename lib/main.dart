import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//import 'package:flutter/fluttertoast.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
// variables for changes images
  var liftDiceeImage = 1;

  var rightDiceeImage = 1;

  void changeDiceeFace() {
    setState(() {
      // liftDiceeImage = liftDiceeImage+1;
      // if(liftDiceeImage == 7){
      //   liftDiceeImage = 1;
      // }
      liftDiceeImage = Random().nextInt(6) + 1;
      rightDiceeImage = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Dicee'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  // // print('You pressed left button');
                  //      // very very nice pace of code
                  //      setState(() {
                  //        // liftDiceeImage = liftDiceeImage+1;
                  //        // if(liftDiceeImage == 7){
                  //        //   liftDiceeImage = 1;
                  //        // }
                  //    liftDiceeImage = Random().nextInt(6) + 1 ;
                  //    rightDiceeImage = Random().nextInt(6) + 1 ;
                  //      });
                  // //////////////// calling methode
                  changeDiceeFace();

                  Fluttertoast.showToast(
                      msg: "This is $liftDiceeImage left pressed button",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.blue,
                      textColor: Colors.white,
                      fontSize: 16.0);
                },
                child: Image(
                  image: AssetImage('images/dice$liftDiceeImage.png'),
                  width: 200,
                  height: 200,
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  // //print('You pressed right button');
                  // setState(() {
                  //   // rightDiceeImage = rightDiceeImage + 1 ;
                  //   // if(rightDiceeImage == 7 ){
                  //   //   rightDiceeImage = 1 ;
                  //   // }
                  //   rightDiceeImage = Random().nextInt(6) + 1 ;
                  //   liftDiceeImage = Random().nextInt(6) + 1 ;
                  // });

                  // ///// using methode change face
                  changeDiceeFace();

                  Fluttertoast.showToast(
                      msg: "This is $rightDiceeImage right pressed button",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.blue,
                      textColor: Colors.white,
                      fontSize: 16.0);
                },
                child: Image(
                  image: AssetImage('images/dice$rightDiceeImage.png'),
                  width: 200,
                  height: 200,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
