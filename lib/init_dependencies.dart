import 'package:flutter_clean_architecture/core/secrets/app_secret.dart';
import 'package:flutter_clean_architecture/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:flutter_clean_architecture/features/auth/data/reposistories/auth_repository_impl.dart';
import 'package:flutter_clean_architecture/features/auth/domain/repositories/auth_repository.dart';
import 'package:flutter_clean_architecture/features/auth/domain/usecase/user_signup.dart';
import 'package:flutter_clean_architecture/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  final supabase = await Supabase.initialize(
      url: AppSecret.supabaseUrl, anonKey: AppSecret.supabaseAnonKey);

  serviceLocator.registerLazySingleton(() => supabase.client);

  _initAuth();
}

void _initAuth() {
  serviceLocator

    // --datasource
    ..registerFactory<AuthRemoteDatasource>(
        () => AuthRemoteDatasourceImpl(serviceLocator()))

    // --repositry
    ..registerFactory<AuthRepository>(
        () => AuthRepositoryImpl(serviceLocator()))

    // --usecase
    ..registerFactory(() => UserSignup(serviceLocator()))

    // --bloc
    ..registerFactory(() => AuthBloc(userSignup: serviceLocator()));
}
