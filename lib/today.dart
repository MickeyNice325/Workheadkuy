import 'package:flutter/material.dart';
import 'profile.dart';
void main() {
  runApp(const TodayPage());
}

class TodayPage extends StatelessWidget {
  const TodayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodayScreen(),
    );
  }
}

class TodayScreen extends StatelessWidget {
  const TodayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Today",
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 16),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/558c1d60-0065-4ce6-bd08-d83ccb573da8-1672016999150.jpg"),
                radius: 20,
              ),
            ),
          ),
        ],

      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "MONDAY, JUNE 20",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                const SizedBox(height: 16),
                TodayCard(
                  imagePath: "assets/images/1_MZcxSSARUkVfSeAwzQ95kw.png",
                  title: "The Flappy Bird Comeback",
                  subtitle: "Now my phone is flapping too… out the window!",
                ),
                const SizedBox(height: 16),
                TodayCard(
                  imagePath: "assets/images/popass(1).jpg",
                  title: "P Toh dance moves hypnotize people! ?",
                  subtitle: "Because he moves like a queen! 👑🕺 ",
                ),
                const SizedBox(height: 16),
                TodayCard(
                  imagePath: "assets/images/images.jpg",
                  title: "Who is Duolingo?",
                  subtitle: "I don't know but it will go to your house.",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TodayCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;

  const TodayCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Image.asset(
            imagePath,
            height: 250,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black.withOpacity(0.1), Colors.black.withOpacity(0.6)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  "WORLD PREMIERE",
                  style: TextStyle(color: Colors.white70, fontSize: 12),
                ),
                const SizedBox(height: 4),
                Text(
                  title,
                  style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(color: Colors.white70, fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

