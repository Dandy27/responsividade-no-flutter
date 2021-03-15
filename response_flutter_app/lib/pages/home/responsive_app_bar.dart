import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ResponsiveAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 1,
      title: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1000),
        child: Row(
          children: [
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Text('Flutter',style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontFamily: 'Billabong',
                fontWeight: FontWeight.w500,
              ),),
            ),
            Container(
              width: 200,
                height: 30,
              padding: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
              ),
              child: Row(
                children: [
                  Icon(Icons.search, size: 15),
                  const SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      style: TextStyle(fontSize: 15, color: Colors.white),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        isCollapsed: true
                      )
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
