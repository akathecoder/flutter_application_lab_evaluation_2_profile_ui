import 'dart:math';

import 'package:flutter/material.dart';

class Posts extends StatefulWidget {
  const Posts({super.key});

  @override
  State<Posts> createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  @override
  Widget build(BuildContext context) {
    int randomNumber = Random().nextInt(100) + 10;
    return Flexible(
      child: GridView.count(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        crossAxisCount: 3,
        children: List.generate(21, (index) {
          randomNumber = randomNumber + index;
          return Image.network(
            "https://picsum.photos/id/$randomNumber/200/200",
            errorBuilder: (context, error, stackTrace) {
              return Image.network(
                "https://picsum.photos/id/$randomNumber/200/200",
              );
            },
          );
        }),
      ),
    );
  }
}
