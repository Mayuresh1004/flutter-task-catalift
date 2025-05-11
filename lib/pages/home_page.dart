import 'package:catalift_app/components/my_appBar.dart';
import 'package:catalift_app/components/my_bottom_bar.dart';
import 'package:catalift_app/components/my_category_filter.dart';
import 'package:catalift_app/components/my_course_screen.dart';
import 'package:catalift_app/components/my_search_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: MyAppbar(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(
            bottom: 16,
          ), // for a bit of spacing above bottom nav
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Row
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: const Icon(
                            Icons.arrow_back_ios_new,
                            size: 32,
                            color: Color(0xFF070058),
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          'Courses',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF070058),
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.black87,
                      ),
                      onPressed:
                          () => Navigator.pushNamed(context, '/cart_page'),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),
              MySearchBar(),
              const SizedBox(height: 20),

              // Featured Section
              const Padding(
                padding: EdgeInsets.only(left: 17.0, bottom: 10),
                child: Text("Featured For You", style: TextStyle(fontSize: 20)),
              ),
              SizedBox(height: 220, child: MyCourseScreen()),

              const SizedBox(height: 20),
              MyCategoryFilter(),
              const SizedBox(height: 20),

              SizedBox(height: 220, child: MyCourseScreen()),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MyBottomBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
