import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tial/application/home/home_bloc.dart';
import 'package:tial/domain/home/model/student_model.dart';
import '../../widgets/common_widgets.dart';

var namecontroller = TextEditingController();
final agecontroller = TextEditingController();
final scorecontroller = TextEditingController();
final resultcontroller = TextEditingController();
ValueNotifier<File?> imageNotifier = ValueNotifier(null);
ImagePicker imagePicker = ImagePicker();
var _image;

class AddStudentScreen extends StatelessWidget {
  const AddStudentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                textField(hint: 'name', controller: namecontroller),
                textField(hint: 'age', controller: agecontroller),
                textField(hint: 'mark', controller: scorecontroller),
                textField(hint: 'result', controller: resultcontroller),
                const SizedBox(height: 10),
                ValueListenableBuilder(
                  valueListenable: imageNotifier,
                  builder: (BuildContext ctx, File? imagefile, Widget? _) {
                    return Container(
                      width: imagefile != null ? 100 : 0,
                      height: imagefile != null ? 100 : 0,
                      decoration: imagefile != null
                          ? BoxDecoration(
                              image: DecorationImage(
                                  image: FileImage(File(imagefile.path))))
                          : const BoxDecoration(),
                    );
                  },
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  child: const Text('Select Image'),
                  onTap: () async {
                    await selectFromPopUp(context);
                  },
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    if (scorecontroller.text == '' ||
                        agecontroller.text == '' ||
                        scorecontroller.text == '' ||
                        resultcontroller.text == '' ||
                        _image == '') {
                      return;
                    }
                    StudentModel model = StudentModel(
                      name: namecontroller.text,
                      age: agecontroller.text,
                      mark: scorecontroller.text,
                      result: resultcontroller.text,
                      image: _image.path,
                      key: DateTime.now().microsecond,
                    );
                    BlocProvider.of<HomeBloc>(context).add(
                      AddStudent(model: model, context: context),
                    );

                    clearInputDetails();
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
          ),
        ),
      ),
    );
  }

  void clearInputDetails() {
    _image = '';
    imageNotifier.value = null;
    namecontroller.text = '';
    agecontroller.text = '';
    scorecontroller.text = '';
    resultcontroller.text = '';
  }

  selectFromPopUp(BuildContext context) async {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () async {
                XFile? image =
                    await imagePicker.pickImage(source: ImageSource.gallery);
                _image = File(image!.path);
                imageNotifier.value = _image;
                Navigator.of(ctx).pop();
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
                imageNotifier.value = _image;
                Navigator.of(ctx).pop();
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
    );
  }
}
