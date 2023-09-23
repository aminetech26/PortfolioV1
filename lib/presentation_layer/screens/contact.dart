import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/presentation_layer/constants/strings.dart';
import '../constants/colors.dart';
import '../constants/text_styles.dart';
import 'dart:html' as html;
class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
      return LayoutBuilder(
        builder:(context,constraints) {
          if(constraints.maxWidth>900){
            return Container(
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Contact Me',style: TextStyles.headingStyles(),),
                  SizedBox(height: size.height/10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.phone),
                          Text('  +213 796354801',style: TextStyle(
                              fontWeight: FontWeight.w700
                          ),)
                        ],
                      ),
                      CircleAvatar(
                        maxRadius: 40.r,
                        backgroundImage: AssetImage(Strings.profilePicture),
                      ),
                      Row(
                        children: [
                          Icon(Icons.mail),
                          Text('  la_guerraiche@esi.dz',style: TextStyle(
                              fontWeight: FontWeight.w700
                          ),)
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: size.height/10,),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      buildCircleAvatar('https://img.icons8.com/external-tal-revivo-bold-tal-revivo/24/FFFFFF/external-linkedin-in-logo-used-for-professional-networking-logo-bold-tal-revivo.png','https://www.linkedin.com/in/guerraiche-ahmed-amine-30b894228/'),
                      buildCircleAvatar('https://img.icons8.com/glyph-neue/64/FFFFFF/facebook-new.png','https://www.facebook.com/profile.php?id=100072094756665'),
                      buildCircleAvatar('https://img.icons8.com/ios-glyphs/30/FFFFFF/instagram-circle.png','https://www.instagram.com/amine_guerraiche/'),
                    ],
                  ),
                ],
              ),
            );
          }
          else if (constraints.maxWidth > 428 && constraints.maxWidth<=900){
            return Container(
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Contact Me',style: GoogleFonts.rubikMoonrocks(
                    fontWeight: FontWeight.w800,
                    fontSize: 15.sp,
                    letterSpacing: 2,
                    color: Colors.black87,
                  ),),
                  SizedBox(height: size.height/20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.phone),
                          Text('  +213 796354801',style: TextStyle(
                              fontWeight: FontWeight.w700
                          ),)
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.mail),
                          Text('  la_guerraiche@esi.dz',style: TextStyle(
                              fontWeight: FontWeight.w700
                          ),)
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: size.height/30,),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      buildCircleAvatar('https://img.icons8.com/external-tal-revivo-bold-tal-revivo/24/FFFFFF/external-linkedin-in-logo-used-for-professional-networking-logo-bold-tal-revivo.png','https://www.linkedin.com/in/guerraiche-ahmed-amine-30b894228/'),
                      buildCircleAvatar('https://img.icons8.com/glyph-neue/64/FFFFFF/facebook-new.png','https://www.facebook.com/profile.php?id=100072094756665'),
                      buildCircleAvatar('https://img.icons8.com/ios-glyphs/30/FFFFFF/instagram-circle.png','https://www.instagram.com/amine_guerraiche/'),
                    ],
                  ),
                ],
              ),
            );
          }
          else {
            return Container(
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Contact Me',style: GoogleFonts.rubikMoonrocks(
                    fontWeight: FontWeight.w800,
                    fontSize: 25.sp,
                    letterSpacing: 2,
                    color: Colors.black87,
                  ),),
                  SizedBox(height: size.height/20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.phone),
                          Text('  +213 796354801',style: TextStyle(
                              fontWeight: FontWeight.w700
                          ),)
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.mail),
                          Text('  la_guerraiche@esi.dz',style: TextStyle(
                              fontWeight: FontWeight.w700
                          ),)
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: size.height/30,),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      buildCircleAvatar('https://img.icons8.com/external-tal-revivo-bold-tal-revivo/24/FFFFFF/external-linkedin-in-logo-used-for-professional-networking-logo-bold-tal-revivo.png','https://www.linkedin.com/in/guerraiche-ahmed-amine-30b894228/'),
                      buildCircleAvatar('https://img.icons8.com/glyph-neue/64/FFFFFF/facebook-new.png','https://www.facebook.com/profile.php?id=100072094756665'),
                      buildCircleAvatar('https://img.icons8.com/ios-glyphs/30/FFFFFF/instagram-circle.png','https://www.instagram.com/amine_guerraiche/'),
                    ],
                  ),
                ],
              ),
            );
          }
        },
      );
  }
  FadeInLeft buildCircleAvatar(String path,String myUrl) {
    return FadeInLeft(
        duration: const Duration(seconds: 5),
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
