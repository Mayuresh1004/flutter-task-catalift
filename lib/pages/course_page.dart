import 'package:catalift_app/components/my_appBar.dart';
import 'package:catalift_app/components/my_course_card.dart';
import 'package:catalift_app/components/my_courses.dart';
import 'package:flutter/material.dart';

class CoursePage extends StatelessWidget {
  final List<Course> allCourses = [
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

  CoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: MyAppbar(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Explore Courses',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Color(0xFF070058),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: allCourses.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: MyCourseCard(course: allCourses[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
