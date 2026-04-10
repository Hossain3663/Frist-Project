# Frist-Project
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            profileCard(),
            SizedBox(height: 20),
            interestsSection(),
          ],
        ),
      ),
    );
  }

  // 🔷 PROFILE CARD
  Widget profileCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 4,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                "https://i.pravatar.cc/150?img=3",
              ),
            ),
            SizedBox(height: 10),
            Text("John Doe",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Text("Flutter Developer",
                style: TextStyle(color: Colors.grey)),
            SizedBox(height: 10),
            Text(
              "Passionate about creating user-friendly and engaging digital experiences.",
              textAlign: TextAlign.center,
            ),
            Divider(height: 20),

            // Contact Info
            Row(
              children: [
                Icon(Icons.email, size: 18),
                SizedBox(width: 8),
                Text("john.doe@example.com"),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.phone, size: 18),
                SizedBox(width: 8),
                Text("+123 456 7890"),
              ],
            ),

            SizedBox(height: 15),

            // Buttons
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Follow"),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text("Message"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  // 🔷 INTEREST SECTION
  Widget interestsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Interests",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),

        Row(
          children: [
            Expanded(
              child: interestCard(
                "Travel",
                "Exploring new places around the world",
                "https://images.unsplash.com/photo-1507525428034-b723cf961d3e",
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: interestCard(
                "Photography",
                "Capturing moments through the lens",
                "https://images.unsplash.com/photo-1519183071298-a2962eadc6e5",
              ),
            ),
          ],
        ),
      ],
    );
  }

  // 🔷 INTEREST CARD
  Widget interestCard(String title, String subtitle, String imageUrl) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            child: Image.network(
              imageUrl,
              height: 100,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                SizedBox(height: 5),
                Text(subtitle,
                    style: TextStyle(fontSize: 12, color: Colors.grey)),
                SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text("View More"),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
