import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StoryViewScreen extends StatelessWidget {

  final controller = StoryController();
  @override
  Widget build(BuildContext context) {

    List<StoryItem> stories = [
      StoryItem.text(
        "This is an amazing status screen! Wohoo!",
        Colors.black,
      ),

      StoryItem.pageImage(
        NetworkImage("https://images.unsplash.com/photo-1524613032530-449a5d94c285?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80")
      ),

      StoryItem.pageImage(
        NetworkImage("https://images.unsplash.com/photo-1517330357046-3ab5a5dd42a1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80")
      ),

      StoryItem.pageImage(
        NetworkImage("https://images.unsplash.com/photo-1524230507669-5ff97982bb5e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=614&q=80")
      ),

    ];

    return Material(
      child: StoryView(
        stories,
        controller: controller,
        onComplete: () {
          Navigator.pop(context);
        },
      )
    );
  }
}