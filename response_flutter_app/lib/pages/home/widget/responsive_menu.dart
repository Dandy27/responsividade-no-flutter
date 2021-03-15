import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResponsiveMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ResponsiveVisibility(
          visible: false,
            visibleWhen: [
              Condition.smallerThan(name: TABLET)
            ],
            child: IconButton(icon: Icon(Icons.search), onPressed: () {})),
        const SizedBox(width: 4),
        IconButton(icon: Icon(Icons.home), onPressed: () {}),
        const SizedBox(width: 4),
        IconButton(icon: Icon(Icons.send), onPressed: () {}),
        const SizedBox(width: 4),
        IconButton(icon: Icon(Icons.favorite_border), onPressed: () {}),
        const SizedBox(width: 16),
        CircleAvatar(
          radius: 16,
          backgroundImage: NetworkImage(
              'https://avatars.githubusercontent.com/u/64519628?s=460&u=984527dbe62d7d4f70435a5fffbdfd02ae7f48c5&v=4'),
        ),
      ],
    );
  }
}
