import 'package:flutter/material.dart';

import '../../../data/payment_method_model.dart';
import 'payment_method_item.dart';

class ListOfPaymentMethod extends StatefulWidget {
  const ListOfPaymentMethod({super.key});

  @override
  State<ListOfPaymentMethod> createState() => _ListOfPaymentMethodState();
}

class _ListOfPaymentMethodState extends State<ListOfPaymentMethod> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 3,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsetsDirectional.only(bottom: 20),
          child: GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = index;
              });
            },
            child: PaymentMethodItem(
              paymentMethodModel: paymentMethodDummyData[index],
              isSelected: currentIndex == index,
            ),
          ),
        );
      },
    );
  }
}
