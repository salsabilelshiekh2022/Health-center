import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/bloc/global_cubit/global_cubit.dart';
import '../core/router/app_router.dart';
import '../core/theme/app_theme.dart';
import '../core/utils/app_constatnts.dart';
import '../features/splash/presentation/views/splash_view.dart';
import '../generated/l10n.dart';

class Elamal extends StatelessWidget {
  const Elamal({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GlobalCubit(),
      child: BlocBuilder<GlobalCubit, GlobalState>(
        builder: (context, state) {
          return ScreenUtilInit(
            designSize: const Size(428, 926),
            minTextAdapt: true,
            child: MaterialApp(
              locale: const Locale('en'
                  //getIt<CacheHelper>().getData(key: "lang") ?? 'en'
                  ),
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              debugShowCheckedModeBanner: false,
              scaffoldMessengerKey: scaffoldKey,
              navigatorKey: navigatorKey,
              theme: appTheme(),
              onGenerateRoute: onGenerate,
              home: const SplashView(),
            ),
          );
        },
      ),
    );
  }
}
