import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black), // สีของไอคอน back
        titleTextStyle: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage("assets/images/558c1d60-0065-4ce6-bd08-d83ccb573da8-1672016999150.jpg"), // ใช้รูปจาก assets
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Nattapong Wonsaeng", // เปลี่ยนเป็นชื่อผู้ใช้จริง
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "stu66309010040@lannapoly.ac.th", // เปลี่ยนอีเมลเป็นข้อมูลจริง
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Edit Profile"),
              onTap: () {
                // ใส่ฟังก์ชันแก้ไขโปรไฟล์ที่นี่
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              onTap: () {
                // ใส่ฟังก์ชันตั้งค่าที่นี่
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.red),
              title: const Text("Logout", style: TextStyle(color: Colors.red)),
              onTap: () {
                // ใส่ฟังก์ชัน Logout ที่นี่
              },
            ),
          ],
        ),
      ),
    );
  }
}
