import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../data/repositories/auth_repository.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  AuthRepository authRepository;
  LoginCubit({required this.authRepository})
      : super(LoginInitial());

  Future<void> onPressedLogin(TextEditingController emailController,
      TextEditingController passwordController) async {
    emit(LoginLoading());

    final response = await authRepository.LoginService(emailController.text, passwordController.text);

    print(json.encode(response));

    if (response is bool) {
      emit(LoginCompleted(response));
    } else {
      // emit(LoginError('Error'));
      emit(LoginInitial());
    }
  }
}
