import 'package:flutter/material.dart';

class AnnouncementPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, // Set app bar background color to blue
        title: Row(
          children: <Widget>[
            Image.asset(
              'assets/uniquslogo.png', // Set the path to your logo image
              fit: BoxFit.contain,
              height: 32,
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          'No announcement right now',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
