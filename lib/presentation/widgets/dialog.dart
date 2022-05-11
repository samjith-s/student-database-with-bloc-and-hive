import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:image_picker/image_picker.dart';

import '../../domain/home/model/student_model.dart';


ValueNotifier<List<StudentModel>> mymodellist = ValueNotifier([]);

var namecontroller = TextEditingController();
final agecontroller = TextEditingController();
final scorecontroller = TextEditingController();
final resultcontroller = TextEditingController();

sDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (ctx) {
      return SingleChildScrollView(child: showAlert(context));
    },
  );
}

Widget textField(
    {required String hint, required TextEditingController controller}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: TextFormField(
      controller: controller,
      decoration:
          InputDecoration(border: const OutlineInputBorder(), hintText: hint),
    ),
  );
}

Future<void> addModel(context, image) async {
  final dB = await Hive.openBox<StudentModel>('my_db');
  final name = namecontroller.text;
  final age = agecontroller.text;
  final mark = scorecontroller.text;
  final result = resultcontroller.text;
  if (name == '' || age == '' || mark == '' || result == '' || image == '') {
    return;
  } else {
    StudentModel mymodel = StudentModel(
        name: name, age: age, mark: mark, result: result, image: image.path);
    int key = await dB.add(mymodel);
    mymodel.key = key;
    mymodellist.value.add(mymodel);
    mymodellist.notifyListeners();
    ScaffoldMessenger.of(context).showSnackBar(
      studentAddedSnackbar(),
    );
    Navigator.of(context).pop();
  }
}

SnackBar studentAddedSnackbar() {
  return const SnackBar(
    margin: EdgeInsets.all(10),
    behavior: SnackBarBehavior.floating,
    content: Text('student added!'),
    backgroundColor: Colors.green,
  );
}

Future<void> getAll() async {
  final dB = await Hive.openBox<StudentModel>('my_db');
  mymodellist.value.clear();
  mymodellist.value.addAll(dB.values);
  mymodellist.notifyListeners();
}

Future<void> deleteItem(index) async {
  final dB = await Hive.openBox<StudentModel>('my_db');
  var keys = dB.keys;
  var key = keys.elementAt(index);
  await dB.delete(key);
  getAll();
}

ValueNotifier optionsnotifier = ValueNotifier(false);
ImagePicker imagePicker = ImagePicker();
var _image;

AlertDialog showAlert(context) {
  return AlertDialog(
    content: ValueListenableBuilder(
      valueListenable: optionsnotifier,
      builder: (BuildContext context, dynamic option, Widget? _) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            textField(hint: 'name', controller: namecontroller),
            textField(hint: 'age', controller: agecontroller),
            textField(hint: 'mark', controller: scorecontroller),
            textField(hint: 'result', controller: resultcontroller),
            GestureDetector(
              child: Visibility(
                visible: !optionsnotifier.value,
                child: const Text('Select Image'),
              ),
              onTap: () {
                optionsnotifier.value = true;
              },
            ),
            Visibility(
              visible: option,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
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
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                    ),
                  ),
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
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                addModel(context, _image);
                optionsnotifier.value = false;
                _image = '';
              },
              child: const Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
              ),
            )
          ],
        );
      },
    ),
  );
}
