import 'package:flutter/material.dart';
import 'package:posts_api/models/post_model.dart';

Widget customListTile(Post post, BuildContext context) {
  return Container(
    margin: EdgeInsets.all(12.0),
    padding: EdgeInsets.all(8),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 3),
        ]),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          child: Center(
              child: Text(
            post.title,
            style: TextStyle(
                color: Colors.blue, fontSize: 22, fontWeight: FontWeight.bold),
          )),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          post.body,
          style: TextStyle(
            fontSize: 15,
          ),
        )
      ],
    ),
  );
}
