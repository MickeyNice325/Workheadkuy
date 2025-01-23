import 'package:flutter/material.dart';

class App3Page extends StatelessWidget {
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
                      "assets/images/hq720.jpg",
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
                          "Roblox How To Become Hacker Man",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Hacker Man",
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    ),
                    child: Text(
                      "\$1.99",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
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
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
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
                      child: Image.asset("assets/images/maxresdefault (2).jpg",
                          fit: BoxFit.cover),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 16),

              // ✅ เพิ่มคำอธิบายแอปด้านล่าง
              Text(
                "About this App",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(height: 8),
              Text(
                "While hacking in Roblox is against the rules and can get your account permanently banned, you can still have fun role-playing as a "
                "Hacker Man"
                " and become the coolest, most mysterious player in your games! Here's how.",
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              SizedBox(height: 16),

              Text(
                "Features",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildFeature("🕶️ Adopt the Hacker Aesthetic"),
                  _buildFeature("💬 Use Hacker Language"),
                  _buildFeature("🕹️ Play Around with Game Features"),
                  _buildFeature("🎮 Create a “Hacker” Avatar or Game"),
                  _buildFeature("🛠️ Offer “Tech Support”"),
                  _buildFeature("⚡ Use Roblox Studio Creatively"),
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
          Expanded(
              child: Text(text,
                  style: TextStyle(fontSize: 16, color: Colors.black))),
        ],
      ),
    );
  }
}
