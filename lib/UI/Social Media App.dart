import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui/Compunats.dart';
import 'package:ui/UI/Login.dart';

//https://dribbble.com/shots/20664988-Social-Media-App-SOCIETY
class Social_Media_App extends StatelessWidget {
  const Social_Media_App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff695f55),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xff494038), Color(0xff28221f)],
            ),
          ),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0).w,
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: CupertinoColors.black,
                    child: IconButton(
                      onPressed: () {
                        NavigateTo(context, const LoginUI());
                      },
                      icon: const Icon(
                        Icons.dashboard,
                        color: CupertinoColors.white,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: const [
                      Icon(
                        Icons.where_to_vote,
                        color: Color(0xffe02c11),
                      ),
                      Text(
                        'Surabaya, jatim',
                        style: TextStyle(color: CupertinoColors.white),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Color(0xffffffff),
                      ),
                    ],
                  ),
                  const Spacer(),
                  CircleAvatar(
                    backgroundColor: CupertinoColors.black,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notification_add,
                        color: CupertinoColors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0).w,
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      onChanged: (value) {},
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          label: const Text('search for idols',
                              style: TextStyle(color: Colors.white)),
                          filled: true,
                          fillColor: CupertinoColors.black,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50).w,
                              borderSide: const BorderSide(color: Colors.black)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50).w,
                              borderSide:
                                  const BorderSide(color: Colors.white)),
                          prefixIcon: Icon(
                            Icons.search_rounded,
                            color: Colors.white,
                            size: 30.sp,
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  CircleAvatar(
                    radius: 30.w,
                    backgroundColor: CupertinoColors.black,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.filter_alt,
                        color: CupertinoColors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20).w,
              child: Container(
                decoration: BoxDecoration(
                    color: CupertinoColors.black,
                    borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(50).w,
                        bottomLeft: const Radius.circular(50).w)),
                height: 50.h,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(50).w,
                      bottomLeft: const Radius.circular(50).w),
                  clipBehavior: Clip.antiAlias,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 1.w,
                      bottom: 1.w,
                      left: 1.w,
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: 1.w, bottom: 5.w, top: 5.w),
                      child: ListView.separated(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => TextButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      side:
                                          const BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(50).w,
                                    ),
                                  ),
                                ),
                                child: Row(
                                  children: const [
                                    Text('Trending',
                                        style: TextStyle(
                                            color: CupertinoColors.black)),
                                  ],
                                ),
                              ),
                          separatorBuilder: (context, index) => SizedBox(
                                width: 5.w,
                              ),
                          itemCount: 10),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Container(
                            height: 300.h,
                            width: 340.w,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    fit: BoxFit.fitHeight,
                                    image: NetworkImage(
                                        'https://cdn.thetealmango.com/wp-content/uploads/2021/07/dwaynejohnson.jpg')),
                                color: CupertinoColors.black,
                                border:
                                    Border.all(color: Colors.black, width: 5.w),
                                borderRadius: BorderRadius.circular(20).w),
                          ),
                          Positioned(
                            top: 10.w,
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.where_to_vote,
                                  color: Color(0xffe02c11),
                                ),
                                Text(
                                  'Surabaya, jatim',
                                  style:
                                      TextStyle(color: CupertinoColors.white),
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Color(0xffffffff),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 10.w,
                            left: 30.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'THE ROCK',
                                  style: TextStyle(
                                      backgroundColor:
                                          CupertinoColors.black.withOpacity(.5),
                                      fontSize: 20.w,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  'kalforina,USA ',
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 10.w,
                            right: 30.w,
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: CupertinoColors.black,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.chat_outlined,
                                      color: CupertinoColors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                CircleAvatar(
                                  backgroundColor: CupertinoColors.black,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.hdr_weak_outlined,
                                      color: CupertinoColors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                  separatorBuilder: (context, index) => SizedBox(height: 10.h),
                  itemCount: 10),
            )
          ]),
        ),
      ),
    );
  }
}
