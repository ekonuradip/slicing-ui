// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'module/vacation/vacation_dashboard/bloc/vacation_dashboard_bloc.dart'
    as _i3;
import 'module/vacation/vacation_detail/bloc/vacation_detail_bloc.dart' as _i4;
import 'module/vacation/vacation_intro/bloc/vacation_intro_bloc.dart' as _i5;
import 'module/vacation/vacation_main_navigation/bloc/vacation_main_navigation_bloc.dart'
    as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.VacationDashboardBloc>(_i3.VacationDashboardBloc());
    gh.singleton<_i4.VacationDetailBloc>(_i4.VacationDetailBloc());
    gh.singleton<_i5.VacationIntroBloc>(_i5.VacationIntroBloc());
    gh.singleton<_i6.VacationMainNavigationBloc>(
        _i6.VacationMainNavigationBloc());
    return this;
  }
}
