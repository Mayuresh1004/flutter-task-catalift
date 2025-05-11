import 'package:catalift_app/components/my_courses.dart';
import 'package:flutter/material.dart';

class MyCourseCard extends StatelessWidget {
  final Course course;
  const MyCourseCard({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      margin: const EdgeInsets.only(right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: SizedBox(
              width: 160, // Fixed width
              height: 120, // Fixed height
              child: Image.asset(
                course.imagepath,
                fit:
                    BoxFit
                        .cover, // Ensures image covers the entire box without distortion
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "${course.lessons} Lessons",
            style: const TextStyle(fontSize: 12, color: Colors.grey),
          ),
          const SizedBox(height: 4),
          Text(
            course.title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(course.price, style: const TextStyle(color: Colors.green)),
        ],
      ),
    );
  }
}
