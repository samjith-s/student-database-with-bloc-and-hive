import 'package:dartz/dartz.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:tial/domain/home/home_service.dart';
import 'package:tial/domain/home/model/student_model.dart';

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
}
