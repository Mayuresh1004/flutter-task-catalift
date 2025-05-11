import 'package:catalift_app/components/my_appBar.dart';
import 'package:catalift_app/components/my_course_card.dart';
import 'package:catalift_app/components/my_courses.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<Course> cartCourses = [
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
    // Add more courses to the cart as needed
  ];

  // Function to calculate total price
  String get totalPrice {
    int total = 0;
    for (var course in cartCourses) {
      total += int.parse(course.price.replaceAll('₹', '').replaceAll(',', ''));
    }
    return "₹$total";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: MyAppbar(),
      ),
      body:
          cartCourses.isEmpty
              ? Center(child: Text("Your cart is empty"))
              : Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Courses in your cart",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF070058),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Expanded(
                      child: ListView.builder(
                        itemCount: cartCourses.length,
                        itemBuilder: (context, index) {
                          return MyCourseCard(course: cartCourses[index]);
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Total Price: ${totalPrice}",
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        // Placeholder for purchase action
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Proceeding to Checkout'),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        iconColor: Colors.blueAccent, // Button color
                        padding: const EdgeInsets.symmetric(
                          vertical: 14.0,
                          horizontal: 32.0,
                        ),
                      ),
                      child: const Text("Proceed to Checkout"),
                    ),
                  ],
                ),
              ),
    );
  }
}
