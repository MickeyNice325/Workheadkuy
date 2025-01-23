import 'package:flutter/material.dart';

class App1Page extends StatelessWidget {
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
                      "assets/images/duolingo-language-lessons-2024-01-10.png",
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
                          "Duolingo Sigma Version",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Learn or Die",
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
                      "\$39.99",
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
                      child: Image.asset("assets/images/sddefault.jpg", fit: BoxFit.cover),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 16),

              // ✅ เพิ่มคำอธิบายแอปด้านล่าง
              Text(
                "About this App",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              SizedBox(height: 8),
              Text(
                "Welcome to Duolingo: Sigma Version, the ultimate grindset language-learning experience for true alphas, sigmas, and hustlers who refuse to be mediocre. Forget casual learning—this is high-stakes, high-reward linguistic domination.",
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
                  _buildFeature("🏋️ Hardcore Language Training – No mercy. No shortcuts. Miss a lesson? Duolingo Owl personally tracks you down."),
                  _buildFeature("🦅 GigaChad Voice Packs – Learn languages with powerful, deep, sigma-approved narration"),
                  _buildFeature("💰 Financial Freedom Mode – Unlock secret lessons on money, investing, and escaping the 9-to-5—all in 10+ languages."),
                  _buildFeature("🔥 Discipline Meter – Skip a day? Lose 5% of your grindset potential. No excuses."),
                  _buildFeature("⚡ Sigma Speedrun Mode – Master a language faster than a corporate drone burns out."),
                  _buildFeature("🎭 NPC Detector – Detect weak beta sentences and eliminate them from your vocabulary."),
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
