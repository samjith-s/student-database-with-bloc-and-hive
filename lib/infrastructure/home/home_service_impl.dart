import 'package:dartz/dartz.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:injectable/injectable.dart';
import 'package:tial/domain/home/home_service.dart';
import 'package:tial/domain/home/model/student_model.dart';

@LazySingleton(as: HomeService)
class HomeServiceImpl extends HomeService {
  @override
  Future<Either<Exception, List<StudentModel>>> getAllStudent() async {
    try {
      final dB = await Hive.openBox<StudentModel>('my_db');
      List<StudentModel> studentList = [];
      studentList.addAll(dB.values);
      return right(studentList);
    } catch (e) {
      return left(Exception(e.toString()));
    }
  }

  @override
  Future<void> addStudent({required StudentModel model}) async {
    final dB = await Hive.openBox<StudentModel>('my_db');
    dB.put(model.key, model);
  }

}
