part of 'update_screen_bloc.dart';

@freezed
class UpdateScreenEvent with _$UpdateScreenEvent {

  const factory UpdateScreenEvent.initialize(
      {required StudentModel studentModel}) = Initialize;

  const factory UpdateScreenEvent.update(
      {required StudentModel studentModel,
      required BuildContext context}) = Update;

  const factory UpdateScreenEvent.delete(
      {required StudentModel studentModel,
      required BuildContext context}) = Delete;
      
   const factory UpdateScreenEvent.showUpdateWidget(
      {required StudentModel studentModel,
      required BuildContext context}) = ShowUpdateWidget;
      
     
}
