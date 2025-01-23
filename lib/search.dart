import 'package:flutter/material.dart';
import 'package:flutter_application_1/app1.dart';
import 'package:flutter_application_1/game2.dart';
import 'package:flutter_application_1/game3.dart';
import 'profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SearchPage(),
    );
  }
}

class SearchPage extends StatelessWidget {
  final List<Map<String, String>> suggestedApps = [
    {
      "name": "Duolingo Sigma Version",
      "description": "Learn or Die",
      "icon": "assets/images/duolingo-language-lessons-2024-01-10.png"
    },
    {
      "name": "Shaco The Game",
      "description": "no flash",
      "icon": "assets/images/a.png"
    },
    {
      "name": "My Femboy Roommate",
      "description": "Gay!",
      "icon": "assets/images/header.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.grey[200], // สีพื้นหลังของช่องค้นหา
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Icon(Icons.search, color: Colors.grey),
              SizedBox(width: 8),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Games, Apps, Stories, and More",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
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
                backgroundImage: AssetImage(
                    "assets/images/558c1d60-0065-4ce6-bd08-d83ccb573da8-1672016999150.jpg"),
                radius: 20,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Text(
              "Discover",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            _buildDiscoverItem("video editor"),
            _buildDiscoverItem("games for kids"),
            _buildDiscoverItem("sleep sounds"),
            _buildDiscoverItem("puzzle games"),
            SizedBox(height: 16),
            Text(
              "Suggested",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: suggestedApps.length,
                itemBuilder: (context, index) {
                  final app = suggestedApps[index];
                  return _buildAppCard(context, app);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAppCard(BuildContext context, Map<String, String> app) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 8),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          app["icon"]!,
          width: 50,
          height: 50,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return Icon(Icons.error, size: 50, color: Colors.red);
          },
        ),
      ),
      title: Text(app["name"]!, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(app["description"]!),
      trailing: TextButton(
        onPressed: () {
          if (app["name"] == "Duolingo Sigma Version") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => App1Page()),
            );
          } else if (app["name"] == "Shaco The Game") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Game3Page()),
            );
          } else if (app["name"] == "My Femboy Roommate") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Game2Page()),
            );
          }
        },
        style: TextButton.styleFrom(
          backgroundColor: Colors.blueAccent,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        child: Text("View", style: TextStyle(color: Colors.white)),
      ),
    );
  }

  Widget _buildDiscoverItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Text(
        text,
        style: TextStyle(fontSize: 16, color: Colors.blue),
      ),
    );
  }
}
