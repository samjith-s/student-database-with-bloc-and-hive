part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.initialize() = Initialize;

  const factory HomeEvent.addButtonPressed({required BuildContext context}) =
      AddButtonPressed;

  const factory HomeEvent.studentTileTaped(
      {required BuildContext context,
      required StudentModel model}) = StudentTileTaped;

  const factory HomeEvent.addStudent(
      {required StudentModel model,
      required BuildContext context}) = AddStudent;

  const factory HomeEvent.deleteStudent(
      {required int key, required BuildContext context}) = DeleteStudent;

  const factory HomeEvent.searchStudent({required String userName}) =
      SearchStudent;
}
