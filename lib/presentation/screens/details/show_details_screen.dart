import 'dart:io';
import 'package:flutter/material.dart';
import 'package:tial/presentation/widgets/delete_confirm.dart';
import 'package:tial/presentation/widgets/dialog.dart';
import 'package:tial/presentation/screens/home/home_screen.dart';
import 'package:tial/presentation/widgets/update_dialog.dart';

import '../../../domain/home/model/student_model.dart';
import '../../hive_models/hive_model.dart';

var updateoptionbuttonstyle =
    ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white));

class ShowDetails extends StatelessWidget {
  final index;
  const ShowDetails({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const TextStyle textStyle = TextStyle(fontSize: 30, color: Colors.black);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 234, 234),
      appBar: AppBar(
        leading: backButtton(context),
        title: const Text('Details'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: ValueListenableBuilder(
          valueListenable: datanotifier,
          builder: (BuildContext context, StudentModel data, Widget? _) {
            return SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: CircleAvatar(
                        backgroundImage: FileImage(File(data.image!)),
                        radius: 100,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Name : ${data.name}',
                      style: textStyle,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Age : ${data.age}',
                      style: textStyle,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Mark : ${data.mark}',
                      style: textStyle,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Result : ${data.result}',
                      style: textStyle,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: TextButton.icon(
                              onPressed: () {
                                updateDialog(context, index);
                                shownotifier.value = false;
                              },
                              icon: const Icon(Icons.update),
                              label: const Text('Update'),
                              style: updateoptionbuttonstyle,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: TextButton.icon(
                              onPressed: () {
                                deleteConfirmDialog(context, index);
                                // deleteItem(index);
                                // Navigator.of(context).pop();
                              },
                              icon: const Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                              label: const Text(
                                'Delete',
                                style: TextStyle(color: Colors.red),
                              ),
                              style: updateoptionbuttonstyle,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        )),
      ),
    );
  }

  IconButton backButtton(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: const Icon(Icons.arrow_back));
  }
}
