import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tial/presentation/widgets/dialog.dart';
import 'package:tial/presentation/screens/home/home_screen.dart';
import '../../domain/home/model/student_model.dart';

ValueNotifier<List<StudentModel>> mymodellist = ValueNotifier([]);

var namecontroller = TextEditingController();
var agecontroller = TextEditingController();
var scorecontroller = TextEditingController();

ValueNotifier shownotifier = ValueNotifier(false);
updateDialog(BuildContext context, index) {
  var _image;
  return showDialog(
      context: context,
      builder: (ctx) {
        return SingleChildScrollView(
          child: AlertDialog(
              content: ValueListenableBuilder(
            valueListenable: shownotifier,
            builder: (BuildContext context, dynamic show, Widget? _) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  textField(hint: 'name', controller: namecontroller),
                  textField(hint: 'age', controller: agecontroller),
                  textField(hint: 'mark', controller: scorecontroller),
                  textField(hint: 'result', controller: resultcontroller),
                  GestureDetector(
                    child:
                        Visibility(visible: !show, child: Text('select Image')),
                    onTap: () {
                      shownotifier.value = true;
                    },
                  ),
                  Visibility(
                    visible: show,
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: () async {
                            XFile? image = await imagePicker.pickImage(
                                source: ImageSource.camera);
                            _image = File(image!.path);
                          },
                          child: const Text(
                            'Select from the camera',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.green),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            XFile? image = await imagePicker.pickImage(
                                source: ImageSource.gallery);
                            _image = File(image!.path);
                          },
                          child: const Text(
                            'Select from the gallery',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.green),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      updateValues(index, context, _image);
                      shownotifier.value = false;
                    },
                    child: const Text(
                      'Update',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                    ),
                  )
                ],
              );
            },
          )),
        );
      });
}

Future<void> updateValues(index, context, image) async {
  final dB = await Hive.openBox<StudentModel>('my_db');
  var keys = dB.keys;
  var key = keys.elementAt(index);
  final name = namecontroller.text;
  final age = agecontroller.text;
  final mark = scorecontroller.text;
  final result = resultcontroller.text;
  StudentModel mymodel = StudentModel(
      name: name, age: age, mark: mark, result: result, image: image.path);
  await dB.put(key, mymodel);
  datanotifier.value = mymodel;
  datanotifier.notifyListeners;
  Navigator.of(context).pop();
  getAll();
}

