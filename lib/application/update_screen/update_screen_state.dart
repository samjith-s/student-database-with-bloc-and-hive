part of 'update_screen_bloc.dart';

@freezed
class UpdateScreenState with _$UpdateScreenState {
  const factory UpdateScreenState({
    required StudentModel studentModel,
  }) = _UpdateScreenState;

  factory UpdateScreenState.initial() => UpdateScreenState(
        studentModel: StudentModel(
          key: 0,
          name: '',
          age: '',
          mark: '',
          image: '',
          result: '',
        ),
      );
}
