import 'package:posts_api/models/post_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class ApiService {
  final url = Uri.parse('https://jsonplaceholder.typicode.com/posts');

  Future<List<Post>> getPosts() async {
    List<Post> posts = [];
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      List<dynamic> json = convert.jsonDecode(response.body);
      for (var item in json) {
        Post post = Post.fromJson(item);
        posts.add(post);
      }
      // List<Post> posts = json.map((item) => Post.fromJson(item)).toList();
      return posts;
    } else {
      throw Exception('there is Error in get Posts');
    }
  }
}
