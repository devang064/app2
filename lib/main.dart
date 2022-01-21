//import 'dart:developer';

//import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
//import 'package:youtube_player_flutter/youtube_player_flutter.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to Flutter',
        home: Scaffold(
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.grey.withOpacity(0.8),
                    blurRadius: 15.0,
                    offset: Offset(1, 3))
              ],
            ),
            height: 160,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 54,
                  width: 380,
                  color: Colors.green,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "i do letter",
                        style: TextStyle(fontSize: 19),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 48,
                  width: 380,
                  color: Colors.lightBlue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Get Started',
                        style: TextStyle(fontSize: 19),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

          body: //Container(),


              //Padding(
              //padding: const EdgeInsets.all(16.0),
              Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(

                height: 248,
                width: 412,
                child: Image.asset('assets/images/icon.jpg')


              ),
              SizedBox(height: 58),
              SizedBox(
                height: 15.86,
              ),
              ListTile(
                leading: CircleAvatar(
                    backgroundImage: AssetImage('asset/image/icon.jpg')),
                // leading: FlutterLogo(size: 56),
                title: Text(
                  'AePS Knowledge tutorial',
                  style: TextStyle(fontSize: 22),
                ),
                subtitle: Text(
                  '10, Min Watch',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              SizedBox(
                height: 19,
                child: Text('     Covering Topics',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      //crossAxisSpacing: 19,
                      mainAxisSpacing: 19,
                    ),
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 8),
                        child: Column(
                          children: [
                             CircleAvatar(
                              backgroundImage:
                                   AssetImage('assets/Images/icon.jpg'),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                             Text(
                              "text",
                              textAlign: TextAlign.center,
                            )

                          ],
                        ),
                      );
                    }),


              ),
            ],
          ),
          //  ),
        ));
  }
}
