import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tial/presentation/widgets/common_widgets.dart';
import '../../application/update_screen/update_screen_bloc.dart';
import '../../domain/home/model/student_model.dart';
import '../screens/add_student_screen.dart/add_student_screen.dart';

var namecontroller = TextEditingController();
var agecontroller = TextEditingController();
var scorecontroller = TextEditingController();
var resultcontroller = TextEditingController();
ValueNotifier<File?> _imageNotifier = ValueNotifier(null);

class UpdateScreen extends StatelessWidget {
  final BuildContext context;
  final StudentModel model;
  const UpdateScreen({Key? key, required this.model, required this.context})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    namecontroller.text = model.name;
    agecontroller.text = model.age;
    scorecontroller.text = model.mark;
    resultcontroller.text = model.result;
    _imageNotifier.value = File(model.image);
    var _image;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                textField(hint: 'name', controller: namecontroller),
                textField(hint: 'age', controller: agecontroller),
                textField(hint: 'mark', controller: scorecontroller),
                textField(hint: 'result', controller: resultcontroller),
                ValueListenableBuilder(
                  valueListenable: _imageNotifier,
                  builder: (BuildContext ctx, File? imageFile, Widget? _) {
                    return Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: FileImage(
                            File(imageFile!.path),
                          ),
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 15),
                GestureDetector(
                  child: const Text('Change Image'),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (ctx) {
                        return AlertDialog(
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ElevatedButton(
                                onPressed: () async {
                                  XFile? image = await imagePicker.pickImage(
                                      source: ImageSource.camera);
                                  _image = File(image!.path);
                                  _imageNotifier.value = _image;
                                  Navigator.of(ctx).pop();
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
                                  _imageNotifier.value = _image;
                                  Navigator.of(ctx).pop();
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
                        );
                      },
                    );
                  },
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    StudentModel newModel = StudentModel(
                      name: namecontroller.text,
                      age: agecontroller.text,
                      mark: scorecontroller.text,
                      result: resultcontroller.text,
                      image: _image.path,
                      key: model.key,
                    );
                    BlocProvider.of<UpdateScreenBloc>(context).add(
                      Update(
                        studentModel: newModel,
                        context: context,
                      ),
                    );
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
            ),
          ),
        ),
      ),
    );
  }
}
