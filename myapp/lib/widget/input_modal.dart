import 'package:flutter/material.dart';

class InputModalData {
  String? userInput1;
  String? userInput2;

  InputModalData({this.userInput1, this.userInput2});
}

void mySnacksAction(String message, BuildContext context) {
  final snackBar = SnackBar(
    content: Text(message, style: const TextStyle(color: Colors.white)),
    backgroundColor: const Color.fromARGB(255, 2, 23, 59),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);

  Future.delayed(const Duration(milliseconds: 2000), () {
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
  });
}

void showInputModal(BuildContext context) {
  TextEditingController userInputController1 = TextEditingController();
  TextEditingController userInputController2 = TextEditingController();

  showDialog<InputModalData>(
    context: context,
    builder: (BuildContext dialogContext) {
      InputModalData inputModalData = InputModalData();

      return AlertDialog(
        title: const Text('Input Modal'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: userInputController1,
              onChanged: (value) {
                inputModalData.userInput1 = value;
              },
              decoration: const InputDecoration(
                hintText: 'Enter something 1',
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: userInputController2,
              onChanged: (value) {
                inputModalData.userInput2 = value;
              },
              decoration: const InputDecoration(
                hintText: 'Enter something 2',
              ),
            ),
          ],
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(dialogContext).pop(inputModalData);
            },
            child: const Text('Submit'),
          ),
        ],
      );
    },
  ).then((inputModalData) {
    // Handle the user's input outside the modal
    if (inputModalData != null) {
      mySnacksAction(
          'User entered: ${inputModalData.userInput1}, ${inputModalData.userInput2}',
          context);
    }
  });
}
