import 'package:hive_flutter/adapters.dart';
import 'package:injectable/injectable.dart';
import 'package:tial/domain/home/model/student_model.dart';
import 'package:tial/domain/update_screen/update_service.dart';

@LazySingleton(as: UpdateService)
class UpdateServiceImpl extends UpdateService {
  @override
  Future<void> deleteStudent({required int key}) async {
    final dB = await Hive.openBox<StudentModel>('my_db');
    dB.delete(key);
  }

  @override
  Future<StudentModel> updateStudent(
      {required StudentModel newModel, required int key}) async {
    final dB = await Hive.openBox<StudentModel>('my_db');
    dB.put(key, newModel);
    return newModel;
  }
}
