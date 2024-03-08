import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';
import '../../../data/payment_method_model.dart';

class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem(
      {super.key, required this.paymentMethodModel, required this.isSelected});

  final PaymentMethodModel paymentMethodModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.only(start: 14),
      width: double.infinity,
      height: 90,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 2,
            strokeAlign: BorderSide.strokeAlignCenter,
            color: AppColors.primaryColor,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            paymentMethodModel.image,
            width: 70,
            height: 42,
          ),
          const SizedBox(
            width: 18,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                paymentMethodModel.cardNumber,
                style: TextStyles.font14DarkBlue400,
              ),
              (paymentMethodModel.cardNumber == "Cash payment")
                  ? const SizedBox()
                  : Text(
                      "Expires ${paymentMethodModel.expiredDate}",
                      style: TextStyles.font10grey500
                          .copyWith(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
              isSelected
                  ? Text(
                      S.of(context).current_method,
                      style: TextStyles.font10grey500
                          .copyWith(fontSize: 14, fontWeight: FontWeight.w400),
                    )
                  : const SizedBox()
            ],
          ),
          const SizedBox(
            width: 50,
          ),
          isSelected
              ? const Icon(
                  Icons.check_circle_rounded,
                  size: 30,
                  color: AppColors.primaryColor,
                )
              : const SizedBox()
        ],
      ),
    );
  }
}
