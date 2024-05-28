import 'package:flutter/material.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// class Chapter {
//   final String chapterNumber;
//   final String thumbnailUrl;
//   final String youtubeVideoId;

//   Chapter({
//     required this.chapterNumber,
//     required this.thumbnailUrl,
//     required this.youtubeVideoId,
//   });
// }

// class LecturePage extends StatelessWidget {
//   final List<Chapter> chapters = [
//     Chapter(
//       chapterNumber: "Chapter 1",
//       thumbnailUrl: "https://example.com/thumbnail1.jpg",
//       youtubeVideoId: "uW8YT1MOH94",
//     ),
//     Chapter(
//       chapterNumber: "Chapter 2",
//       thumbnailUrl: "https://example.com/thumbnail2.jpg",
//       youtubeVideoId: "uW8YT1MOH94",
//     ),
//     // Add more chapters as needed
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Chapters"),
//       ),
//       body: ListView.builder(
//         itemCount: chapters.length,
//         itemBuilder: (context, index) {
//           final chapter = chapters[index];
//           return YoutubePlayerBuilder(
//             player: YoutubePlayer(
//               controller: YoutubePlayerController(
//                 initialVideoId: chapter.youtubeVideoId,
//                 flags: YoutubePlayerFlags(
//                   autoPlay: false,
//                   mute: false,
//                 ),
//               ),
//               showVideoProgressIndicator: true,
//               progressIndicatorColor: Colors.blueAccent,
//             ),
//             builder: (context, player) {
//               return Column(
//                 children: [
//                   player,
//                   Padding(
//                     padding: EdgeInsets.all(10),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           chapter.chapterNumber,
//                           style: TextStyle(
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         SizedBox(height: 5),
//                         Text(
//                           "Description of the chapter...",
//                           style: TextStyle(fontSize: 14),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }

class LecturePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'LecturePage',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}