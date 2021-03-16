import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 14, 14, 14),
          child: Row(
            children: [
              CircleAvatar(
                radius: 18,
                backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/64519628?s=460&u=984527dbe62d7d4f70435a5fffbdfd02ae7f48c5&v=4'),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  'Dandy27',
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.white),
                ),
              ),
              GestureDetector(
                child: Icon(Icons.more_horiz_sharp,
                color: Colors.white),
              )
            ],
          ),
        ),
        Image.network(
          'https://avatars.githubusercontent.com/u/64519628?s=460&u=984527dbe62d7d4f70435a5fffbdfd02ae7f48c5&v=4'
        )
      ],
    );
  }
}
