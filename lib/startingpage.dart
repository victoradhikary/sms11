import 'package:flutter/material.dart';
import 'main.dart'; 

class StartingPage extends StatefulWidget {
  @override
  _StartingPageState createState() => _StartingPageState();
}

class _StartingPageState extends State<StartingPage> {
  @override
  void initState() {
    super.initState();
    // Add a delay before navigating to LoginPage
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        color: const Color.fromARGB(255, 243, 244, 245),
        child: Center(
          child: Hero(
            tag: 'uniqus_logo_tag',
            child: Image.asset(
              'assets/uniquslogo.png',
              height: 100,
            ),
          ),
        ),
      ),
    );
  }
}
