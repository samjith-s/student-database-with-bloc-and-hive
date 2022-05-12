// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'update_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpdateScreenEvent {
  StudentModel get studentModel => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StudentModel studentModel) initialize,
    required TResult Function(StudentModel studentModel, BuildContext context)
        update,
    required TResult Function(StudentModel studentModel, BuildContext context)
        delete,
    required TResult Function(StudentModel studentModel, BuildContext context)
        showUpdateWidget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(StudentModel studentModel)? initialize,
    TResult Function(StudentModel studentModel, BuildContext context)? update,
    TResult Function(StudentModel studentModel, BuildContext context)? delete,
    TResult Function(StudentModel studentModel, BuildContext context)?
        showUpdateWidget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StudentModel studentModel)? initialize,
    TResult Function(StudentModel studentModel, BuildContext context)? update,
    TResult Function(StudentModel studentModel, BuildContext context)? delete,
    TResult Function(StudentModel studentModel, BuildContext context)?
        showUpdateWidget,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(Update value) update,
    required TResult Function(Delete value) delete,
    required TResult Function(ShowUpdateWidget value) showUpdateWidget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(Update value)? update,
    TResult Function(Delete value)? delete,
    TResult Function(ShowUpdateWidget value)? showUpdateWidget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(Update value)? update,
    TResult Function(Delete value)? delete,
    TResult Function(ShowUpdateWidget value)? showUpdateWidget,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateScreenEventCopyWith<UpdateScreenEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateScreenEventCopyWith<$Res> {
  factory $UpdateScreenEventCopyWith(
          UpdateScreenEvent value, $Res Function(UpdateScreenEvent) then) =
      _$UpdateScreenEventCopyWithImpl<$Res>;
  $Res call({StudentModel studentModel});
}

/// @nodoc
class _$UpdateScreenEventCopyWithImpl<$Res>
    implements $UpdateScreenEventCopyWith<$Res> {
  _$UpdateScreenEventCopyWithImpl(this._value, this._then);

  final UpdateScreenEvent _value;
  // ignore: unused_field
  final $Res Function(UpdateScreenEvent) _then;

  @override
  $Res call({
    Object? studentModel = freezed,
  }) {
    return _then(_value.copyWith(
      studentModel: studentModel == freezed
          ? _value.studentModel
          : studentModel // ignore: cast_nullable_to_non_nullable
              as StudentModel,
    ));
  }
}

/// @nodoc
abstract class _$$InitializeCopyWith<$Res>
    implements $UpdateScreenEventCopyWith<$Res> {
  factory _$$InitializeCopyWith(
          _$Initialize value, $Res Function(_$Initialize) then) =
      __$$InitializeCopyWithImpl<$Res>;
  @override
  $Res call({StudentModel studentModel});
}

/// @nodoc
class __$$InitializeCopyWithImpl<$Res>
    extends _$UpdateScreenEventCopyWithImpl<$Res>
    implements _$$InitializeCopyWith<$Res> {
  __$$InitializeCopyWithImpl(
      _$Initialize _value, $Res Function(_$Initialize) _then)
      : super(_value, (v) => _then(v as _$Initialize));

  @override
  _$Initialize get _value => super._value as _$Initialize;

  @override
  $Res call({
    Object? studentModel = freezed,
  }) {
    return _then(_$Initialize(
      studentModel: studentModel == freezed
          ? _value.studentModel
          : studentModel // ignore: cast_nullable_to_non_nullable
              as StudentModel,
    ));
  }
}

/// @nodoc

class _$Initialize implements Initialize {
  const _$Initialize({required this.studentModel});

  @override
  final StudentModel studentModel;

