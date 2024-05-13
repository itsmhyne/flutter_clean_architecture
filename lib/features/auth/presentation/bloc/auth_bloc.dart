import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_clean_architecture/features/auth/domain/entities/user.dart';
import 'package:flutter_clean_architecture/features/auth/domain/usecase/user_signup.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final UserSignup _userSignup;

  AuthBloc({required UserSignup userSignup})
      : _userSignup = userSignup,
        super(AuthInitial()) {
    on<AuthSignup>(_onAuthSignup);
  }

  FutureOr<void> _onAuthSignup(
      AuthSignup event, Emitter<AuthState> emit) async {
    final response = await _userSignup(UserSignupParams(
        name: event.name, email: event.email, password: event.password));

    response.fold((failure) => emit(AuthFailure(failure.message)),
        (user) => emit(AuthSuccess(user)));
  }
}
