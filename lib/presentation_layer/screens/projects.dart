import 'package:flutter/material.dart' hide CarouselController;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../data_layer/project.dart';
import '../constants/strings.dart';
import '../constants/text_styles.dart';
import 'dart:html' as html;
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyProjects extends StatefulWidget {
  const MyProjects({Key? key}) : super(key: key);

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  CarouselSliderController buttonCarouselController =
      CarouselSliderController();
  List<Project> mobileAppsProjects = [
    Project(
        title: 'ZST Ecommerce',
        category: 'Mobile App',
        description:
            'Contributed to the development of a multi-vendor e-commerce platform by building the mobile application using Flutter, integrated with an Odoo-based backend. Worked within a team of four to deliver a user-friendly, cross-platform app for both iOS and Android. Worked on key features including: product listing, feed scrolling with short video reels for product showcasing, a review and rating system, and a user profile management section.',
        repo_url:
            'https://play.google.com/store/apps/details?id=com.zst.app.mobile',
        url: Strings.zst),
    Project(
        title: 'Flow AI',
        category: 'Web App',
        description:
            'a web application to automate the creation of workflows from operational procedure documents in PDF format using AI and OCR technology. The system integrated large language models (LLMs) and OCR to streamline document processing, reducing the time required for manual workflow creation from weeks to hours. This solution enabled real-time validation and configuration of GED (Electronic Document Management) solutions for clients, significantly increasing operational efficiency and minimizing the need for multiple iterations.',
        repo_url: '',
        url: Strings.flowAI),
    Project(
        title: 'Truth Finder',
        category: 'Web App',
        description:
            'TruthFinder is a scientific article search engine developed by a team of six people as part of the IGL module. My primary role in this project was to design and implement the scraping process.For this, I used tools such as GROBID and regular expressions. Additionally, I worked on deploying the solution using Docker to ensure its portability and ease of production deployment.',
        repo_url: 'https://github.com/khaledbenmachiche/ScholarFinder-Backend',
        url: Strings.truthFinder),
    Project(
        title: 'CSE Organisers App',
        category: 'Mobile App',
        description:
            'An application designed for the ESI Scientific Club – CSE, aimed at simplifying event organization by facilitating task management, participant check-in, and more. My primary role in this project was to develop the frontend of the application using Flutter. I contributed to creating a user-friendly and efficient interface, providing an optimal user experience when using the application for event planning and management.',
        repo_url: '',
        url: Strings.CSEOrganisersApp),
    Project(
        title: 'Panier Promo',
        category: 'Mobile App',
        description:
            'Panier Promo revolutionizes your way of consuming by providing you with exclusive access to the best current offers. An intuitive application, available on Android and iOS, allows you to discover tempting promotions to optimize shopping experience',
        repo_url: 'https://panierpromo.fr/',
        url: Strings.panierPromo),
    Project(
        title: 'ArchiMind',
        category: 'Desktop App',
        description:
            'ArchiMind is an immersive tool for CS students to simulate 8086 assembly language execution while supporting step-by-step simulation. It also features quizzes and documentation.',
        repo_url: 'https://archimind.netlify.app/',
        url: Strings.archiMind),
    Project(
        title: 'Accomplish',
        category: 'Desktop App',
        description:
            'Accomplish is a dekstop planner that simplifies organization, enabling seamless planning, prioritization, and tracking of daily, weekly, and monthly activities.',
        repo_url: 'https://github.com/aminetech26/Accomplish',
        url: Strings.accomplish),
    Project(
        title: 'Instagram UI Clone',
        category: 'Mobile App',
        description:
            'The "Instagram UI Clone" app replicates the user interface of Instagram, offering a near-identical visual experience to the popular social media platform.',
        repo_url: 'https://github.com/aminetech26/InstagramUIClone',
        url: Strings.instagramClone),
    Project(
        title: 'Madrasati Quraniyah',
        category: 'Mobile App',
        description:
            'This application is built in order to help Quran teachers in reporting the presence and absence of students as well as to keep their informations.',
        repo_url: 'https://github.com/aminetech26/StudentManagementSystem',
        url: Strings.meqApp),
    Project(
        title: 'To Do App',
        category: 'Mobile App',
        description:
            'The simple to-do app streamlines task management, allowing users to create and track their to-do lists effortlessly. ',
        repo_url:
            'https://github.com/aminetech26/Flutter_HandsOn/tree/to_do_app_v1',
        url: Strings.todoApp),
    Project(
        title: 'Portfolio',
        category: 'Website',
        description:
            'My personal website, developed using Flutter, serves as a dynamic showcase of my professional work.',
        repo_url: '',
        url: Strings.portfolio)
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 900) {
        return Container(
            width: size.width,
            decoration: const BoxDecoration(),
            child: Column(children: [
              Text(
                'My Projects',
                style: TextStyles.headingStyles(),
              ),
              SizedBox(
                height: size.height / 20,
              ),
              CarouselSlider(
                items: mobileAppsProjects.asMap().entries.map((entry) {
                  final Project project = entry.value;
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MaterialButton(
                          onPressed: () =>
                              buttonCarouselController.previousPage(
                            duration: const Duration(seconds: 1),
                            curve: Curves.linear,
                          ),
                          child: const Icon(Icons.navigate_before),
                        ),
                        buildProjectWidget(
                            project), // Pass the individual project to your buildProjectWidget function
                        MaterialButton(
                          onPressed: () => buttonCarouselController.nextPage(
                            duration: const Duration(seconds: 1),
                            curve: Curves.linear,
                          ),
                          child: const Icon(Icons.navigate_next),
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
            ]));
      } else if (constraints.maxWidth > 428 && constraints.maxWidth <= 900) {
        return Column(children: [
          Text(
            'My Projects',
            style: GoogleFonts.rubikMoonrocks(
              fontWeight: FontWeight.w800,
              fontSize: 15.sp,
              letterSpacing: 2,
              color: Colors.black87,
            ),
          ),
          SizedBox(
            height: size.height / 20,
          ),
          CarouselSlider(
            items: mobileAppsProjects.asMap().entries.map((entry) {
              final Project project = entry.value;
              return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0.0),
                  child: buildProjectWidgetTablet(
                      project) // Pass the individual project to your buildProjectWidget functio
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
      } else {
        return Column(children: [
          Text(
            'My Projects',
            style: GoogleFonts.rubikMoonrocks(
              fontWeight: FontWeight.w800,
              fontSize: 25.sp,
              letterSpacing: 2,
              color: Colors.black87,
            ),
          ),
          SizedBox(
            height: size.height / 20,
          ),
          CarouselSlider(
            items: mobileAppsProjects.asMap().entries.map((entry) {
              final int index = entry.key;
              final Project project = entry.value;
              return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0.0),
                  child: buildProjectWidgetMobile(
                      project) // Pass the individual project to your buildProjectWidget functio
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
    });
  }

  Container buildProjectWidget(Project project) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.grey[200],
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 10, top: 30.h),
            height: size.height / 1.8,
            width: size.width / 3.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      'Project name : ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(project.title)
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      'Category : ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(project.category)
                  ],
                ),
                Row(
                  children: [
                    Flexible(
                      child: RichText(
                          text: TextSpan(
                        children: [
                          const TextSpan(
                              text: 'Description : ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          TextSpan(
                            text: project.description,
                          )
                        ],
                      )),
                    )
                  ],
                ),
                SizedBox(
                  height: size.height / 40,
                ),
                MaterialButton(
                    padding: const EdgeInsets.all(8.0),
                    onPressed: () {
                      html.window.open(project.repo_url, 'Social Media');
                    },
                    color: Colors.lightBlueAccent,
                    child: Text(
                      'See Project',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 3.sp,
                      ),
                    )),
              ],
            ),
          ),
          SizedBox(
            width: size.width / 20,
          ),
          SizedBox(
            height: size.height / 2,
            width: size.width / 4,
            child: Image.asset(project.url),
          ),
        ],
      ),
    );
  }

  Container buildProjectWidgetMobile(Project project) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        border: Border.all(color: Colors.black87, width: 1.0),
      ),
      width: size.width / 1.2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              height: size.height / 4,
              width: size.width / 2,
              child: Image.asset(project.url)),
          SizedBox(
            height: size.height / 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(children: [
                const TextSpan(
                    text: 'Project title : ',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    )),
                TextSpan(text: project.title),
              ])),
              RichText(
                  text: TextSpan(children: [
                const TextSpan(
                    text: 'Project category : ',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    )),
                TextSpan(text: project.category),
              ])),
            ],
          ),
          SizedBox(
            height: size.height / 40,
          ),
          MaterialButton(
              padding: const EdgeInsets.all(8.0),
              onPressed: () {
                html.window.open(project.repo_url, 'Social Media');
              },
              color: Colors.lightBlueAccent,
              child: Text(
                'See Project',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 10.sp,
                ),
              )),
        ],
      ),
    );
  }

  Container buildProjectWidgetTablet(Project project) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        border: Border.all(color: Colors.black87, width: 1.0),
      ),
      width: size.width / 1.2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              height: size.height / 3.5,
              width: size.width / 3,
              child: Image.asset(project.url)),
          SizedBox(
            height: size.height / 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(children: [
                const TextSpan(
                    text: 'Project title : ',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    )),
                TextSpan(text: project.title),
              ])),
              RichText(
                  text: TextSpan(children: [
                const TextSpan(
                    text: 'Project category : ',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    )),
                TextSpan(text: project.category),
              ])),
            ],
          ),
          SizedBox(
            height: size.height / 40,
          ),
          MaterialButton(
              padding: const EdgeInsets.all(8.0),
              onPressed: () {
                html.window.open(project.repo_url, 'Social Media');
              },
              color: Colors.lightBlueAccent,
              child: Text(
                'See Project',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 5.sp,
                ),
              )),
        ],
      ),
    );
  }
}
