import 'package:flutter/material.dart';

class Game1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ชื่อแอป และรายละเอียด
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      "assets/images/unnamed.png",
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Subway Surfers 3",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Run or Die!",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  // ปุ่ม GET
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    ),
                    child: Text(
                      "\$9.99",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),

              // คะแนนแอป
              Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow, size: 18),
                  Icon(Icons.star, color: Colors.yellow, size: 18),
                  Icon(Icons.star, color: Colors.yellow, size: 18),
                  Icon(Icons.star_half, color: Colors.yellow, size: 18),
                  Icon(Icons.star_border, color: Colors.yellow, size: 18),
                  SizedBox(width: 8),
                  Text(
                    "3.5 • 73 Ratings",
                    style: TextStyle(color: Colors.black),
                  ),
                  Spacer(),
                  Text(
                    "17+",
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              SizedBox(height: 16),

              // ภาพตัวอย่างแอป
              Container(
                height: 350,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset("assets/images/newscms_thaihealth_c_adegnpux4569.jpg", fit: BoxFit.cover),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset("assets/images/maxresdefault.jpg", fit: BoxFit.cover),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 16),

              // ✅ เพิ่มคำอธิบายแอปด้านล่าง
              Text(
                "About this game",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              SizedBox(height: 8),
              Text(
                "Subway Surfers 3 is the ultimate endless runner game where you must dodge obstacles, escape the guards, and collect coins. "
                "Join the adventure and test your reflexes in this fast-paced action game!",
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              SizedBox(height: 16),

              Text(
                "Features",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildFeature("🌟 Exciting gameplay with stunning graphics"),
                  _buildFeature("🏃‍♂️ Endless running and fun challenges"),
                  _buildFeature("💰 Collect coins and unlock new characters"),
                  _buildFeature("🔥 Compete with friends on the leaderboard"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ฟังก์ชันช่วยสร้างรายการ Feature
  Widget _buildFeature(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Icon(Icons.check_circle, color: Colors.green, size: 20),
          SizedBox(width: 8),
          Expanded(child: Text(text, style: TextStyle(fontSize: 16, color: Colors.black))),
        ],
      ),
    );
  }
}
