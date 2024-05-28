import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, // Set app bar background color to blue
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/uniquslogo.png', // Set the path to your logo image
              fit: BoxFit.contain,
              height: 32,
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.edit, color: Colors.black), // Edit icon
            onPressed: () {
              // Handle edit icon tap
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: double.infinity, // Set width to match the screen width
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10.0),
          ),
          padding: EdgeInsets.all(24.0), // Increased padding for the card content
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Student ID',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 24.0),
              Text(
                'Name: Abhay',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 12.0),
              Text(
                'Class: 10th',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 12.0),
              Text(
                'Section: A',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 12.0),
              // You can add more details as needed
            ],
          ),
        ),
      ),
    );
  }
}
