import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//https://dribbble.com/shots/20681632-Login-UX-Copywriting-Daily-Challenge-03

class LoginUI extends StatelessWidget {
  const LoginUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.vertical(
                        bottom: Radius.elliptical(
                                MediaQuery.of(context).size.width, 200.0)
                            .w,
                        top: Radius.elliptical(
                                MediaQuery.of(context).size.width, 200.0)
                            .w),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.vertical(
                        bottom: Radius.elliptical(
                                MediaQuery.of(context).size.width, 200.0)
                            .w),
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
