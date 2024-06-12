class DataModel{
  List<Post> post = [];
  int? total,skip,limit;

  DataModel({this.limit,required this.post,this.skip,this.total});

  factory DataModel.fromJson(Map json)
  {
    return DataModel(
      limit: json['limit'],
      skip: json['skip'],
      total: json['total'],

      post: json['post'],
    );
  }

}

class Post{
  int? id,views,userId;
  String? title,body;
  List tags = [];
  Reactions? reactions;

  Post({this.reactions,required this.tags,this.id,this.body,this.title,this.userId,this.views});

  factory Post.fromJson(Map json)
  {
    return Post(
      title: json['title'],
      body: json['body'],
      id: json['id'],
      reactions: json['reactions'],
      tags: json['tags'],
      userId: json['userId'],
      views: json['views'],
    );
  }

}


class Reactions{
  int? likes,dislikes;

  Reactions({this.dislikes,this.likes});

  factory Reactions.fromjson(Map json)
  {
    return Reactions(
      dislikes: json['dislikes'],
      likes: json['likes']
    );
  }

}

// json['address'] != null ? Address.fromJson(json['address']) : null,