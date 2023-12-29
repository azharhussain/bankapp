import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:bankapp/presentation/forgot_password_screen/models/forgot_password_model.dart';
part 'forgot_password_event.dart';
part 'forgot_password_state.dart';

class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  ForgotPasswordBloc(ForgotPasswordState initialState) : super(initialState) {
    on<ForgotPasswordInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ForgotPasswordInitialEvent event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    emit(state.copyWith(emailController: TextEditingController()));
  }
}
