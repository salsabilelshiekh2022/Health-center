import 'package:el_amal_app/core/router/app_router.dart';
import 'package:el_amal_app/core/utils/app_text_styles.dart';
import 'package:el_amal_app/core/widgets/mini_button.dart';
import 'package:el_amal_app/generated/l10n.dart';
import 'package:flutter/material.dart';

import 'success_appointment_view.dart';
import 'widgets/list_of_payment_method.dart';

class PaymentOptionView extends StatelessWidget {
  const PaymentOptionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.close_rounded,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              S.of(context).add,
              style: TextStyles.font16White400,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(top: 14, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).payment_methods,
                style: TextStyles.font36DarkBlue600
                    .copyWith(fontSize: 28, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                S.of(context).choose_payment,
                style: TextStyles.font14DarkBlue400.copyWith(fontSize: 12),
              ),
              const SizedBox(
                height: 40,
              ),
              const ListOfPaymentMethod(),
              const SizedBox(
                height: 80,
              ),
              Center(
                child: MiniButton(
                  title: S.of(context).done,
                  onTap: () {
                    AppRouter.navigateTo(const SuccessAppointmentView());
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
