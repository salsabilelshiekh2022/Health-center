import 'package:el_amal_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/database/cache/cache_helper.dart';
import '../../../../../core/functions/snack_bar.dart';
import '../../../../../core/services/service_locator.dart';
import '../../views/widgets/custom_alert.dart';

part 'state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());

  final GlobalKey<FormState> formKey = GlobalKey();
  String? email, password, name, phone, comfirmPassword;

  final emailFocusNode = FocusNode();
  final nameFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();
  final phoneFocuseNode = FocusNode();
  final comfirmPasswordFocuseNode = FocusNode();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  static SignUpCubit of(context) => BlocProvider.of(context);

  Future<void> register(BuildContext context) async {
    formKey.currentState!.save();
    if (formKey.currentState!.validate()) {
      getIt<CacheHelper>().cacheData(key: "user", value: true);
      // showSnackBar("Register Successfully", Colors.green);
      showDialog(
          context: context,
          builder: (context) {
            return const CustomAlart();
          });
    } else {
      showSnackBar(S.of(context).register_failed, Colors.red[600]!);
      autovalidateMode = AutovalidateMode.always;
    }
  }
}
