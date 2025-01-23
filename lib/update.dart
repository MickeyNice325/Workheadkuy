import 'package:flutter/material.dart';
import 'profile.dart';

class UpdatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Update",
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
      body: Center(child: Text('No update')),
    );
  }
}
