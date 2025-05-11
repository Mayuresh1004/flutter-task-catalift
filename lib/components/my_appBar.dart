import 'package:flutter/material.dart';

class MyAppbar extends StatelessWidget {
  const MyAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF070058),
      iconTheme: IconThemeData(
        color: Colors.white, // Set the back button color to white
      ),
      elevation: 0,
      title: Row(
        children: [
          Image.asset('lib/images/catalift.png', height: 30),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.person_outline, color: Colors.white70),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications_none, color: Colors.white70),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.chat_bubble_outline, color: Colors.white70),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
