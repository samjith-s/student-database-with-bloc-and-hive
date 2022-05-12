// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/home/home_bloc.dart' as _i7;
import '../../../application/update_screen/update_screen_bloc.dart' as _i8;
import '../../../infrastructure/home/home_service_impl.dart' as _i4;
import '../../../infrastructure/update_screen/update_service_impl.dart' as _i6;
import '../../home/home_service.dart' as _i3;
import '../../update_screen/update_service.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.HomeService>(() => _i4.HomeServiceImpl());
  gh.lazySingleton<_i5.UpdateService>(() => _i6.UpdateServiceImpl());
  gh.factory<_i7.HomeBloc>(() => _i7.HomeBloc(get<_i3.HomeService>()));
  gh.factory<_i8.UpdateScreenBloc>(
      () => _i8.UpdateScreenBloc(get<_i5.UpdateService>()));
  return get;
}
