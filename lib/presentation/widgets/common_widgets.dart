
import 'package:flutter/material.dart';
import '../../domain/home/model/student_model.dart';

ValueNotifier<List<StudentModel>> mymodellist = ValueNotifier([]);

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

SnackBar studentAddedSnackbar() {
  return const SnackBar(
    margin: EdgeInsets.all(10),
    behavior: SnackBarBehavior.floating,
    content: Text('student added!'),
    backgroundColor: Colors.green,
  );
}
