import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html' as html;

import '../../data_layer/project.dart';
import '../constants/colors.dart';
import '../constants/strings.dart';
import '../constants/text_styles.dart';
class MyProjects extends StatefulWidget {
  const MyProjects({Key? key}) : super(key: key);

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  CarouselController buttonCarouselController = CarouselController();
  List<Project> mobileAppsProjects = [Project(title: 'ArchiMind', category: 'Desktop App', description: 'ArchiMind is an immersive tool for CS students to simulate 8086 assembly language execution while supporting step-by-step simulation. It also features quizzes and documentation.', repo_url: 'https://archimind.netlify.app/', url: Strings.archiMind),
    Project(title: 'Accomplish', category: 'Desktop App', description: 'Accomplish is a dekstop planner that simplifies organization, enabling seamless planning, prioritization, and tracking of daily, weekly, and monthly activities.', repo_url: 'https://github.com/aminetech26/Accomplish', url: Strings.accomplish),
  Project(title: 'Instagram UI Clone', category: 'Mobile App', description: 'The "Instagram UI Clone" app replicates the user interface of Instagram, offering a near-identical visual experience to the popular social media platform.', repo_url: 'https://github.com/aminetech26/InstagramUIClone', url: Strings.instagramClone),
  Project(title: 'Madrasati Quraniyah', category: 'Mobile App', description: 'This application is built in order to help Quran teachers in reporting the presence and absence of students as well as to keep their informations.', repo_url: 'https://github.com/aminetech26/StudentManagementSystem', url: Strings.meqApp),
  Project(title: 'To Do App', category: 'Mobile App', description: 'The simple to-do app streamlines task management, allowing users to create and track their to-do lists effortlessly. ', repo_url: 'https://github.com/aminetech26/Flutter_HandsOn/tree/to_do_app_v1', url: Strings.todoApp),
  Project(title: 'Portfolio', category: 'Website', description: 'My personal website, developed using Flutter, serves as a dynamic showcase of my professional work.', repo_url: '', url: Strings.portfolio)];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return LayoutBuilder(
      builder: (context,constraints) {
        if ( constraints.maxWidth > 900 ){
          return Container(
              width: size.width,
              decoration: BoxDecoration(
              ),
              child: Column(
                  children: [
                    Text('My Projects',style: TextStyles.headingStyles(),),
                    SizedBox(height: size.height/20,),
                    CarouselSlider(
                      items : mobileAppsProjects.asMap().entries.map((entry) {
                        final int index = entry.key;
                        final Project project = entry.value;
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MaterialButton(
                                onPressed: () => buttonCarouselController.previousPage(
                                  duration: Duration(seconds: 1),
                                  curve: Curves.linear,
                                ),
                                child: Icon(Icons.navigate_before),
                              ),
                              buildProjectWidget(project), // Pass the individual project to your buildProjectWidget function
                              MaterialButton(
                                onPressed: () => buttonCarouselController.nextPage(
                                  duration: Duration(seconds: 1),
                                  curve: Curves.linear,
                                ),
                                child: Icon(Icons.navigate_next),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                      carouselController: buttonCarouselController,
                      options: CarouselOptions(
                        autoPlay: true,
                        enlargeCenterPage: true,
                        viewportFraction: 0.9,
                        aspectRatio: 3.5,
                        initialPage: 2,
                      ),
                    ),
                  ])
          );
        }
        else if(constraints.maxWidth>390 || constraints.maxWidth <= 900){
          return Column(
              children: [
                Text('My Projects',style: GoogleFonts.rubikMoonrocks(
                  fontWeight: FontWeight.w800,
                  fontSize: 15.sp,
                  letterSpacing: 2,
                  color: Colors.black87,
                ),),
                SizedBox(height: size.height/20,),
                CarouselSlider(
                  items : mobileAppsProjects.asMap().entries.map((entry) {
                    final int index = entry.key;
                    final Project project = entry.value;
                    return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 0.0),
                        child:
                        buildProjectWidgetTablet(project) // Pass the individual project to your buildProjectWidget functio
                    );
                  }).toList(),
                  carouselController: buttonCarouselController,
                  options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    viewportFraction: 0.9,
                    aspectRatio: 2,
                    initialPage: 2,
                  ),
                ),
              ]);
        }
        else{
         return Column(
             children: [
               Text('My Projects',style: GoogleFonts.rubikMoonrocks(
                 fontWeight: FontWeight.w800,
                 fontSize: 25.sp,
                 letterSpacing: 2,
                 color: Colors.black87,
               ),),
               SizedBox(height: size.height/20,),
               CarouselSlider(
                 items : mobileAppsProjects.asMap().entries.map((entry) {
                   final int index = entry.key;
                   final Project project = entry.value;
                   return Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 0.0),
                     child:
                         buildProjectWidgetMobile(project) // Pass the individual project to your buildProjectWidget functio
                     );
                 }).toList(),
                 carouselController: buttonCarouselController,
                 options: CarouselOptions(
                   autoPlay: true,
                   enlargeCenterPage: true,
                   viewportFraction: 0.9,
                   aspectRatio: 0.8,
                   initialPage: 2,
                 ),
               ),
             ]);
        }
      }
    );
  }

  Container buildProjectWidget(Project project) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 10,top: 30.h),
                height: size.height/1.8,
                width: size.width/3.8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                          Text('Project name : ',style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),),
                          Text('${project.title}')
                        ],),
                         Row(children: [
                          Text('Category : ',style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),),
                          Text(project.category)
                        ],),
                        Row(children: [
                          Flexible(
                            child: RichText(text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Description : ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )
                                ),
                                TextSpan(
                                  text: project.description,
                                )
                              ],
                            )),
                          )
                      ],
                    ),
                    SizedBox(height: size.height/40,),
                    MaterialButton(padding: const EdgeInsets.all(8.0),onPressed: (){
                      html.window.open(project.repo_url, 'Social Media');
                    },child: Text('See Project',style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 3.sp,
                    ),),color:Colors.lightBlueAccent),
                  ],
                ),
              ),
              SizedBox(width: size.width/20,),
              Container(
                height: size.height/2,
                width: size.width/4,
                child: ClipRRect(
                  child: Image(image: AssetImage(project.url),fit: BoxFit.fill,),
                ),
              )
            ],
          ),
    );
  }
  Container buildProjectWidgetMobile(Project project) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        border: Border.all(color : Colors.black87,width: 1.0),

      ),
      width: size.width/1.2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: size.height/4,
            width: size.width/2,
            child: ClipRRect(
              child: Image(image: AssetImage(project.url),fit: BoxFit.fill,),
            ),
          ),
          SizedBox(height: size.height/20,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(text: TextSpan(children: [
                TextSpan(text: 'Project title : ',style: TextStyle(
                  fontWeight: FontWeight.w600,
                )),
                TextSpan(text: '${project.title}'),
              ])),
              RichText(text: TextSpan(children: [
              TextSpan(text: 'Project category : ',style:TextStyle(
                fontWeight: FontWeight.w600,
              )),
              TextSpan(text: '${project.category}'),
              ]
              )),
            ],
          ),
          SizedBox(height: size.height/40,),
          MaterialButton(padding: const EdgeInsets.all(8.0),onPressed: (){
            html.window.open(project.repo_url, 'Social Media');
          },child: Text('See Project',style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 10.sp,
          ),),color:Colors.lightBlueAccent),
        ],
      ),
    );
  }
  Container buildProjectWidgetTablet(Project project) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        border: Border.all(color : Colors.black87,width: 1.0),

      ),
      width: size.width/1.2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: size.height/3.5,
            width: size.width/3,
            child: ClipRRect(
              child: Image(image: AssetImage(project.url),fit: BoxFit.fill,),
            ),
          ),
          SizedBox(height: size.height/20,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(text: TextSpan(children: [
                TextSpan(text: 'Project title : ',style: TextStyle(
                  fontWeight: FontWeight.w600,
                )),
                TextSpan(text: '${project.title}'),
              ])),
              RichText(text: TextSpan(children: [
                TextSpan(text: 'Project category : ',style:TextStyle(
                  fontWeight: FontWeight.w600,
                )),
                TextSpan(text: '${project.category}'),
              ]
              )),
            ],
          ),
          SizedBox(height: size.height/40,),
          MaterialButton(padding: const EdgeInsets.all(8.0),onPressed: (){
            html.window.open(project.repo_url, 'Social Media');
          },color:Colors.lightBlueAccent, child: Text('See Project',style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 5.sp,
          ),)),
        ],
      ),
    );
  }
}
