import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tial/domain/home/model/student_model.dart';

import '../../application/home/home_bloc.dart';
import '../../application/update_screen/update_screen_bloc.dart';

deleteConfirmDialog(context,StudentModel model) {
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
              BlocProvider.of<UpdateScreenBloc>(context).add(
                Delete(studentModel: model, context: context),
              );
              BlocProvider.of<HomeBloc>(context).add(
                const HomeEvent.initialize(),
              );
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
