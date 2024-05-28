// import 'package:flutter/material.dart';

// class CurriculumPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: subjects.length,
//       itemBuilder: (context, index) {
//         return SubjectCard(
//           subject: subjects[index],
//           onTap: () {
//             // Handle onTap action for the subject card
//           },
//         );
//       },
//     );
//   }
// }

// class Subject {
//   final String name;
//   final String description;

//   Subject({required this.name, required this.description});
// }

// class SubjectCard extends StatelessWidget {
//   final Subject subject;
//   final VoidCallback? onTap;

//   const SubjectCard({
//     required this.subject,
//     this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 4.0,
//       margin: EdgeInsets.symmetric(vertical: 8.0),
//       child: InkWell(
//         onTap: onTap,
//         child: Padding(
//           padding: EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 subject.name,
//                 style: TextStyle(
//                   fontSize: 20.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 8.0),
//               Text(
//                 subject.description,
//                 style: TextStyle(fontSize: 16.0),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// // Dummy subject data
// List<Subject> subjects = [
//   Subject(
//     name: 'Mathematics',
//     description: 'This is the mathematics curriculum.',
//   ),
//   Subject(
//     name: 'Science',
//     description: 'This is the science curriculum.',
//   ),
//   // Add more subjects as needed
// ];
import 'package:flutter/material.dart';


class CurriculumPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Curriculum Page',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}