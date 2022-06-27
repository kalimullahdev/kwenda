// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'blocs/auth/auth_bloc.dart' as _i3;
import 'blocs/auth/sign_in_form/sign_in_form_bloc.dart' as _i9;
import 'blocs/kwendat/dashboard/dashboard_bloc.dart' as _i11;
import 'blocs/kwendat/group_transaction/group_transaction_bloc.dart' as _i8;
import 'blocs/kwendat/users_balance/users_balance_bloc.dart' as _i10;
import 'repository/auth/firebase_auth.dart' as _i4;
import 'repository/core/firebase_injectable_module.dart' as _i12;
import 'repository/kwenda/firebase_firestore_repo.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.factory<_i3.AuthBloc>(() => _i3.AuthBloc(get<_i4.FirebaseAuthRepo>()));
  gh.lazySingleton<_i5.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuthhhhhhh);
  gh.lazySingleton<_i6.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i7.FirebaseFirestoreRepo>(
      () => _i7.FirebaseFirestoreRepo(get<_i6.FirebaseFirestore>()));
  gh.factory<_i8.GroupTransactionBloc>(
      () => _i8.GroupTransactionBloc(get<_i7.FirebaseFirestoreRepo>()));
  gh.factory<_i9.SignInFormBloc>(
      () => _i9.SignInFormBloc(get<_i4.FirebaseAuthRepo>()));
  gh.factory<_i10.UsersBalanceBloc>(
      () => _i10.UsersBalanceBloc(get<_i7.FirebaseFirestoreRepo>()));
  gh.factory<_i11.DashboardBloc>(
      () => _i11.DashboardBloc(get<_i7.FirebaseFirestoreRepo>()));
  return get;
}

class _$FirebaseInjectableModule extends _i12.FirebaseInjectableModule {}
