import 'package:catalift_app/components/my_course_card.dart';
import 'package:catalift_app/components/my_courses.dart';
import 'package:flutter/material.dart';

class MyCourseScreen extends StatelessWidget {
  final List<Course> featuredCourses = [
    Course(
      title: "Artificial Intelligence and ML",
      lessons: 15,
      price: "₹1,500",
      imagepath: 'lib/images/AI.jpg',
    ),
    Course(
      title: "User Interface and User Experience",
      lessons: 15,
      price: "₹1,500",
      imagepath: 'lib/images/UI.jpg',
    ),
    Course(
      title: "Computer Engineering",
      lessons: 15,
      price: "₹1,500",
      imagepath: 'lib/images/Computer.jpeg',
    ),
  ];
  MyCourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SizedBox(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children:
                  featuredCourses
                      .map((course) => MyCourseCard(course: course))
                      .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
