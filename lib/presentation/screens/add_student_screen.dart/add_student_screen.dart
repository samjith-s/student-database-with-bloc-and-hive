import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../widgets/dialog.dart';

var namecontroller = TextEditingController();
final agecontroller = TextEditingController();
final scorecontroller = TextEditingController();
final resultcontroller = TextEditingController();
ValueNotifier optionsnotifier = ValueNotifier(false);
ImagePicker imagePicker = ImagePicker();
var _image;

class AddStudentScreen extends StatelessWidget {
  const AddStudentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
            visible: true,
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
                    XFile? image =
                        await imagePicker.pickImage(source: ImageSource.camera);
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
      ),
    );
  }
}
