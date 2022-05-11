import 'package:hive_flutter/hive_flutter.dart';
part 'student_model.g.dart';

@HiveType(typeId: 1)
class StudentModel {
  @HiveField(0)
  int? key;

  @HiveField(1)
  String name;

  @HiveField(2)
  String age;

  @HiveField(3)
  String mark;

  @HiveField(4)
  String result;

  @HiveField(5)
  String? image;

  StudentModel({
    this.key,
    required this.name,
    required this.age,
    required this.mark,
    this.image,
    required this.result,
  });
}
