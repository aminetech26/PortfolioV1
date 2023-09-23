import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/presentation_layer/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/presentation_layer/screens/FooterPage.dart';
import 'package:portfolio/presentation_layer/screens/about_me.dart';
import 'package:portfolio/presentation_layer/screens/contact.dart';
import 'package:portfolio/presentation_layer/screens/my_services.dart';
import 'package:portfolio/presentation_layer/screens/projects.dart';
import 'dart:html' as html;
import '../constants/text_styles.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:portfolio/presentation_layer/constants/strings.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedButton = 'Home';

  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: LayoutBuilder(builder: (context,constraints) {
        if (constraints.maxWidth>900){
        return SingleChildScrollView(
          controller: controller,
          // padding: EdgeInsets.only(
          //   top: size.height / 100,
          // ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 120),
                height: 60.h,
                width: double.infinity,
                child: Row(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(maxRadius: 20.r,
                          backgroundImage: const NetworkImage(
                              Strings.thirdProfilePicture),),
                        const Text(
                          r'   </Ahmed Amine GUERRAICHE>', style: TextStyle(
                            color: Colors.black87
                        ),),
                      ],
                    ),
                    const Spacer(),
                    TextButton(
                        onPressed: () {
                          controller.animateTo(-2400.0,
                            duration: const Duration(milliseconds: 60),
                            curve: Curves.fastOutSlowIn,
                          );
                        },
                        child: Text('Home',
                          style: TextStyles.customHeaderTextStyle(),)
                    ),
                    SizedBox(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width / 30,
                    ),
                    TextButton(
                        onPressed: () {
                          controller.animateTo(600.0,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.fastOutSlowIn,
                          );
                        },
                        child: Text('About',
                          style: TextStyles.customHeaderTextStyle(),)
                    ),
                    SizedBox(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width / 30,
                    ),
                    TextButton(
                        onPressed: () {
                          controller.animateTo(1160.0,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.fastOutSlowIn,
                          );
                        },
                        child: Text('Services',
                          style: TextStyles.customHeaderTextStyle(),)
                    ),
                    SizedBox(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width / 30,
                    ),
                    TextButton(
                        onPressed: () {
                          controller.animateTo(1800.0,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.fastOutSlowIn,
                          );
                        },
                        child: Text('Projects',
                          style: TextStyles.customHeaderTextStyle(),)
                    ),
                    SizedBox(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width / 30,
                    ),
                    TextButton(
                        onPressed: () {
                          controller.animateTo(2400.0,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.fastOutSlowIn,

                          );
                        },
                        child: Text('Contact',
                          style: TextStyles.customHeaderTextStyle(),)
                    ),
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.only(left: size.width * 0.1, top: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello it\'s me',
                      style: TextStyles.montserratTextStyle(),
                    ),
                    Text(
                      'Ahmed Amine Guerraiche',
                      style: TextStyles.headingStyles(),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'And I\'m a ',
                          style: TextStyles.montserratTextStyle(),
                        ),
                        AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText(
                                'CS Student at ESI Algiers',
                                textStyle: TextStyles
                                    .customMontserratTextStyle()),
                            TyperAnimatedText('UX/UI Designer',
                                textStyle: TextStyles
                                    .customMontserratTextStyle()),
                            TyperAnimatedText('Mobile Apps Developer',
                                textStyle: TextStyles
                                    .customMontserratTextStyle()),
                          ],
                          pause: const Duration(milliseconds: 1000),
                          displayFullTextOnTap: true,
                          stopPauseOnTap: true,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                            height: size.height / 3,
                            width: size.width / 2.9,
                            child: Text(
                              'I\'m a 3rd-year student at the Higher National School of Computer Science, deeply committed to producing reliable software with meticulous code craftsmanship. As a cross-platform mobile developer with a keen eye for UI/UX design, I merge my expertise with a foundation in Desktop App development, offering a comprehensive approach to software artistry. I enjoy turning code into digital masterpieces.',
                              style: TextStyles.normalText(),
                            )),
                        SizedBox(width: size.width / 5,),
                        CircleAvatar(maxRadius: 120.r,
                          backgroundImage: NetworkImage(
                              Strings.profilePicture),),


                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        buildCircleAvatar(
                            'https://img.icons8.com/external-tal-revivo-bold-tal-revivo/48/FFFFFF/external-github-with-cat-logo-an-online-community-for-software-development-logo-bold-tal-revivo.png',
                            'https://github.com/aminetech26'),
                        buildCircleAvatar(
                            'https://img.icons8.com/external-tal-revivo-bold-tal-revivo/24/FFFFFF/external-linkedin-in-logo-used-for-professional-networking-logo-bold-tal-revivo.png',
                            'https://www.linkedin.com/in/guerraiche-ahmed-amine-30b894228/'),
                        buildCircleAvatar(
                            'https://img.icons8.com/ios-glyphs/30/FFFFFF/behance.png',
                            'https://www.behance.net/amine-ied'),
                        buildCircleAvatar(
                            'https://img.icons8.com/glyph-neue/64/FFFFFF/facebook-new.png',
                            'https://www.facebook.com/profile.php?id=100072094756665'),
                        buildCircleAvatar(
                            'https://img.icons8.com/ios-glyphs/30/FFFFFF/instagram-circle.png',
                            'https://www.instagram.com/amine_guerraiche/'),
                      ],
                    ),
                    SizedBox(height: size.height / 20,),
                    FadeInUp(
                      duration: const Duration(seconds: 1),
                      child: MaterialButton(hoverColor: AppColors.bgColor,
                        shape: OutlineInputBorder(borderSide: BorderSide(
                            color: Colors.grey),
                            borderRadius: BorderRadius.circular(5.r)),
                        padding: const EdgeInsets.all(20.0),
                        color: Colors.lightBlueAccent[100],
                        onPressed: () {
                          html.window.open('https://drive.google.com/file/d/1kU0Y2ssn19CkZOr9o8pDaGOhNL2U1jsS/view?usp=sharing', 'Curriculum Vitae');

                        },
                        child: Text('Download Resume',
                          style: TextStyles.normalText(),),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height / 8,),
              const AboutMe(),
              SizedBox(height: size.height / 4.85,),
              const MyServices(),
              SizedBox(height: size.height / 4.85,),
              const MyProjects(),
              SizedBox(height: size.height / 4.85,),
              const ContactPage(),
              SizedBox(height: size.height / 10,),
              const Divider(),
              const FooterPage(),
            ],
          ),
        );}
        else if(constraints.maxWidth > 390 || constraints.maxWidth <= 900){
          return Scaffold(
            backgroundColor: Colors.grey[50],
            drawer: Drawer(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height:size.height/35 ,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(maxRadius: 20.r,
                          backgroundImage: const NetworkImage(
                              Strings.thirdProfilePicture),),
                        const Text(
                          r'   </Ahmed Amine GUERRAICHE>', style: TextStyle(
                            color: Colors.black87
                        ),),
                      ],
                    ),
                    SizedBox(height:size.height/20 ,),
                    Divider(),
                    TextButton(onPressed: (){
                      controller.animateTo(0.0,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.fastOutSlowIn,
                      );
                    }, child: Text('Home',)),
                    Divider(),
                    TextButton(onPressed: (){
                      controller.animateTo(490.0,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.fastOutSlowIn,
                      );
                    }, child: Text('About')),
                    Divider(),
                    TextButton(onPressed: (){
                      controller.animateTo(940.0,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.fastOutSlowIn,
                      );
                    }, child: Text('Services')),
                    Divider(),
                    TextButton(onPressed: (){
                      controller.animateTo(2250.0,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.fastOutSlowIn,
                      );
                    }, child: Text('Projects')),
                    Divider(),
                    TextButton(onPressed: (){
                      controller.animateTo(3000.0,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.fastOutSlowIn,
                      );
                    }, child: Text('Contact')),
                    Divider(),
                  ],
                ),
              ),
            ),
            appBar: AppBar(
              backgroundColor: Colors.grey[50],
              iconTheme: const IconThemeData(color: Colors.lightBlue),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(maxRadius: 20.r,
                    backgroundImage: const NetworkImage(
                        Strings.thirdProfilePicture),),
                  Text(
                    r'    </Ahmed Amine GUERRAICHE>', style: TextStyle(
                    fontSize: 15.sp,
                    color: Colors.black87,
                    fontWeight: FontWeight.w800,
                  ),),
                ],
              ),
            ),
            body: SingleChildScrollView(
              controller: controller,
              child: Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 50.w,),
                      child: Text(
                        'Hello it\'s me',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 50.w),
                      child: Text(
                        'Ahmed Amine Guerraiche',
                        style: GoogleFonts.rubikMoonrocks(
                          fontWeight: FontWeight.w800,
                          fontSize: 15.sp,
                          letterSpacing: 2,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 50.w),
                      child: Text(
                        'And I\'m a ',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 50.w),
                      height: 40.h,
                      width: double.infinity,
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText(
                              'CS Student at ESI Algiers',
                              textStyle: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.sp,
                                color: Colors.lightBlueAccent,
                              )),
                          TyperAnimatedText('UX/UI Designer',
                              textStyle: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.sp,
                                color: Colors.lightBlueAccent,
                              )),
                          TyperAnimatedText('Mobile Apps Developer',
                              textStyle: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.sp,
                                color: Colors.lightBlueAccent,
                              )),
                        ],
                        pause: const Duration(milliseconds: 1000),
                        displayFullTextOnTap: true,
                        stopPauseOnTap: true,
                        repeatForever: true,
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 50.w),
                        height: size.height / 4.5,
                        width: size.width / 1.1,
                        child: Text(
                          'I\'m a 3rd-year student at the Higher National School of Computer Science, deeply committed to producing reliable software with meticulous code craftsmanship. As a cross-platform mobile developer with a keen eye for UI/UX design, I merge my expertise with a foundation in Desktop App development, offering a comprehensive approach to software artistry.',
                          style: GoogleFonts.signikaNegative(
                            fontWeight: FontWeight.w500,
                            fontSize: 8.sp,
                            letterSpacing: 1,
                            color: Colors.black54,
                          ),
                        )),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 80.w,bottom: 10.h),
                          child: CircleAvatar(maxRadius: 50.r,
                            backgroundImage: NetworkImage(
                                Strings.profilePicture),),
                        ),SizedBox(width: size.width/20,),
                        Padding(
                          padding: EdgeInsets.only(left: 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              buildCircleAvatar(
                                  'https://img.icons8.com/external-tal-revivo-bold-tal-revivo/48/FFFFFF/external-github-with-cat-logo-an-online-community-for-software-development-logo-bold-tal-revivo.png',
                                  'https://github.com/aminetech26'),
                              buildCircleAvatar(
                                  'https://img.icons8.com/external-tal-revivo-bold-tal-revivo/24/FFFFFF/external-linkedin-in-logo-used-for-professional-networking-logo-bold-tal-revivo.png',
                                  'https://www.linkedin.com/in/guerraiche-ahmed-amine-30b894228/'),
                              buildCircleAvatar(
                                  'https://img.icons8.com/ios-glyphs/30/FFFFFF/behance.png',
                                  'https://www.behance.net/amine-ied'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: size.height / 40,),
                    FadeInUp(
                      duration: const Duration(seconds: 1),
                      child: Padding(
                        padding: EdgeInsets.only(left: 140.w),
                        child: MaterialButton(hoverColor: AppColors.bgColor,
                          shape: OutlineInputBorder(borderSide: BorderSide(
                              color: Colors.grey),
                              borderRadius: BorderRadius.circular(5.r)),
                          padding: const EdgeInsets.all(20.0),
                          color: Colors.lightBlueAccent[100],
                          onPressed: () {
                            html.window.open('https://drive.google.com/file/d/1kU0Y2ssn19CkZOr9o8pDaGOhNL2U1jsS/view?usp=sharing', 'Curriculum Vitae');

                          },
                          child: Text('Download Resume',
                            style: GoogleFonts.signikaNegative(
                              fontWeight: FontWeight.w700,
                              fontSize: 7.sp,
                              letterSpacing: 1,
                              color: Colors.black54,
                            ),),
                        ),
                      ),
                    ),
                    SizedBox(height: size.height / 8,),
                    const AboutMe(),
                    SizedBox(height: size.height / 8,),
                    const MyServices(),
                    SizedBox(height: size.height / 8,),
                    const MyProjects(),
                    SizedBox(height: size.height / 8,),
                    const ContactPage(),
                    SizedBox(height: size.height / 8,),
                    const FooterPage(),
                  ],
                ),
              ),
            ),
          );
        }
        else{
          return Scaffold(
            drawer: Drawer(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height:size.height/35 ,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(maxRadius: 20.r,
                          backgroundImage: const NetworkImage(
                              Strings.thirdProfilePicture),),
                        const Text(
                          r'   </Ahmed Amine GUERRAICHE>', style: TextStyle(
                            color: Colors.black87
                        ),),
                      ],
                    ),
                    SizedBox(height:size.height/20 ,),
                    Divider(),
                    TextButton(onPressed: (){
                      controller.animateTo(0.0,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.fastOutSlowIn,
                      );
                    }, child: Text('Home',)),
                    Divider(),
                    TextButton(onPressed: (){
                      controller.animateTo(720.0,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.fastOutSlowIn,
                      );
                    }, child: Text('About')),
                    Divider(),
                    TextButton(onPressed: (){
                      controller.animateTo(1440.0,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.fastOutSlowIn,
                      );
                    }, child: Text('Services')),
                    Divider(),
                    TextButton(onPressed: (){
                      controller.animateTo(2700.0,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.fastOutSlowIn,
                      );
                    }, child: Text('Projects')),
                    Divider(),
                    TextButton(onPressed: (){
                      controller.animateTo(3000.0,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.fastOutSlowIn,
                      );
                    }, child: Text('Contact')),
                    Divider(),
                  ],
                ),
              ),
            ),
            appBar: AppBar(
              backgroundColor: Colors.grey[50],
              iconTheme: const IconThemeData(color: Colors.lightBlue),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(maxRadius: 20.r,
                    backgroundImage: const NetworkImage(
                        Strings.thirdProfilePicture),),
                   Text(
                    r'    </Ahmed Amine GUERRAICHE>', style: TextStyle(
                     fontSize: 15.sp,
                     color: Colors.black87,
                     fontWeight: FontWeight.w800,
                   ),),
                ],
              ),
            ),
            body: SingleChildScrollView(
              controller: controller,
              child: Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 50.w,),
                      child: Text(
                        'Hello it\'s me',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.sp,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 50.w),
                      child: Text(
                        'Ahmed Amine Guerraiche',
                        style: GoogleFonts.rubikMoonrocks(
                          fontWeight: FontWeight.w800,
                          fontSize: 25.sp,
                          letterSpacing: 2,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 50.w),
                      child: Text(
                        'And I\'m a ',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.sp,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                        Container(
                          padding: EdgeInsets.only(left: 50.w),
                          height: 40.h,
                          width: double.infinity,
                          child: AnimatedTextKit(
                            animatedTexts: [
                              TyperAnimatedText(
                                  'CS Student at ESI Algiers',
                                  textStyle: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.sp,
                                    color: Colors.lightBlueAccent,
                                  )),
                              TyperAnimatedText('UX/UI Designer',
                                  textStyle: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.sp,
                                    color: Colors.lightBlueAccent,
                                  )),
                              TyperAnimatedText('Mobile Apps Developer',
                                  textStyle: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.sp,
                                    color: Colors.lightBlueAccent,
                                  )),
                            ],
                            pause: const Duration(milliseconds: 1000),
                            displayFullTextOnTap: true,
                            stopPauseOnTap: true,
                            repeatForever: true,
                    ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 50.w),
                            height: size.height / 3.5,
                            width: size.width / 1.1,
                            child: Text(
                              'I\'m a 3rd-year student at the Higher National School of Computer Science, deeply committed to producing reliable software with meticulous code craftsmanship. As a cross-platform mobile developer with a keen eye for UI/UX design, I merge my expertise with a foundation in Desktop App development, offering a comprehensive approach to software artistry.',
                              style: GoogleFonts.signikaNegative(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                                letterSpacing: 1,
                                color: Colors.black54,
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 130.w,bottom: 20.h),
                          child: CircleAvatar(maxRadius: 50.r,
                            backgroundImage: NetworkImage(
                                Strings.profilePicture),),
                        ),
                    Padding(
                      padding: EdgeInsets.only(left: 60.w),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          buildCircleAvatar(
                              'https://img.icons8.com/external-tal-revivo-bold-tal-revivo/48/FFFFFF/external-github-with-cat-logo-an-online-community-for-software-development-logo-bold-tal-revivo.png',
                              'https://github.com/aminetech26'),
                          buildCircleAvatar(
                              'https://img.icons8.com/external-tal-revivo-bold-tal-revivo/24/FFFFFF/external-linkedin-in-logo-used-for-professional-networking-logo-bold-tal-revivo.png',
                              'https://www.linkedin.com/in/guerraiche-ahmed-amine-30b894228/'),
                          buildCircleAvatar(
                              'https://img.icons8.com/ios-glyphs/30/FFFFFF/behance.png',
                              'https://www.behance.net/amine-ied'),
                        ],
                      ),
                    ),
                    SizedBox(height: size.height / 40,),
                    FadeInUp(
                      duration: const Duration(seconds: 1),
                      child: Padding(
                        padding: EdgeInsets.only(left: 100.w),
                        child: MaterialButton(hoverColor: AppColors.bgColor,
                          shape: OutlineInputBorder(borderSide: BorderSide(
                              color: Colors.grey),
                              borderRadius: BorderRadius.circular(5.r)),
                          padding: const EdgeInsets.all(20.0),
                          color: Colors.lightBlueAccent[100],
                          onPressed: () {
                            html.window.open('https://drive.google.com/file/d/1kU0Y2ssn19CkZOr9o8pDaGOhNL2U1jsS/view?usp=sharing', 'Curriculum Vitae');

                          },
                          child: Text('Download Resume',
                            style: GoogleFonts.signikaNegative(
                              fontWeight: FontWeight.w700,
                              fontSize: 12.sp,
                              letterSpacing: 1,
                              color: Colors.black54,
                            ),),
                        ),
                      ),
                    ),
                    SizedBox(height: size.height / 8,),
                    const AboutMe(),
                    SizedBox(height: size.height / 8,),
                    const MyServices(),
                    SizedBox(height: size.height / 8,),
                    const MyProjects(),
                    SizedBox(height: size.height / 8,),
                    const ContactPage(),
                    SizedBox(height: size.height / 8,),
                    const FooterPage(),
                  ],
                ),
              ),
            ),
          );

        }

      }),
    );
  }

  FadeInLeft buildCircleAvatar(String path,String myUrl) {
    return FadeInLeft(
      duration: const Duration(seconds: 2),
      child: MaterialButton(hoverColor: Colors.grey[50],onPressed: ()async{
        html.window.open(myUrl, 'Social Media');
      },
      child: CircleAvatar(
    maxRadius: 22.r,
    backgroundColor: Colors.lightBlue,
    child: CircleAvatar(
    maxRadius: 20.r,
    backgroundColor: Colors.lightBlueAccent,
    child: Image.network(path,height: 30,width: 30,),
    ),
      )
    ));
  }
}