  @override
  String toString() {
    return 'UpdateScreenEvent.initialize(studentModel: $studentModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Initialize &&
            const DeepCollectionEquality()
                .equals(other.studentModel, studentModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(studentModel));

  @JsonKey(ignore: true)
  @override
  _$$InitializeCopyWith<_$Initialize> get copyWith =>
      __$$InitializeCopyWithImpl<_$Initialize>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StudentModel studentModel) initialize,
    required TResult Function(StudentModel studentModel, BuildContext context)
        update,
    required TResult Function(StudentModel studentModel, BuildContext context)
        delete,
    required TResult Function(StudentModel studentModel, BuildContext context)
        showUpdateWidget,
  }) {
    return initialize(studentModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(StudentModel studentModel)? initialize,
    TResult Function(StudentModel studentModel, BuildContext context)? update,
    TResult Function(StudentModel studentModel, BuildContext context)? delete,
    TResult Function(StudentModel studentModel, BuildContext context)?
        showUpdateWidget,
  }) {
    return initialize?.call(studentModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StudentModel studentModel)? initialize,
    TResult Function(StudentModel studentModel, BuildContext context)? update,
    TResult Function(StudentModel studentModel, BuildContext context)? delete,
    TResult Function(StudentModel studentModel, BuildContext context)?
        showUpdateWidget,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(studentModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(Update value) update,
    required TResult Function(Delete value) delete,
    required TResult Function(ShowUpdateWidget value) showUpdateWidget,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(Update value)? update,
    TResult Function(Delete value)? delete,
    TResult Function(ShowUpdateWidget value)? showUpdateWidget,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(Update value)? update,
    TResult Function(Delete value)? delete,
    TResult Function(ShowUpdateWidget value)? showUpdateWidget,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements UpdateScreenEvent {
  const factory Initialize({required final StudentModel studentModel}) =
      _$Initialize;

  @override
  StudentModel get studentModel => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$InitializeCopyWith<_$Initialize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCopyWith<$Res>
    implements $UpdateScreenEventCopyWith<$Res> {
  factory _$$UpdateCopyWith(_$Update value, $Res Function(_$Update) then) =
      __$$UpdateCopyWithImpl<$Res>;
  @override
  $Res call({StudentModel studentModel, BuildContext context});
}

/// @nodoc
class __$$UpdateCopyWithImpl<$Res> extends _$UpdateScreenEventCopyWithImpl<$Res>
    implements _$$UpdateCopyWith<$Res> {
  __$$UpdateCopyWithImpl(_$Update _value, $Res Function(_$Update) _then)
      : super(_value, (v) => _then(v as _$Update));

  @override
  _$Update get _value => super._value as _$Update;

  @override
  $Res call({
    Object? studentModel = freezed,
    Object? context = freezed,
  }) {
    return _then(_$Update(
      studentModel: studentModel == freezed
          ? _value.studentModel
          : studentModel // ignore: cast_nullable_to_non_nullable
              as StudentModel,
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$Update implements Update {
  const _$Update({required this.studentModel, required this.context});

  @override
  final StudentModel studentModel;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'UpdateScreenEvent.update(studentModel: $studentModel, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Update &&
            const DeepCollectionEquality()
                .equals(other.studentModel, studentModel) &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(studentModel),
      const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  _$$UpdateCopyWith<_$Update> get copyWith =>
      __$$UpdateCopyWithImpl<_$Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StudentModel studentModel) initialize,
    required TResult Function(StudentModel studentModel, BuildContext context)
        update,
    required TResult Function(StudentModel studentModel, BuildContext context)
        delete,
    required TResult Function(StudentModel studentModel, BuildContext context)
        showUpdateWidget,
  }) {
    return update(studentModel, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(StudentModel studentModel)? initialize,
    TResult Function(StudentModel studentModel, BuildContext context)? update,
    TResult Function(StudentModel studentModel, BuildContext context)? delete,
    TResult Function(StudentModel studentModel, BuildContext context)?
        showUpdateWidget,
  }) {
    return update?.call(studentModel, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StudentModel studentModel)? initialize,
    TResult Function(StudentModel studentModel, BuildContext context)? update,
    TResult Function(StudentModel studentModel, BuildContext context)? delete,
    TResult Function(StudentModel studentModel, BuildContext context)?
        showUpdateWidget,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(studentModel, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(Update value) update,
    required TResult Function(Delete value) delete,
    required TResult Function(ShowUpdateWidget value) showUpdateWidget,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(Update value)? update,
    TResult Function(Delete value)? delete,
    TResult Function(ShowUpdateWidget value)? showUpdateWidget,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(Update value)? update,
    TResult Function(Delete value)? delete,
    TResult Function(ShowUpdateWidget value)? showUpdateWidget,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class Update implements UpdateScreenEvent {
  const factory Update(
      {required final StudentModel studentModel,
      required final BuildContext context}) = _$Update;

  @override
  StudentModel get studentModel => throw _privateConstructorUsedError;
  BuildContext get context => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$UpdateCopyWith<_$Update> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCopyWith<$Res>
    implements $UpdateScreenEventCopyWith<$Res> {
  factory _$$DeleteCopyWith(_$Delete value, $Res Function(_$Delete) then) =
      __$$DeleteCopyWithImpl<$Res>;
  @override
  $Res call({StudentModel studentModel, BuildContext context});
}

/// @nodoc
class __$$DeleteCopyWithImpl<$Res> extends _$UpdateScreenEventCopyWithImpl<$Res>
    implements _$$DeleteCopyWith<$Res> {
  __$$DeleteCopyWithImpl(_$Delete _value, $Res Function(_$Delete) _then)
      : super(_value, (v) => _then(v as _$Delete));

  @override
  _$Delete get _value => super._value as _$Delete;

  @override
  $Res call({
    Object? studentModel = freezed,
    Object? context = freezed,
  }) {
    return _then(_$Delete(
      studentModel: studentModel == freezed
          ? _value.studentModel
          : studentModel // ignore: cast_nullable_to_non_nullable
              as StudentModel,
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$Delete implements Delete {
  const _$Delete({required this.studentModel, required this.context});

  @override
  final StudentModel studentModel;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'UpdateScreenEvent.delete(studentModel: $studentModel, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Delete &&
            const DeepCollectionEquality()
                .equals(other.studentModel, studentModel) &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(studentModel),
      const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  _$$DeleteCopyWith<_$Delete> get copyWith =>
      __$$DeleteCopyWithImpl<_$Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StudentModel studentModel) initialize,
    required TResult Function(StudentModel studentModel, BuildContext context)
        update,
    required TResult Function(StudentModel studentModel, BuildContext context)
        delete,
    required TResult Function(StudentModel studentModel, BuildContext context)
        showUpdateWidget,
  }) {
    return delete(studentModel, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(StudentModel studentModel)? initialize,
    TResult Function(StudentModel studentModel, BuildContext context)? update,
    TResult Function(StudentModel studentModel, BuildContext context)? delete,
    TResult Function(StudentModel studentModel, BuildContext context)?
        showUpdateWidget,
  }) {
    return delete?.call(studentModel, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StudentModel studentModel)? initialize,
    TResult Function(StudentModel studentModel, BuildContext context)? update,
    TResult Function(StudentModel studentModel, BuildContext context)? delete,
    TResult Function(StudentModel studentModel, BuildContext context)?
        showUpdateWidget,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(studentModel, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(Update value) update,
    required TResult Function(Delete value) delete,
    required TResult Function(ShowUpdateWidget value) showUpdateWidget,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(Update value)? update,
    TResult Function(Delete value)? delete,
    TResult Function(ShowUpdateWidget value)? showUpdateWidget,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(Update value)? update,
    TResult Function(Delete value)? delete,
    TResult Function(ShowUpdateWidget value)? showUpdateWidget,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class Delete implements UpdateScreenEvent {
  const factory Delete(
      {required final StudentModel studentModel,
      required final BuildContext context}) = _$Delete;

  @override
  StudentModel get studentModel => throw _privateConstructorUsedError;
  BuildContext get context => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$DeleteCopyWith<_$Delete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowUpdateWidgetCopyWith<$Res>
    implements $UpdateScreenEventCopyWith<$Res> {
  factory _$$ShowUpdateWidgetCopyWith(
          _$ShowUpdateWidget value, $Res Function(_$ShowUpdateWidget) then) =
      __$$ShowUpdateWidgetCopyWithImpl<$Res>;
  @override
  $Res call({StudentModel studentModel, BuildContext context});
}

/// @nodoc
class __$$ShowUpdateWidgetCopyWithImpl<$Res>
    extends _$UpdateScreenEventCopyWithImpl<$Res>
    implements _$$ShowUpdateWidgetCopyWith<$Res> {
  __$$ShowUpdateWidgetCopyWithImpl(
      _$ShowUpdateWidget _value, $Res Function(_$ShowUpdateWidget) _then)
      : super(_value, (v) => _then(v as _$ShowUpdateWidget));

  @override
  _$ShowUpdateWidget get _value => super._value as _$ShowUpdateWidget;

  @override
  $Res call({
    Object? studentModel = freezed,
    Object? context = freezed,
  }) {
    return _then(_$ShowUpdateWidget(
      studentModel: studentModel == freezed
          ? _value.studentModel
          : studentModel // ignore: cast_nullable_to_non_nullable
              as StudentModel,
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$ShowUpdateWidget implements ShowUpdateWidget {
  const _$ShowUpdateWidget({required this.studentModel, required this.context});

  @override
  final StudentModel studentModel;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'UpdateScreenEvent.showUpdateWidget(studentModel: $studentModel, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowUpdateWidget &&
            const DeepCollectionEquality()
                .equals(other.studentModel, studentModel) &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(studentModel),
      const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  _$$ShowUpdateWidgetCopyWith<_$ShowUpdateWidget> get copyWith =>
      __$$ShowUpdateWidgetCopyWithImpl<_$ShowUpdateWidget>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StudentModel studentModel) initialize,
    required TResult Function(StudentModel studentModel, BuildContext context)
        update,
    required TResult Function(StudentModel studentModel, BuildContext context)
        delete,
    required TResult Function(StudentModel studentModel, BuildContext context)
        showUpdateWidget,
  }) {
    return showUpdateWidget(studentModel, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(StudentModel studentModel)? initialize,
    TResult Function(StudentModel studentModel, BuildContext context)? update,
    TResult Function(StudentModel studentModel, BuildContext context)? delete,
    TResult Function(StudentModel studentModel, BuildContext context)?
        showUpdateWidget,
  }) {
    return showUpdateWidget?.call(studentModel, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StudentModel studentModel)? initialize,
    TResult Function(StudentModel studentModel, BuildContext context)? update,
    TResult Function(StudentModel studentModel, BuildContext context)? delete,
    TResult Function(StudentModel studentModel, BuildContext context)?
        showUpdateWidget,
    required TResult orElse(),
  }) {
    if (showUpdateWidget != null) {
      return showUpdateWidget(studentModel, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(Update value) update,
    required TResult Function(Delete value) delete,
    required TResult Function(ShowUpdateWidget value) showUpdateWidget,
  }) {
    return showUpdateWidget(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(Update value)? update,
    TResult Function(Delete value)? delete,
    TResult Function(ShowUpdateWidget value)? showUpdateWidget,
  }) {
    return showUpdateWidget?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(Update value)? update,
    TResult Function(Delete value)? delete,
    TResult Function(ShowUpdateWidget value)? showUpdateWidget,
    required TResult orElse(),
  }) {
    if (showUpdateWidget != null) {
      return showUpdateWidget(this);
    }
    return orElse();
  }
}

abstract class ShowUpdateWidget implements UpdateScreenEvent {
  const factory ShowUpdateWidget(
      {required final StudentModel studentModel,
      required final BuildContext context}) = _$ShowUpdateWidget;

  @override
  StudentModel get studentModel => throw _privateConstructorUsedError;
  BuildContext get context => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ShowUpdateWidgetCopyWith<_$ShowUpdateWidget> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateScreenState {
  StudentModel get studentModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateScreenStateCopyWith<UpdateScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateScreenStateCopyWith<$Res> {
  factory $UpdateScreenStateCopyWith(
          UpdateScreenState value, $Res Function(UpdateScreenState) then) =
      _$UpdateScreenStateCopyWithImpl<$Res>;
  $Res call({StudentModel studentModel});
}

/// @nodoc
class _$UpdateScreenStateCopyWithImpl<$Res>
    implements $UpdateScreenStateCopyWith<$Res> {
  _$UpdateScreenStateCopyWithImpl(this._value, this._then);

  final UpdateScreenState _value;
  // ignore: unused_field
  final $Res Function(UpdateScreenState) _then;

  @override
  $Res call({
    Object? studentModel = freezed,
  }) {
    return _then(_value.copyWith(
      studentModel: studentModel == freezed
          ? _value.studentModel
          : studentModel // ignore: cast_nullable_to_non_nullable
              as StudentModel,
    ));
  }
}

/// @nodoc
abstract class _$$_UpdateScreenStateCopyWith<$Res>
    implements $UpdateScreenStateCopyWith<$Res> {
  factory _$$_UpdateScreenStateCopyWith(_$_UpdateScreenState value,
          $Res Function(_$_UpdateScreenState) then) =
      __$$_UpdateScreenStateCopyWithImpl<$Res>;
  @override
  $Res call({StudentModel studentModel});
}

/// @nodoc
class __$$_UpdateScreenStateCopyWithImpl<$Res>
    extends _$UpdateScreenStateCopyWithImpl<$Res>
    implements _$$_UpdateScreenStateCopyWith<$Res> {
  __$$_UpdateScreenStateCopyWithImpl(
      _$_UpdateScreenState _value, $Res Function(_$_UpdateScreenState) _then)
      : super(_value, (v) => _then(v as _$_UpdateScreenState));

  @override
  _$_UpdateScreenState get _value => super._value as _$_UpdateScreenState;

  @override
  $Res call({
    Object? studentModel = freezed,
  }) {
    return _then(_$_UpdateScreenState(
      studentModel: studentModel == freezed
          ? _value.studentModel
          : studentModel // ignore: cast_nullable_to_non_nullable
              as StudentModel,
    ));
  }
}

/// @nodoc

class _$_UpdateScreenState implements _UpdateScreenState {
  const _$_UpdateScreenState({required this.studentModel});

  @override
  final StudentModel studentModel;

  @override
  String toString() {
    return 'UpdateScreenState(studentModel: $studentModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateScreenState &&
            const DeepCollectionEquality()
                .equals(other.studentModel, studentModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(studentModel));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateScreenStateCopyWith<_$_UpdateScreenState> get copyWith =>
      __$$_UpdateScreenStateCopyWithImpl<_$_UpdateScreenState>(
          this, _$identity);
}

abstract class _UpdateScreenState implements UpdateScreenState {
  const factory _UpdateScreenState({required final StudentModel studentModel}) =
      _$_UpdateScreenState;

  @override
  StudentModel get studentModel => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateScreenStateCopyWith<_$_UpdateScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
