import 'package:flutter/material.dart';
import 'profile.dart';
import 'game1.dart'; // ✅ นำเข้า game1.dart
import 'game2.dart'; // ✅ นำเข้า game2.dart
import 'game3.dart'; // ✅ นำเข้า game3.dart

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GamePage(),
    );
  }
}

class GamePage extends StatelessWidget {
  final List<Map<String, String>> apps = [
    {
      "rank": "1",
      "name": "Subway Surfers 3",
      "price": "\$9.99",
      "category": "Run or Die",
      "image": "assets/images/unnamed.png"
    },
    {
      "rank": "2",
      "name": "My Femboy Roommate",
      "price": "\$9.99",
      "category": "Gay!",
      "image": "assets/images/header.jpg"
    },
    {
      "rank": "3",
      "name": "Shaco The Game",
      "price": "\$4.99",
      "category": "no flash ",
      "image": "assets/images/a.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Top Charts",
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
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
      body: ListView.builder(
        itemCount: apps.length,
        itemBuilder: (context, index) {
          final app = apps[index];

          return Card(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ListTile(
              leading: Image.asset(
                app["image"]!,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              title: Text(app["name"]!, style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(app["category"]!),
              trailing: Text(app["price"]!, style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
              onTap: () {
                if (index == 0) { 
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Game1Page()));
                } else if (index == 1) { 
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Game2Page()));
                } else if (index == 2) { 
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Game3Page()));
                }
              },
            ),
          );
        },
      ),
    );
  }
}
