import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:responsive_admin_dashboard/constants/constants.dart';
import 'package:responsive_admin_dashboard/controllers/serach_controller.dart';

class NewSearchWindow extends StatelessWidget {
  var controller=Get.put(SearchController());
  @override
  Widget build(BuildContext context) {
    return
      Obx(
          ()=>controller.Expanded.value==false?
          Container(

            height: 70.h,
            decoration: BoxDecoration(
              color: mainBackgroundColor,
              borderRadius: BorderRadius.circular(15),

            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.date_range,color: Colors.white,),
                Icon(Icons.notifications,color: Colors.white,),
                Icon(Icons.textsms_outlined,color: Colors.white,),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(

                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("assets/images/photo3.jpg"),
                        fit: BoxFit.fill
                    ),
                  ),
                  //child: Image.asset("assets/images/photo3.jpg",fit: BoxFit.fill,),
                ),
                GestureDetector(
                    onTap: (){
                      controller.Expanded.value=true;
                    },
                    child: Icon(Icons.keyboard_arrow_down,color: Colors.white,)),


              ],
            ),
          ):
          Container(

            decoration: BoxDecoration(
              color: mainBackgroundColor,
              borderRadius: BorderRadius.circular(15),

            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 380.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 250.w,
                        height: 70.h,
                        decoration: BoxDecoration(
                          color: mainBackgroundColor,
                          borderRadius: BorderRadius.circular(15),

                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.date_range,color: Colors.white,),
                            Icon(Icons.notifications,color: Colors.white,),
                            Icon(Icons.textsms_outlined,color: Colors.white,),
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(

                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage("assets/images/photo3.jpg"),
                                    fit: BoxFit.fill
                                ),
                              ),
                              //child: Image.asset("assets/images/photo3.jpg",fit: BoxFit.fill,),
                            ),
                            GestureDetector(
                                onTap: (){
                                  controller.Expanded.value=false;
                                },
                                child: Icon(Icons.keyboard_arrow_up,color: Colors.white,)),


                          ],
                        ),
                      ),
                      Padding(
                        padding:EdgeInsets.only(top: 5,bottom: 30),
                        child: Container(


                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),

                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(top: 11.h,left: 19.w,right: 15.w),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text("Messages ",style: TextStyle(fontWeight: FontWeight.bold),),
                                        Text("(2)",style: TextStyle(color: Colors.blueAccent),)
                                      ],
                                    ),
                                    Icon(Icons.more_horiz)
                                  ],
                                ),
                              ),
                              Padding(
                                  padding:  EdgeInsets.only(top: 11.h,left: 19.w,right: 15.w),
                                  child: Container(

                                    
                                    height: 28.h,
                                    decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(26),

                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 23.w),
                                          child: Icon(Icons.search,size: 18.sp,),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(right: 23.w),
                                          child: Text("search",style: TextStyle(
                                              fontSize: 16.sp
                                          ),),
                                        )
                                      ],
                                    ),
                                  )
                              ),
                              Padding(
                                  padding:  EdgeInsets.only(top: 11.h,left: 19.w,right: 15.w),
                                  child: Container(

                                    width: Get.width.w/0.2,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(

                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  width: 30,
                                                  height: 30,
                                                  color: Colors.black12,
                                                  child: Icon(Icons.person)
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left:20.w),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Email"),
                                                    Text("asadhayat")
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(right: 23.w),
                                          child: Text("search",style: TextStyle(
                                              fontSize: 13.sp
                                          ),),
                                        )
                                      ],
                                    ),
                                  )
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 6.h),
                                child: Container(
                                  width: Get.width.w,
                                  height: 1,
                                  color: Colors.black12,
                                ),
                              ),
                              Padding(
                                  padding:  EdgeInsets.only(top: 11.h,left: 19.w,right: 15.w),
                                  child: Container(

                                    width: Get.width.w/0.2,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(

                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  width: 30,
                                                  height: 30,
                                                  color: Colors.black12,
                                                  child: Icon(Icons.person)
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left:20.w),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Email"),
                                                    Text("asadhayat")
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(right: 23.w),
                                          child: Text("search",style: TextStyle(
                                              fontSize: 13.sp
                                          ),),
                                        )
                                      ],
                                    ),
                                  )
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 6.h),
                                child: Container(
                                  width: Get.width.w,
                                  height: 1,
                                  color: Colors.black12,
                                ),
                              ),
                              Padding(
                                  padding:  EdgeInsets.only(top: 11.h,left: 19.w,right: 15.w,bottom: 19.h),
                                  child: Container(

                                    width: Get.width.w/0.2,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(

                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  width: 30,
                                                  height: 30,
                                                  color: Colors.black12,
                                                  child: Icon(Icons.person)
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left:20.w),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Email"),
                                                    Text("asadhayat")
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(right: 23.w),
                                          child: Text("search",style: TextStyle(
                                              fontSize: 13.sp
                                          ),),
                                        )
                                      ],
                                    ),
                                  )
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:EdgeInsets.only(top: 5,bottom: 50),
                        child: Container(


                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),

                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(top: 11.h,left: 19.w,right: 15.w),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text("Messages ",style: TextStyle(fontWeight: FontWeight.bold),),
                                        Text("(2)",style: TextStyle(color: Colors.blueAccent),)
                                      ],
                                    ),
                                    Icon(Icons.more_horiz)
                                  ],
                                ),
                              ),
                              Padding(
                                  padding:  EdgeInsets.only(top: 11.h,left: 19.w,right: 15.w),
                                  child: Container(

                                    width: Get.width.w/0.2,
                                    height: 28.h,
                                    decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(26),

                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 23.w),
                                          child: Icon(Icons.search,size: 18.sp,),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(right: 23.w),
                                          child: Text("search",style: TextStyle(
                                              fontSize: 16.sp
                                          ),),
                                        )
                                      ],
                                    ),
                                  )
                              ),
                              Padding(
                                  padding:  EdgeInsets.only(top: 11.h,left: 19.w,right: 15.w),
                                  child: Container(

                                    width: Get.width.w/0.2,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(

                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  width: 30,
                                                  height: 30,
                                                  color: Colors.black12,
                                                  child: Icon(Icons.person)
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left:20.w),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Email"),
                                                    Text("asadhayat")
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(right: 23.w),
                                          child: Text("search",style: TextStyle(
                                              fontSize: 13.sp
                                          ),),
                                        )
                                      ],
                                    ),
                                  )
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 6.h),
                                child: Container(
                                  width: Get.width.w,
                                  height: 1,
                                  color: Colors.black12,
                                ),
                              ),
                              Padding(
                                  padding:  EdgeInsets.only(top: 11.h,left: 19.w,right: 15.w),
                                  child: Container(

                                    width: Get.width.w/0.2,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(

                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  width: 30,
                                                  height: 30,
                                                  color: Colors.black12,
                                                  child: Icon(Icons.person)
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left:20.w),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Email"),
                                                    Text("asadhayat")
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(right: 23.w),
                                          child: Text("search",style: TextStyle(
                                              fontSize: 13.sp
                                          ),),
                                        )
                                      ],
                                    ),
                                  )
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 6.h),
                                child: Container(
                                  width: Get.width.w,
                                  height: 1,
                                  color: Colors.black12,
                                ),
                              ),
                              Padding(
                                  padding:  EdgeInsets.only(top: 11.h,left: 19.w,right: 15.w,bottom: 19.h),
                                  child: Container(

                                    width: Get.width.w/0.2,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(

                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  width: 30,
                                                  height: 30,
                                                  color: Colors.black12,
                                                  child: Icon(Icons.person)
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left:20.w),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Email"),
                                                    Text("asadhayat")
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(right: 23.w),
                                          child: Text("search",style: TextStyle(
                                              fontSize: 13.sp
                                          ),),
                                        )
                                      ],
                                    ),
                                  )
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          )
      );

  }
}