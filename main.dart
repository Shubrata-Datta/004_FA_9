import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IDCardScreen(),
    );
  }
}
class IDCardScreen extends StatelessWidget {
  const IDCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE6E0E3),
      appBar: AppBar(
        title: Text("Digital ID Card"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        elevation: 0,
      ),
      body: Center(
        child: Card(
          elevation: 6,
          margin: EdgeInsets.all(16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                // Profile Image
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,//outer circle color
                  child: ClipOval( //this keeps the image circular
                    child: Image.asset(
                      'assets/images/profile.jpg',
                      fit: BoxFit.contain,
                      width: 100,
                      height: 100,
                      
                    ),  
                  ),
                ),

                SizedBox(height: 12),

                // Name
                Text(
                  "Shubrata Datta",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                // Department
                Text(
                  "Batch: 63rd, Department of CSE",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[700],
                  ),
                ),

                SizedBox(height: 10),
                Divider(),

                // ID
                ListTile(
                  leading: Icon(Icons.person_outline),
                  title: Text("ID:0182410012101004"),
                ),

                // Email
                ListTile(
                  leading: Icon(Icons.email_outlined),
                  title: Text("shubratadatta529@gmail.com"),
                ),

                // Phone
                ListTile(
                  leading: Icon(Icons.phone_outlined),
                  title: Text("+8801409326676"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}