import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui/Compunats.dart';
import 'package:ui/UI/Social%20Media%20App.dart';

//https://dribbble.com/shots/20614793-Cloudy-File-Manager-Mobile-App
class Cloudy extends StatelessWidget {
  const Cloudy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'CLoudy.',
              style: TextStyle(
                  color: CupertinoColors.black,
                  fontSize: 90.sp,
                  fontWeight: FontWeight.w800),
            ),
            Stack(
              children: [
                Row(children: [
                  Container(
                    height: 350.h,
                    width: 150.w,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment(0.8, 1),
                          colors: <Color>[
                            Color(0xffffb908),
                            Color(0xffffeb3b),
                          ], // Gradient from https://learnui.design/tools/gradient-generator.html
                          tileMode: TileMode.mirror,
                        ),
                        color: Colors.yellow,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(150),
                            bottomRight: Radius.circular(150))),
                    child: Center(
                        child: Text(
                      "Send\nand\nreceive\nFiles\nSecurely",
                      style: TextStyle(
                          fontSize: 30.sp, fontWeight: FontWeight.w400),
                    )),
                  ),
                  Spacer(),
                  Container(
                    height: 350.h,
                    width: 150.w,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: NetworkImage(
                                'https://media.wired.com/photos/621e8c4000c61db612b05fda/master/pass/Gear-Set-Up-Your-Desk-Ergonomically-1315115142.jpg')),
                        color: Colors.yellow,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(150),
                            bottomLeft: Radius.circular(150))),
                  ),
                ]),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        textAlign: TextAlign.justify,
                        'Backup and\nrestore made\neasy',
                        style: TextStyle(),
                      ),
                    ),
                    SizedBox(
                      height: 250.h,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        textAlign: TextAlign.justify,
                        'Admin Tools\nto manage your\nentire team ',
                        style: TextStyle(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              width: double.infinity,
              height: .9.h,
              child: Container(
                color: CupertinoColors.black,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Project-100GB',
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        '30 USD',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 100.w,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Project-100GB',
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        '30 USD',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Securty'),
                      Text('Send and\nReceive files',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25.sp)),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {
                              NavigateTo(context, Social_Media_App());
                            },
                            child: Text('Cloud',
                                style: TextStyle(color: CupertinoColors.black)),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Text('Storage',
                                    style: TextStyle(
                                        color: CupertinoColors.white)),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Icon(
                                  Icons.arrow_right,
                                  color: CupertinoColors.white,
                                ),
                              ],
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.black),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text('( * )',
                                style: TextStyle(color: CupertinoColors.white)),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.black),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Row(
                              children: const [
                                Text('543/1000',
                                    style: TextStyle(
                                        color: CupertinoColors.black)),
                              ],
                            ),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
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
