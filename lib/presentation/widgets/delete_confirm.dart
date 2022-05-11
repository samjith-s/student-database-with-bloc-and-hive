import 'package:flutter/material.dart';
import 'package:tial/presentation/widgets/dialog.dart';
import 'package:tial/presentation/screens/home/home_screen.dart';

deleteConfirmDialog(context, index) {
  return showDialog(
    context: context,
    builder: (ctx) {
      return AlertDialog(
        title: const Text(
          'Do you want to delete this?',
          style: TextStyle(fontSize: 18),
        ),
        backgroundColor: const Color.fromARGB(255, 245, 241, 241),
        actions: [
          TextButton(
            style: yesnostyle,
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              'no',
              style: confirmtextstyle,
            ),
          ),
          TextButton(
            style: yesnostyle,
            onPressed: () {
              deleteItem(index);
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (ctx) {
                return const MyHome();
              }), (route) => false);
            },
            child: Text(
              'yes',
              style: confirmtextstyle,
            ),
          ),
        ],
      );
    },
  );
}



ButtonStyle yesnostyle = TextButton.styleFrom(
    padding: EdgeInsets.zero,
    minimumSize: Size(50, 30),
    alignment: Alignment.centerLeft);

TextStyle confirmtextstyle = TextStyle(fontSize: 15, color: Colors.black);