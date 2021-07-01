class Post {
  int id;
  int userId;
  String title;
  String body;
  Post({this.userId, this.body, this.id, this.title});
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
        body: json['body'],
        id: json['id'],
        title: json['title'],
        userId: json['userId']);
  }
}
