import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_admin_dashboard/constants/constants.dart';
import 'package:responsive_admin_dashboard/constants/responsive.dart';
import 'package:responsive_admin_dashboard/models/analytic_info_model.dart';

class AnalyticInfoCard extends StatelessWidget {
   AnalyticInfoCard({Key? key, required this.info,this.index}) : super(key: key);

  final AnalyticInfo info;
  int ?index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.sp,
        vertical: 10.sp,
      ),
      child: Container(
        // margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        padding: EdgeInsets.symmetric(
          horizontal: 5.sp,
          vertical: 5.sp,
        ),
        decoration: BoxDecoration(
            color: secondaryColor, borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          border:index==0? Border.all(width: 0.5):Border.all(color: Colors.transparent)


        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(appPadding / 2),
                  height: 40,
                  width: 40,
                  child:  Center(
                    child: info.svgSrc,
                  ),
                ),
                Container(
                    // padding: EdgeInsets.all(appPadding / 2),
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: info.color!.withOpacity(0.1),
                        shape: BoxShape.circle),
                    child: Center(
                      child: Icon(Icons.more_vert),
                    )),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  info.price!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.montserrat(
                    color: textColor,
                    fontSize: Responsive.isMobile(context) || Responsive.isTablet(context) ? 11:14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(


                  child: Text(
                    info.title!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.montserrat(
                      color: Colors.grey,
                      fontSize: Responsive.isMobile(context) || Responsive.isTablet(context) ? 11:14,
                      // fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
