import 'package:flutter/material.dart';

class StoryCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 66,
          width: 66,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
                colors: [Colors.blue, Colors.green],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft),
          ),
          child: Align(
            alignment: Alignment.center,
            child: Container(
              height: 62,
              width: 62,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.black87),
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 28,
                backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/64519628?s=460&u=984527dbe62d7d4f70435a5fffbdfd02ae7f48c5&v=4'),
              ),
            ),
          ),
        ),
        Text('Dandy27',
        style: TextStyle(
          fontSize: 12, color: Colors.white
        ),)
      ],
    );
  }
}
