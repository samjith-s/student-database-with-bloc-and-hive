import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tial/application/home/home_bloc.dart';
import 'package:tial/domain/home/model/student_model.dart';
import 'package:tial/domain/update_screen/update_service.dart';

import '../../presentation/widgets/update_details_widget.dart';

part 'update_screen_event.dart';
part 'update_screen_state.dart';
part 'update_screen_bloc.freezed.dart';

@injectable
class UpdateScreenBloc extends Bloc<UpdateScreenEvent, UpdateScreenState> {
  final UpdateService _updateService;
  UpdateScreenBloc(this._updateService) : super(UpdateScreenState.initial()) {
    on<Initialize>((event, emit) {
      emit(
        state.copyWith(studentModel: event.studentModel),
      );
    });
    on<Delete>(
      (event, emit) {
        _updateService.deleteStudent(key: event.studentModel.key);
        int count = 0;
        Navigator.of(event.context).popUntil((_) => count++ >= 2);
      },
    );
    on<Update>(
      (event, emit) {
        _updateService.updateStudent(
            newModel: event.studentModel, key: event.studentModel.key);
        emit(
          state.copyWith(
            studentModel: event.studentModel,
          ),
        );
        Navigator.of(event.context).pop();
      },
    );
    on<ShowUpdateWidget>(
      (event, emit) {
        Navigator.of(event.context).push(
          MaterialPageRoute(
            builder: (context) => UpdateScreen(
              context: event.context,
              model: event.studentModel,
            ),
          ),
        );
      },
    );
  }
}
