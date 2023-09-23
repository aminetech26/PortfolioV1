import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';
import '../constants/text_styles.dart';

class MyServices extends StatefulWidget {
  const MyServices({Key? key}) : super(key: key);

  @override
  State<MyServices> createState() => _MyServicesState();
}

class _MyServicesState extends State<MyServices> {
  ScrollController controller = ScrollController();
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return LayoutBuilder(
      builder:(context,constraints){
        if (constraints.maxWidth>900){
          return Column(
            children: [
              Text('My Services',style: TextStyles.headingStyles(),),
              SizedBox(height: size.height/20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildServiceWidget('https://img.icons8.com/fluency/48/laptop-coding.png','Mobile Apps Developer','With a focus on efficiency and user experience, I bring your mobile app visions to life, ensuring they not only function seamlessly but also captivate users.'),
                  buildServiceWidget('https://img.icons8.com/fluency/48/laptop-coding.png','UI/UX Designer','With a strong emphasis on user-centric design, I transform your concepts into visually appealing interfaces that leave a lasting impression on your audience.'),
                  buildServiceWidget('https://img.icons8.com/fluency/48/laptop-coding.png','Desktop Apps Developer','I\'m dedicated to delivering efficient and tailored desktop applications that precisely align with your goals and deliver seamless user experiences.'),
                ],
              ),
            ],
          );
        }
        else if (constraints.maxWidth> 428 && constraints.maxWidth<=900){
          return Padding(
            padding: EdgeInsets.only(left: 90.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('My Services',style: GoogleFonts.rubikMoonrocks(
                  fontWeight: FontWeight.w800,
                  fontSize: 15.sp,
                  letterSpacing: 2,
                  color: Colors.black87,
                ),),
                SizedBox(height: size.height/20,),
                Padding(
                  padding: const EdgeInsets.only(left: 0.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buildServiceWidgetTablet('https://img.icons8.com/fluency/48/laptop-coding.png','Mobile Apps Developer','With a focus on efficiency and user experience, I bring your mobile app visions to life, ensuring they not only function seamlessly but also captivate users.'),
                      SizedBox(height: size.height/50),
                      buildServiceWidgetTablet('https://img.icons8.com/fluency/48/laptop-coding.png','UI/UX Designer','With a strong emphasis on user-centric design, I transform your concepts into visually appealing interfaces that leave a lasting impression on your audience.'),
                      SizedBox(height: size.height/50),
                      buildServiceWidgetTablet('https://img.icons8.com/fluency/48/laptop-coding.png','Desktop Apps Developer','I\'m dedicated to delivering efficient and tailored desktop applications that precisely align with your goals and deliver seamless user experiences.'),
                    ],
                  ),
                ),
              ],
            ),
          );
        }
        else{
          return Padding(
            padding: EdgeInsets.only(left: 50.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('My Services',style: GoogleFonts.rubikMoonrocks(
                  fontWeight: FontWeight.w800,
                  fontSize: 25.sp,
                  letterSpacing: 2,
                  color: Colors.black87,
                ),),
                SizedBox(height: size.height/20,),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buildServiceWidgetMobile('https://img.icons8.com/fluency/48/laptop-coding.png','Mobile Apps Developer','With a focus on efficiency and user experience, I bring your mobile app visions to life, ensuring they not only function seamlessly but also captivate users.'),
                      SizedBox(height: size.height/50),
                      buildServiceWidgetMobile('https://img.icons8.com/fluency/48/laptop-coding.png','UI/UX Designer','With a strong emphasis on user-centric design, I transform your concepts into visually appealing interfaces that leave a lasting impression on your audience.'),
                      SizedBox(height: size.height/50),
                      buildServiceWidgetMobile('https://img.icons8.com/fluency/48/laptop-coding.png','Desktop Apps Developer','I\'m dedicated to delivering efficient and tailored desktop applications that precisely align with your goals and deliver seamless user experiences.'),
                    ],
                  ),
                ),
              ],
            ),
          );
        }
      }
    );
  }

  InkWell buildServiceWidget(String url,String title,String description) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onHover: (value){
        setState(() {
          isHover = value;
        });
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(color: Colors.black87,style: BorderStyle.solid,width: 1)
        ),
        height: size.height/1.6,
        width: size.width/4,
        child: Column(
              children: [
                SizedBox(height:size.height/50,),
                CircleAvatar(
                  maxRadius: 50.r,
                  backgroundColor: Colors.lightBlueAccent,
                  backgroundImage: NetworkImage(url),
                ),
                SizedBox(height:size.height/50,),
                Text(title,style: TextStyles.servicesMontserratTextStyle(),),
                SizedBox(height:size.height/35,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(description,style: TextStyles.normalText(),),
                ),
                SizedBox(height:size.height/30,),
                MaterialButton(onPressed: (){
                },color: Colors.lightBlueAccent[100],hoverColor: AppColors.bgColor,child: Text('Reach out ..',style: TextStyles.normalText(),),)
              ],
            ),
      ),
    );

  }
  InkWell buildServiceWidgetMobile(String url,String title,String description) {
    Size size = MediaQuery
        .of(context)
        .size;
    return InkWell(
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(15.r),
            border: Border.all(
                color: Colors.black87, style: BorderStyle.solid, width: 1)
        ),
        height: size.height / 2,
        width: size.width / 1.5,
        child: Column(
          children: [
            SizedBox(height: size.height / 50,),
            CircleAvatar(
              maxRadius: 50.r,
              backgroundColor: Colors.lightBlueAccent,
              backgroundImage: NetworkImage(url),
            ),
            SizedBox(height: size.height / 50,),
            Text(title, style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: 15.sp,
              color: Colors.black,
            ),),
            SizedBox(height: size.height / 35,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(description, style:  GoogleFonts.signikaNegative(
                fontWeight: FontWeight.w500,
                fontSize: 12.sp,
                letterSpacing: 1,
                color: Colors.black54,
              ),),
            ),
            SizedBox(height: size.height / 30,),
            MaterialButton(onPressed: () {
              controller.animateTo(2400.0,
                duration: const Duration(milliseconds: 300),
                curve: Curves.fastOutSlowIn,

              );
            },
              color: Colors.lightBlueAccent[100],
              hoverColor: AppColors.bgColor,
              child: Text('Reach out ..', style:  GoogleFonts.signikaNegative(
                fontWeight: FontWeight.w500,
                fontSize: 10.sp,
                letterSpacing: 1,
                color: Colors.black54,
              ),),)
          ],
        ),
      ),
    );

  }
  InkWell buildServiceWidgetTablet(String url,String title,String description) {
    Size size = MediaQuery
        .of(context)
        .size;
    return InkWell(
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(15.r),
            border: Border.all(
                color: Colors.black87, style: BorderStyle.solid, width: 1)
        ),
        height: size.height / 1.5,
        width: size.width / 2,
        child: Column(
          children: [
            SizedBox(height: size.height / 50,),
            CircleAvatar(
              maxRadius: 30.r,
              backgroundColor: Colors.lightBlueAccent,
              backgroundImage: NetworkImage(url),
            ),
            SizedBox(height: size.height / 50,),
            Text(title, style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: 10.sp,
              color: Colors.black,
            ),),
            SizedBox(height: size.height / 35,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(description, style: GoogleFonts.signikaNegative(
                fontWeight: FontWeight.w500,
                fontSize: 10.sp,
                letterSpacing: 1,
                color: Colors.black54,
              ),),
            ),
            SizedBox(height: size.height / 20,),
            MaterialButton(onPressed: () {
              controller.animateTo(2400.0,
                duration: const Duration(milliseconds: 300),
                curve: Curves.fastOutSlowIn,

              );
            },
              color: Colors.lightBlueAccent[100],
              hoverColor: AppColors.bgColor,
              child: Text('Reach out ..', style: GoogleFonts.signikaNegative(
                fontWeight: FontWeight.w500,
                fontSize: 8.sp,
                letterSpacing: 1,
                color: Colors.black54,
              ),),)
          ],
        ),
      ),
    );
  }
}
