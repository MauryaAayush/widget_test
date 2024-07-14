// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../provider/twiterProvider.dart';
//
// class ViewScreen extends StatefulWidget {
//   const ViewScreen({super.key});
//
//   @override
//   State<ViewScreen> createState() => _ViewScreenState();
// }
//
// class _ViewScreenState extends State<ViewScreen> {
//
//   @override
//   void initState() {
//     super.initState();
//     Provider.of<PostProvider>(context, listen: false).loadPostData();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('View Data'),
//       ),
//       body: Center(
//         child: Consumer<PostProvider>(
//           builder: (context, postProvider, child) {
//             if (postProvider.postResponse == null) {
//               return CircularProgressIndicator(); // Show a loading indicator while data is being fetched
//             }
//             if (postProvider.postResponse!.posts.isEmpty) {
//               return Text('No data available');
//             }
//             return ListView.builder(
//               itemCount: postProvider.postResponse?.posts.length ?? 0,
//               itemBuilder: (context, index) {
//                 final post = postProvider.postResponse?.posts[index];
//                 if (post == null) {
//                   return SizedBox
//                       .shrink(); // Return an empty widget if the post is null
//                 }
//                 return ListTile(
//                   title: Text(post.title), // Display the title instead of body
//                   subtitle: Text(post.body),
//                 );
//               },
//             );
//           },
//         ),
//       ),
//     );
//   }
//
//
// }


import 'dart:convert';
import 'package:flutter/material.dart';

import '../model/data_model.dart';


class UserPostsScreen extends StatelessWidget {
  final String jsonString = '''
  {
    "posts": [
      {
        "id": 1,
        "title": "His mother had always taught him",
        "body": "His mother had always taught him not to ever think of himself as better than others. He'd tried to live by this motto. He never looked down on those who were less fortunate or who had less money than him. But the stupidity of the group of people he was talking to made him change his mind.",
        "tags": ["history", "american", "crime"],
        "reactions": {"likes": 192, "dislikes": 25},
        "views": 305,
        "userId": 121
      },
      {
        "id": 2,
        "title": "He was an expert but not in a discipline",
        "body": "He was an expert but not in a discipline that anyone could fully appreciate. He knew how to hold the cone just right so that the soft server ice-cream fell into it at the precise angle to form a perfect cone each and every time. It had taken years to perfect and he could now do it without even putting any thought behind it.",
        "tags": ["french", "fiction", "english"],
        "reactions": {"likes": 859, "dislikes": 32},
        "views": 4884,
        "userId": 91
      },
      {
        "id": 3,
        "title": "Dave watched as the forest burned up on the hill.",
        "body": "Dave watched as the forest burned up on the hill, only a few miles from her house. The car had been hastily packed and Marta was inside trying to round up the last of the pets. Dave went through his mental list of the most important papers and documents that they couldn't leave behind. He scolded himself for not having prepared these better in advance and hoped that he had remembered everything that was needed. He continued to wait for Marta to appear with the pets, but she still was nowhere to be seen.",
        "tags": ["magical", "history", "french"],
        "reactions": {"likes": 1448, "dislikes": 39},
        "views": 4152,
        "userId": 16
      }
    ],
    "total": 251,
    "skip": 0,
    "limit": 30
  }
  ''';

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> userMap = json.decode(jsonString);
    final userJson = UserJson.fromJson(userMap);

    return ListView.builder(
      itemCount: userJson.posts.length,
      itemBuilder: (context, index) {
        final post = userJson.posts[index];
        return ListTile(
          title: Text(post.title),
          subtitle: Text(post.body),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Likes: ${post.reactions.likes}'),
              Text('Dislikes: ${post.reactions.dislikes}'),
              Text('Views: ${post.views}'),
            ],
          ),
        );
      },
    );
  }
}

