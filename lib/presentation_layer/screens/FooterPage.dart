import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/text_styles.dart';
class FooterPage extends StatelessWidget {
  const FooterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return LayoutBuilder(
      builder:(context,constraints){
        if (constraints.maxWidth>900){
          return Container(
            width: double.infinity,
            height: 70.h,
            color: Colors.grey[50],
            child: Center(
              child: Text(
                'Copyright © 2023, All rights reserved. Made with \u2764 by </Ahmed Amine GUERRAICHE>',
                style: TextStyle(
                  fontSize: 4.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          );
        }
        else if (constraints.maxWidth > 428 && constraints.maxWidth <= 900){
          return Container(
            width: double.infinity,
            height: 70.h,
            color: Colors.grey[100],
            child: Center(
              child: Text(
                'Made with \u2764 by </Ahmed Amine GUERRAICHE>',
                style: TextStyle(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          );
        }
        else{
          return Container(
            width: double.infinity,
            height: 70.h,
            color: Colors.grey[100],
            child: Center(
              child: Text(
                'Made with \u2764 by </Ahmed Amine GUERRAICHE>',
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          );
        }
      }
    );
  }
}
