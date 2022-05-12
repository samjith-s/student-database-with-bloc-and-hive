import 'package:tial/domain/home/model/student_model.dart';

abstract class UpdateService {
  Future<StudentModel> updateStudent({required StudentModel newModel, required int key});
  Future<void> deleteStudent({required int key});
}
