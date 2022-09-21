import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_admin_dashboard/constants/constants.dart';

import 'bar_chart_users.dart';

class Users extends StatelessWidget {
  const Users({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Container(
                height: 190,
                width: double.infinity*0.7,
                padding: EdgeInsets.all(appPadding),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset:
                      Offset(0, 2), // changes position of shadow
                    ),
                  ],
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Users",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: textColor,
                      ),
                    ),
                    Expanded(
                      child: BarChartUsers(),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 190,
                width: double.infinity*0.7,
                padding: EdgeInsets.all(appPadding),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset:
                      Offset(0, 2), // changes position of shadow
                    ),
                  ],
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Users",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: textColor,
                      ),
                    ),
                    Expanded(
                      child: BarChartUsers(),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 10,),
        Expanded(
          flex: 2,
          child: Container(
            height: 400,
            width: double.infinity,
            padding: EdgeInsets.all(appPadding),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset:
                  Offset(0, 2), // changes position of shadow
                ),
              ],
              color: secondaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Users",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: textColor,
                  ),
                ),
                Expanded(
                  child: BarChartUsers(),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
