part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required List<StudentModel> studentList,
    required List<StudentModel> searchResultList,
    required bool iserror,
    HomeEvent? transition,
  }) = _HomeState;
  factory HomeState.initial() =>
      const HomeState(studentList: [], iserror: false, searchResultList: []);
}
