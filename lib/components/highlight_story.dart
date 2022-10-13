import 'dart:math';

import 'package:flutter/material.dart';

class HighlightStory extends StatelessWidget {
  const HighlightStory({
    Key? key,
  }) : super(key: key);

  int randomGenerator() {
    return 1000 + Random().nextInt(1000 - 10);
  }

  // Random random = Random();

  @override
  Widget build(BuildContext context) {
    int randomNumber = Random().nextInt(900) + 10;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 72,
          height: 60,
          decoration: BoxDecoration(
            // gradient: LinearGradient(colors: [Colors.black, Colors.redAccent]),
            // color: Colors.lightBlueAccent,
            shape: BoxShape.circle,
            image: DecorationImage(
              // image: AssetImage(
              //   "assets/images/profile.png",
              // ),
              image: NetworkImage(
                  "https://picsum.photos/id/$randomNumber/200/200"),
              fit: BoxFit.cover,
            ),
            border: Border.all(
              color: Colors.lightBlueAccent,
              width: 2.0,
            ),
          ),
        ),
        const SizedBox(height: 2),
        Text(
          "#$randomNumber",
          style: const TextStyle(fontSize: 12),
        )
      ],
    );
  }
}
