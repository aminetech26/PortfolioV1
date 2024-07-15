import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/presentation_layer/constants/colors.dart';

import '../constants/strings.dart';
import '../constants/text_styles.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return LayoutBuilder(builder: (context, constrainsts) {
      if (constrainsts.maxWidth > 900) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              maxRadius: 100.r,
              backgroundImage: const AssetImage(Strings.secondProfilePicture),
            ),
            SizedBox(
              width: size.width / 10,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeInUp(
                    child: Text(
                  'About Me',
                  style: TextStyles.headingStyles(),
                )),
                SizedBox(
                  height: size.height / 50,
                ),
                Text(
                  'Software Developer !',
                  style: TextStyles.montserratTextStyle(),
                ),
                SizedBox(
                  height: size.height / 50,
                ),
                Container(
                    width: 200.w,
                    child: Text(
                      'In the realm of technology, I stand as an ambitious, autonomous, and fast-learning individual who firmly believes that our only true limit is our imagination. I am constantly driven by an insatiable thirst for knowledge, always seeking opportunities for growth and learning.',
                      style: TextStyles.normalText(),
                    )),
                SizedBox(
                  height: size.height / 50,
                ),
                FadeInUp(
                    child: Text(
                  'Technical Skills',
                  style: TextStyles.headingStyles(),
                )),
                SizedBox(
                  height: size.height / 50,
                ),
                Row(
                  children: [
                    buildMaterialButton('C', 3.sp),
                    SizedBox(
                      width: size.width / 30,
                    ),
                    buildMaterialButton('C#', 3.sp),
                    SizedBox(
                      width: size.width / 30,
                    ),
                    buildMaterialButton('WPF', 3.sp),
                    SizedBox(
                      width: size.width / 30,
                    ),
                    buildMaterialButton('Java', 3.sp),
                    SizedBox(
                      width: size.width / 30,
                    ),
                    buildMaterialButton('Kotlin', 3.sp),
                  ],
                ),
                SizedBox(
                  height: size.height / 30,
                ),
                Row(
                  children: [
                    buildMaterialButton('Dart', 3.sp),
                    SizedBox(
                      width: size.width / 30,
                    ),
                    buildMaterialButton('Java FX', 3.sp),
                    SizedBox(
                      width: size.width / 30,
                    ),
                    buildMaterialButton('Flutter', 3.sp),
                    SizedBox(
                      width: size.width / 30,
                    ),
                    buildMaterialButton('API Integration', 3.sp),
                    SizedBox(
                      width: size.width / 30,
                    ),
                    buildMaterialButton('SQL', 3.sp),
                    SizedBox(
                      width: size.width / 30,
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height / 30,
                ),
                Row(
                  children: [
                    buildMaterialButton('Git', 3.sp),
                    SizedBox(
                      width: size.width / 30,
                    ),
                    buildMaterialButton('Linux', 3.sp),
                    SizedBox(
                      width: size.width / 30,
                    ),
                    buildMaterialButton('Clean Code', 3.sp),
                    SizedBox(
                      width: size.width / 30,
                    ),
                    buildMaterialButton('SOLID', 3.sp),
                    SizedBox(
                      width: size.width / 30,
                    ),
                    buildMaterialButton('Design Patterns', 3.sp),
                  ],
                ),
                SizedBox(
                  height: size.height / 30,
                ),
                Row(
                  children: [
                    buildMaterialButton('Python', 3.sp),
                    SizedBox(
                      width: size.width / 30,
                    ),
                    buildMaterialButton('Django', 3.sp),
                    SizedBox(
                      width: size.width / 30,
                    ),
                    buildMaterialButton('DRF', 3.sp),
                    SizedBox(
                      width: size.width / 30,
                    ),
                    buildMaterialButton('TDD', 3.sp),
                    SizedBox(
                      width: size.width / 30,
                    ),
                    buildMaterialButton('State Management', 3.sp),
                  ],
                ),
                SizedBox(
                  height: size.height / 50,
                ),
                FadeInUp(
                    child: Text(
                  'Soft Skills',
                  style: TextStyles.headingStyles(),
                )),
                SizedBox(
                  height: size.height / 50,
                ),
                Row(
                  children: [
                    buildMaterialButton('Communication', 3.sp),
                    SizedBox(
                      width: size.width / 30,
                    ),
                    buildMaterialButton('Team Work', 3.sp),
                    SizedBox(
                      width: size.width / 30,
                    ),
                    buildMaterialButton('Autonomy', 3.sp),
                    SizedBox(
                      width: size.width / 30,
                    ),
                    buildMaterialButton('Creativity', 3.sp),
                  ],
                ),
              ],
            ),
          ],
        );
      } else if (constrainsts.maxWidth > 428 && constrainsts.maxWidth <= 900) {
        return Padding(
          padding: EdgeInsets.only(left: 50.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FadeInUp(
                  child: Text(
                'About Me',
                style: GoogleFonts.rubikMoonrocks(
                  fontWeight: FontWeight.w800,
                  fontSize: 15.sp,
                  letterSpacing: 2,
                  color: Colors.black87,
                ),
              )),
              SizedBox(
                height: size.height / 70,
              ),
              Text(
                'Software Developer !',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.sp,
                  color: Colors.black87,
                ),
              ),
              SizedBox(
                height: size.height / 70,
              ),
              Container(
                  width: 300.w,
                  child: Text(
                    'In the realm of technology, I stand as an ambitious, autonomous, and fast-learning individual who firmly believes that our only true limit is our imagination. I am constantly driven by an insatiable thirst for knowledge, always seeking opportunities for growth and learning.',
                    style: GoogleFonts.signikaNegative(
                      fontWeight: FontWeight.w500,
                      fontSize: 10.sp,
                      letterSpacing: 1,
                      color: Colors.black54,
                    ),
                  )),
              SizedBox(
                height: size.height / 70,
              ),
              FadeInUp(
                  child: Text(
                'Technical Skills',
                style: GoogleFonts.rubikMoonrocks(
                  fontWeight: FontWeight.w800,
                  fontSize: 10.sp,
                  letterSpacing: 2,
                  color: Colors.black87,
                ),
              )),
              SizedBox(
                height: size.height / 80,
              ),
              Row(
                children: [
                  buildMaterialButton('C', 5.sp),
                  SizedBox(
                    width: size.width / 30,
                  ),
                  buildMaterialButton('C#', 5.sp),
                  SizedBox(
                    width: size.width / 30,
                  ),
                  buildMaterialButton('WPF', 5.sp),
                  SizedBox(
                    width: size.width / 30,
                  ),
                  buildMaterialButton('Java', 5.sp),
                  SizedBox(
                    width: size.width / 30,
                  ),
                  buildMaterialButton('Kotlin', 5.sp),
                ],
              ),
              SizedBox(
                height: size.height / 80,
              ),
              Row(
                children: [
                  buildMaterialButton('Java FX', 5.sp),
                  SizedBox(
                    width: size.width / 30,
                  ),
                  buildMaterialButton('Flutter', 5.sp),
                  SizedBox(
                    width: size.width / 30,
                  ),
                  buildMaterialButton('API Integration', 5.sp),
                  SizedBox(
                    width: size.width / 30,
                  ),
                  buildMaterialButton('Dart', 5.sp),
                  SizedBox(
                    width: size.width / 30,
                  ),
                  buildMaterialButton('SQL', 5.sp),
                ],
              ),
              SizedBox(
                height: size.height / 80,
              ),
              Row(
                children: [
                  buildMaterialButton('Git', 5.sp),
                  SizedBox(
                    width: size.width / 30,
                  ),
                  buildMaterialButton('Linux', 5.sp),
                  SizedBox(
                    width: size.width / 30,
                  ),
                  buildMaterialButton('Clean Code', 5.sp),
                  SizedBox(
                    width: size.width / 30,
                  ),
                  buildMaterialButton('SOLID', 5.sp),
                  SizedBox(
                    width: size.width / 30,
                  ),
                  buildMaterialButton('MVVM', 5.sp),
                ],
              ),
              SizedBox(
                height: size.height / 80,
              ),
              Row(
                children: [
                  buildMaterialButton('Python', 5.sp),
                  SizedBox(
                    width: size.width / 30,
                  ),
                  buildMaterialButton('Django', 5.sp),
                  SizedBox(
                    width: size.width / 30,
                  ),
                  buildMaterialButton('DRF', 5.sp),
                  SizedBox(
                    width: size.width / 30,
                  ),
                  buildMaterialButton('TDD', 5.sp),
                  SizedBox(
                    width: size.width / 30,
                  ),
                  buildMaterialButton('State Management', 5.sp),
                ],
              ),
              SizedBox(
                height: size.height / 70,
              ),
              FadeInUp(
                  child: Text(
                'Soft Skills',
                style: GoogleFonts.rubikMoonrocks(
                  fontWeight: FontWeight.w800,
                  fontSize: 10.sp,
                  letterSpacing: 2,
                  color: Colors.black87,
                ),
              )),
              SizedBox(
                height: size.height / 50,
              ),
              Row(
                children: [
                  buildMaterialButton('Communication', 5.sp),
                  SizedBox(
                    width: size.width / 30,
                  ),
                  buildMaterialButton('Team Work', 5.sp),
                  SizedBox(
                    width: size.width / 30,
                  ),
                  buildMaterialButton('Autonomy', 5.sp),
                  SizedBox(
                    width: size.width / 30,
                  ),
                  buildMaterialButton('Creativity', 5.sp),
                ],
              ),
            ],
          ),
        );
      } else {
        return Padding(
          padding: EdgeInsets.only(left: 50.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FadeInUp(
                  child: Text(
                'About Me',
                style: GoogleFonts.rubikMoonrocks(
                  fontWeight: FontWeight.w800,
                  fontSize: 25.sp,
                  letterSpacing: 2,
                  color: Colors.black87,
                ),
              )),
              SizedBox(
                height: size.height / 70,
              ),
              Text(
                'Software Developer !',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.sp,
                  color: Colors.black87,
                ),
              ),
              SizedBox(
                height: size.height / 70,
              ),
              Container(
                  width: 300.w,
                  child: Text(
                    'In the realm of technology, I stand as an ambitious, autonomous, and fast-learning individual who firmly believes that our only true limit is our imagination. I am constantly driven by an insatiable thirst for knowledge, always seeking opportunities for growth and learning.',
                    style: GoogleFonts.signikaNegative(
                      fontWeight: FontWeight.w500,
                      fontSize: 15.sp,
                      letterSpacing: 1,
                      color: Colors.black54,
                    ),
                  )),
              SizedBox(
                height: size.height / 70,
              ),
              FadeInUp(
                  child: Text(
                'Technical Skills',
                style: GoogleFonts.rubikMoonrocks(
                  fontWeight: FontWeight.w800,
                  fontSize: 20.sp,
                  letterSpacing: 2,
                  color: Colors.black87,
                ),
              )),
              SizedBox(
                height: size.height / 80,
              ),
              Row(
                children: [
                  buildMaterialButton('C', 10.sp),
                  SizedBox(
                    width: size.width / 30,
                  ),
                  buildMaterialButton('C#', 10.sp),
                  SizedBox(
                    width: size.width / 30,
                  ),
                  buildMaterialButton('WPF', 10.sp),
                ],
              ),
              SizedBox(
                height: size.height / 80,
              ),
              Row(
                children: [
                  buildMaterialButton('Java', 10.sp),
                  SizedBox(
                    width: size.width / 30,
                  ),
                  buildMaterialButton('Kotlin', 10.sp),
                  SizedBox(
                    width: size.width / 30,
                  ),
                  buildMaterialButton('Dart', 10.sp),
                ],
              ),
              SizedBox(
                height: size.height / 80,
              ),
              Row(
                children: [
                  buildMaterialButton('Java FX', 10.sp),
                  SizedBox(
                    width: size.width / 30,
                  ),
                  buildMaterialButton('Flutter', 10.sp),
                  SizedBox(
                    width: size.width / 30,
                  ),
                  buildMaterialButton('APIs', 10.sp),
                ],
              ),
              SizedBox(
                height: size.height / 80,
              ),
              Row(
                children: [
                  buildMaterialButton('SQL', 10.sp),
                  SizedBox(
                    width: size.width / 30,
                  ),
                  buildMaterialButton('Git', 10.sp),
                  SizedBox(
                    width: size.width / 30,
                  ),
                  buildMaterialButton('Linux', 10.sp),
                  SizedBox(
                    width: size.width / 30,
                  ),
                ],
              ),
              SizedBox(
                height: size.height / 80,
              ),
              Row(
                children: [
                  buildMaterialButton('Clean Code', 10.sp),
                  SizedBox(
                    width: size.width / 30,
                  ),
                  buildMaterialButton('SOLID', 10.sp),
                  SizedBox(
                    width: size.width / 30,
                  ),
                  buildMaterialButton('MVVM', 10.sp),
                ],
              ),
              SizedBox(
                height: size.height / 70,
              ),
              FadeInUp(
                  child: Text(
                'Soft Skills',
                style: GoogleFonts.rubikMoonrocks(
                  fontWeight: FontWeight.w800,
                  fontSize: 20.sp,
                  letterSpacing: 2,
                  color: Colors.black87,
                ),
              )),
              SizedBox(
                height: size.height / 50,
              ),
              Row(
                children: [
                  buildMaterialButton('Communication', 10.sp),
                  SizedBox(
                    width: size.width / 30,
                  ),
                  buildMaterialButton('Team Work', 10.sp),
                  SizedBox(
                    width: size.width / 30,
                  ),
                  buildMaterialButton('Autonomy', 10.sp),
                ],
              ),
            ],
          ),
        );
      }
    });
  }

  FadeInLeft buildMaterialButton(String name, double fontSize) {
    return FadeInLeft(
      duration: Duration(seconds: 3),
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          name,
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.bold,
            fontSize: fontSize,
            color: Colors.black,
          ),
        ),
        color: Colors.lightBlueAccent,
        hoverColor: Colors.white,
        shape: OutlineInputBorder(borderRadius: BorderRadius.circular(3.r)),
      ),
    );
  }
}
