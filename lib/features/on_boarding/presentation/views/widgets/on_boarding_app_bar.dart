import 'package:el_amal_app/core/database/cache/cache_helper.dart';
import 'package:el_amal_app/core/router/app_router.dart';
import 'package:el_amal_app/core/services/service_locator.dart';
import 'package:el_amal_app/features/auth/presentation/views/sign_in_view.dart';
import 'package:el_amal_app/features/on_boarding/data/models/on_boarding_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/bloc/global_cubit/global_cubit.dart';
import '../../../../../core/widgets/app_text.dart';
import '../../../../../generated/l10n.dart';

class OnBoardingAppBar extends StatelessWidget {
  const OnBoardingAppBar({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GlobalCubit, GlobalState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  GlobalCubit.of(context).changeLang();
                },
                child: AppText(
                  text: GlobalCubit.of(context).isArabic ? 'EN' : 'AR',
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
              index == onBoardingDummyData(context).length - 1
                  ? const SizedBox()
                  : InkWell(
                      onTap: () {
                        getIt<CacheHelper>()
                            .cacheData(key: "isOnBoardingVisited", value: true);
                        AppRouter.navigateAndPop(const SignInView());
                      },
                      child: AppText(
                        text: S.of(context).skip,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
            ],
          ),
        );
      },
    );
  }
}
