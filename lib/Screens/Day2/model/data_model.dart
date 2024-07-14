// // class DataModel{
// //   List<Post> post = [];
// //   int? total,skip,limit;
// //
// //   DataModel({this.limit,required this.post,this.skip,this.total});
// //
// //   factory DataModel.fromJson(Map json)
// //   {
// //     return DataModel(
// //       limit: json['limit'],
// //       skip: json['skip'],
// //       total: json['total'],
// //
// //       post: json['post'],
// //     );
// //   }
// //
// // }
// //
// // class Post{
// //   int? id,views,userId;
// //   String? title,body;
// //   List tags = [];
// //   Reactions? reactions;
// //
// //   Post({this.reactions,required this.tags,this.id,this.body,this.title,this.userId,this.views});
// //
// //   factory Post.fromJson(Map json)
// //   {
// //     return Post(
// //       title: json['title'],
// //       body: json['body'],
// //       id: json['id'],
// //       reactions: json['reactions'],
// //       tags: json['tags'],
// //       userId: json['userId'],
// //       views: json['views'],
// //     );
// //   }
// //
// // }
// //
// //
// // class Reactions{
// //   int? likes,dislikes;
// //
// //   Reactions({this.dislikes,this.likes});
// //
// //   factory Reactions.fromjson(Map json)
// //   {
// //     return Reactions(
// //       dislikes: json['dislikes'],
// //       likes: json['likes']
// //     );
// //   }
// //
// // }
// //
// // // json['address'] != null ? Address.fromJson(json['address']) : null,
//
//
// class Reaction {
//   final int likes;
//   final int dislikes;
//
//   Reaction({required this.likes, required this.dislikes});
//
//   factory Reaction.fromJson(Map<String, dynamic> json) {
//     return Reaction(
//       likes: json['likes'],
//       dislikes: json['dislikes'],
//     );
//   }
//
//   Map<String, dynamic> toJson() {
//     return {
//       'likes': likes,
//       'dislikes': dislikes,
//     };
//   }
// }
//
// class Post {
//   final int id;
//   final String title;
//   final String body;
//   final List<String> tags;
//   final Reaction reactions;
//   final int views;
//   final int userId;
//
//   Post({
//     required this.id,
//     required this.title,
//     required this.body,
//     required this.tags,
//     required this.reactions,
//     required this.views,
//     required this.userId,
//   });
//
//   factory Post.fromJson(Map<String, dynamic> json) {
//     return Post(
//       id: json['id'],
//       title: json['title'],
//       body: json['body'],
//       tags: List<String>.from(json['tags']),
//       reactions: Reaction.fromJson(json['reactions']),
//       views: json['views'],
//       userId: json['userId'],
//     );
//   }
//
//   Map<String, dynamic> toJson() {
//     return {
//       'id': id,
//       'title': title,
//       'body': body,
//       'tags': tags,
//       'reactions': reactions.toJson(),
//       'views': views,
//       'userId': userId,
//     };
//   }
// }
//
// class PostResponse {
//   final List<Post> posts;
//   final int total;
//   final int skip;
//   final int limit;
//
//   PostResponse({
//     required this.posts,
//     required this.total,
//     required this.skip,
//     required this.limit,
//   });
//
//   factory PostResponse.fromJson(Map<String, dynamic> json) {
//     return PostResponse(
//       posts: List<Post>.from(json['posts'].map((post) => Post.fromJson(post))),
//       total: json['total'],
//       skip: json['skip'],
//       limit: json['limit'],
//     );
//   }
//
//   Map<String, dynamic> toJson() {
//     return {
//       'posts': posts.map((post) => post.toJson()).toList(),
//       'total': total,
//       'skip': skip,
//       'limit': limit,
//     };
//   }
// }
//


class Post {
  final int id;
  final String title;
  final String body;
  final List<String> tags;
  final Reactions reactions;
  final int views;
  final int userId;

  Post({
    required this.id,
    required this.title,
    required this.body,
    required this.tags,
    required this.reactions,
    required this.views,
    required this.userId,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      title: json['title'],
      body: json['body'],
      tags: List<String>.from(json['tags']),
      reactions: Reactions.fromJson(json['reactions']),
      views: json['views'],
      userId: json['userId'],
    );
  }
}

class Reactions {
  final int likes;
  final int dislikes;

  Reactions({
    required this.likes,
    required this.dislikes,
  });

  factory Reactions.fromJson(Map<String, dynamic> json) {
    return Reactions(
      likes: json['likes'],
      dislikes: json['dislikes'],
    );
  }
}

class UserJson {
  final List<Post> posts;
  final int total;
  final int skip;
  final int limit;

  UserJson({
    required this.posts,
    required this.total,
    required this.skip,
    required this.limit,
  });

  factory UserJson.fromJson(Map<String, dynamic> json) {
    return UserJson(
      posts: List<Post>.from(json['posts'].map((post) => Post.fromJson(post))),
      total: json['total'],
      skip: json['skip'],
      limit: json['limit'],
    );
  }
}
