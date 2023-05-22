import 'package:flutter/material.dart';

import 'input_modal.dart';

 myAlertDialog(context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
            child: AlertDialog(
          title: const Text('Alert !'),
          content: const Text('Do you want to delete'),
          actions: [
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('No')),
            OutlinedButton(
                onPressed: () {
                  mySnacksAction('Deleted Successful!', context);
                  Navigator.of(context).pop();
                },
                child: const Text('Yes'))
          ],
        ));
      });
}
