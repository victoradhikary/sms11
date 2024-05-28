import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample Tests'),
      ),
      body: Column(
        children: [
          Text('Chapter 1'),
          _buildTestListItem('Sample_Test_1', '0', 'Average', '2024-02-23'),
          _buildTestListItem('Sample_Test_1', '0', 'Average', '2024-02-25'),
          _buildTestListItem('Sample_Test_1', '0', 'Average', '2024-02-23'),
          Text('Chapter 2'),
          _buildTestListItem('Sample_Test_1', '0', 'Average', '2024-02-25'),
          _buildTestListItem('Sample_Test_1', '0', 'Average', '2024-02-23'),
          _buildTestListItem('Sample_Test_1', '0', 'Average', '2024-02-23'),
        ],
      ),
    );
  }

  Widget _buildTestListItem(String title, String marks, String performance, String posted) {
    return Row(
      children: [
        Text(title),
        Spacer(),
        Text(marks),
        Text(performance),
        Text(posted),
      ],
    );
  }
}

