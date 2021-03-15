import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:response_flutter_app/pages/home/responsive_app_bar.dart';
import 'package:response_flutter_app/pages/home/widget/stories_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 52),
          child: ResponsiveAppBar()),
      body: Align(
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1000),
          child: ListView(
            children: [
              StoriesList(),
            ],
          ),
        ),
      )
    );
  }
}
