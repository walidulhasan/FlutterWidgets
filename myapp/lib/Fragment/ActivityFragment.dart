import 'package:flutter/material.dart';
import 'package:myapp/Activity/grideView.dart';
import 'package:myapp/Activity/listView.dart';
import 'package:myapp/Activity/socialActivity.dart';

import '../widget/alert_dialog.dart';
import '../widget/input_modal.dart';

class ActivityFragment extends StatelessWidget {
  const ActivityFragment({super.key});

  @override
  Widget build(BuildContext context) {
   
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        verticalDirection: VerticalDirection.down,
        children: [
          OutlinedButton(
              onPressed: () => {mySnacksAction("I am Outline Button", context)},
              child: const Text('Outline Button')),
          ElevatedButton(
            onPressed: () {
              myAlertDialog(context);
            },
            child: const Text('Show Dialog'),
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          SocialActivity('Navigaion Screen')));
            },
            child: const Text("Navigation Screen"),
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GrideView()));
            },
            child: const Text("Gride View"),
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ListViews()));
            },
            child: const Text("List View"),
          )
        ],
      ),
    );
  }
}
