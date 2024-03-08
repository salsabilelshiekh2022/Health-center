import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'forgot_password_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  ForgotPasswordCubit() : super(ForgotPasswordInitial());
  final GlobalKey<FormState> formKey = GlobalKey();
  String? email;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  static ForgotPasswordCubit of(context) => BlocProvider.of(context);
}
