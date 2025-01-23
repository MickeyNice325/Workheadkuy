import 'package:flutter/material.dart';
import 'profile.dart';
import 'app1.dart'; 
import 'app2.dart'; 
import 'app3.dart'; 
import 'app4.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppPage(),
    );
  }
}

class AppPage extends StatelessWidget {
  final List<Map<String, String>> apps = [
    {
      "rank": "1",
      "name": "Duolingo Sigma Version",
      "price": "\$39.99",
      "category": "Learn or Die",
      "image": "assets/images/duolingo-language-lessons-2024-01-10.png"
    },
    {
      "rank": "2",
      "name": "Lottery Hint",
      "price": "\$0.99",
      "category": "To day rich To day rich",
      "image": "assets/images/unnamed.jpg"
    },
    {
      "rank": "3",
      "name": "Roblox How To Become Hacker Man",
      "price": "\$1.99",
      "category": "Hacker Man",
      "image": "assets/images/hq720.jpg"
    },
    {
      "rank": "4",
      "name": "4399",
      "price": "Free",
      "category": "China game",
      "image": "assets/images/76af763c9cfc48ee2c259243d03bf59c072d4b54c8a8c64fa36ae747c0e380bf_100.png"
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => App1Page()));
                } else if (index == 1) { 
                  Navigator.push(context, MaterialPageRoute(builder: (context) => App2Page()));
                } else if (index == 2) { 
                  Navigator.push(context, MaterialPageRoute(builder: (context) => App3Page()));
                }else if (index == 3) { 
                  Navigator.push(context, MaterialPageRoute(builder: (context) => App4Page()));
                }
              },
            ),
          );
        },
      ),
    );
  }
}
