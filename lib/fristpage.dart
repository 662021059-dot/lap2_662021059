import 'package:flutter/material.dart';

class Fristpage extends StatelessWidget {
  const Fristpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // เปลี่ยนพื้นหลังเป็นสีเทาอ่อนเพื่อให้เห็นเงาสีขาวได้ชัดขึ้น
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text("Mr. ANAWAT", 
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
            child: Column(
              children: [
                // ส่วนรูปภาพโปรไฟล์ที่ทำให้ดูนูน (Neumorphic Image)
                Container(
                padding: const EdgeInsets.all(12), 
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.shade100,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      blurRadius: 20,
                      offset: const Offset(10, 10),
                    ),
                    const BoxShadow(
                      color: Colors.white,
                      blurRadius: 20,
                      offset: Offset(-10, -10),
                    ),
                  ],
                ),
                child: const CircleAvatar(
                  radius: 85,
                  backgroundColor: Colors.deepPurple,
                  child: CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage("assets/anawat10.jpg"),
                  ),
                ),
              ),
                const SizedBox(height: 30),

                // ชื่อเจ้าของโปรไฟล์
                const Text(
                  "Anawat Salee",
                  style: TextStyle(
                    fontSize: 26, 
                    fontWeight: FontWeight.bold,
                    color: Colors.black87
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  " Student ID 662021059",
                  style: TextStyle(fontSize: 16, color: const Color.fromARGB(255, 146, 144, 144)),
                ),
                const SizedBox(height: 30),

                // กล่องข้อมูลที่กว้างเท่ากันและดูนูน
                _buildNeumorphicCard(Icons.person, "Anawat Salee", Colors.blue.shade50, const Color.fromARGB(255, 0, 0, 0)),
                _buildNeumorphicCard(Icons.cake, "25 March 2005", Colors.orange.shade50, const Color.fromARGB(255, 235, 141, 141)),
                _buildNeumorphicCard(Icons.phone, "0983344524", Colors.green.shade50, const Color.fromARGB(255, 152, 226, 154)),
                _buildNeumorphicCard(Icons.email, "662021059@tsu.ac.th", Colors.red.shade50, const Color.fromARGB(255, 215, 152, 221)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ฟังก์ชันสร้างกล่อง Neumorphic แบบกำหนดความกว้างคงที่
  Widget _buildNeumorphicCard(IconData icon, String text, Color bgColor, Color iconColor) {
    return Container(
      width: 320, // กำหนดความกว้างให้เท่ากันทุกกล่อง
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(5, 5),
          ),
          const BoxShadow(
            color: Colors.white,
            blurRadius: 10,
            offset: Offset(-5, -5),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(icon, color: iconColor),
          const SizedBox(width: 20),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}