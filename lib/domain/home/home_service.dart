import 'package:flutter/cupertino.dart';
import 'package:tial/domain/home/model/student_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeService {
  Future<Either<Exception, List<StudentModel>>> getAllStudent();
  Future<void> addStudent({required StudentModel model});
}
