import 'package:el_amal_app/features/home/presentation/views/widgets/nav_bar.dart';
import 'package:el_amal_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/database/cache/cache_helper.dart';
import '../../../../../core/functions/snack_bar.dart';
import '../../../../../core/router/app_router.dart';
import '../../../../../core/services/service_locator.dart';

part 'state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit() : super(SignInInitial());

  final GlobalKey<FormState> formKey = GlobalKey();
  String? email, password;

  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  static SignInCubit of(context) => BlocProvider.of(context);

  login(BuildContext context) {
    formKey.currentState!.save();

    if (formKey.currentState!.validate()) {
      getIt<CacheHelper>().cacheData(key: "user", value: true);
      // showSnackBar("Login Successfully", Colors.green);

      AppRouter.navigateAndPop(const NavBarView());
    } else {
      showSnackBar(S.of(context).login_failed, Colors.red[600]!);
      autovalidateMode = AutovalidateMode.always;
    }
  }
}
