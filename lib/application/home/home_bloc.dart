import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tial/domain/home/home_service.dart';
import 'package:tial/presentation/screens/add_student_screen.dart/add_student_screen.dart';
import 'package:tial/presentation/screens/details/show_details_screen.dart';
import '../../domain/home/model/student_model.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeService _homeService;
  HomeBloc(this._homeService) : super(HomeState.initial()) {
    on<Initialize>((event, emit) async {
      final _result = await _homeService.getAllStudent();
      log(_result.toString());
      emit(
        _result.fold(
          (l) => state.copyWith(iserror: true),
          (r) => state.copyWith(iserror: false, studentList: r),
        ),
      );
    });
    on<AddButtonPressed>((event, emit) {
      Navigator.of(event.context).push(
        MaterialPageRoute(
          builder: ((ctx) => const AddStudentScreen()),
        ),
      );
    });
    on<StudentTileTaped>((event, emit) {
      Navigator.of(event.context).push(
        MaterialPageRoute(
          builder: ((ctx) => ShowDetails(
                model: event.model,
              )),
        ),
      );
    });

    on<AddStudent>((event, emit) async {
      await _homeService.addStudent(model: event.model);
      add(const HomeEvent.initialize());
      Navigator.of(event.context).pop();
    });

    on<SearchStudent>((event, emit) {
      var _result = state.studentList
          .where((element) => element.name.contains(event.userName));
      List<StudentModel> searchList = [];
      searchList.addAll(_result);
      log(searchList.toString());
      emit(state.copyWith(searchResultList: searchList));
    });
  }
}
