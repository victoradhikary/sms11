import 'package:dapp1/screens/Assignment.dart';
import 'package:dapp1/screens/Curriculum.dart';
import 'package:dapp1/screens/Lectures.dart';
import 'package:dapp1/screens/Test.dart';
import 'package:flutter/material.dart';

import '../profilepage.dart';
import 'datapages/hpdata.dart';

class DetailPage extends StatefulWidget {
  final ClassDetails classDetails;

  DetailPage({required this.classDetails});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  SegBtn selectedSegBtn = SegBtn.Curriculum;
  Widget activeScreen = CurriculumPage(); // Default screen

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/uniquslogo.png',
              fit: BoxFit.contain,
              height: 32,
            ),
            SizedBox(width: 10),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.person, color: Colors.black),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Maths',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.black,
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  ),
                  child: Text('Leave Classroom'),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    child: Center(child: SingleChoice(
                      selectedSegBtn: selectedSegBtn,
                      onSelectionChanged: (SegBtn value) {
                        setState(() {
                          selectedSegBtn = value;
                          // Change the active screen based on the selected segment button
                          switch (selectedSegBtn) {
                            case SegBtn.Curriculum:
                              activeScreen = CurriculumPage();
                              break;
                            case SegBtn.Lectures:
                              activeScreen = LecturePage();
                              break;
                            case SegBtn.Assignment:
                              activeScreen = AssignmentPage();
                              break;
                            case SegBtn.Test:
                              activeScreen = TestPage();
                              break;
                          }
                        });
                      },
                    )),
                  ),
                  Padding(
                    padding: EdgeInsets.all(1),
                    child: activeScreen, // Display the active screen
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

enum SegBtn { Curriculum, Lectures, Assignment, Test }

class SingleChoice extends StatelessWidget {
  final SegBtn selectedSegBtn;
  final ValueChanged<SegBtn> onSelectionChanged;

  const SingleChoice({
    required this.selectedSegBtn,
    required this.onSelectionChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 1.0),
      width: MediaQuery.of(context).size.width * 10.0, // Adjust width as needed
      height: 40.0, // Adjust height as needed
      child: Row(
        children: SegBtn.values.map((segBtn) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                onSelectionChanged(segBtn);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: selectedSegBtn == segBtn ? Colors.blue : Colors.white,
                  borderRadius: BorderRadius.circular(0.0),
                  border: Border.all(
                    color: selectedSegBtn == segBtn ? Colors.blue : Colors.grey,
                    width: 1.0,
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Center(
                  child: Text(
                    _enumToString(segBtn),
                    style: TextStyle(
                      color: selectedSegBtn == segBtn ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  String _enumToString(SegBtn segBtn) {
    switch (segBtn) {
      case SegBtn.Curriculum:
        return 'Curriculum';
      case SegBtn.Lectures:
        return 'Lectures';
      case SegBtn.Assignment:
        return 'Assignment';
      case SegBtn.Test:
        return 'Test';
    }
  }
}
