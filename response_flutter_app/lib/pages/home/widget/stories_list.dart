import 'package:flutter/material.dart';
import 'package:response_flutter_app/pages/home/widget/story_circle.dart';
import 'package:responsive_framework/responsive_framework.dart';

class StoriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final mobile = ResponsiveWrapper.of(context).isMobile;
    
    // print(ResponsiveWrapper.of(context)); para ver o active

    return Container(
      margin:  EdgeInsets.symmetric(vertical: mobile ? 15 : 30),
      height: 110,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        separatorBuilder: (_, __) => const SizedBox(width: 16),
        itemCount: 16,
        itemBuilder: (_, i) => StoryCircle(),
      ),
    );
  }
}
