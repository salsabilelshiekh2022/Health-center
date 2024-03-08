import 'package:el_amal_app/core/utils/app_assets.dart';

class PaymentMethodModel {
  final String image;
  final String cardNumber;
  final String expiredDate;

  PaymentMethodModel(
      {required this.image,
      required this.cardNumber,
      required this.expiredDate});
}

List<PaymentMethodModel> paymentMethodDummyData = [
  PaymentMethodModel(
    image: AppAssets.imagesMasterCard,
    cardNumber: "**** **** **** 5967",
    expiredDate: "09/25",
  ),
  PaymentMethodModel(
    image: AppAssets.imagesVisa,
    cardNumber: "**** **** **** 5967",
    expiredDate: "09/25",
  ),
  PaymentMethodModel(
    image: AppAssets.imagesCash,
    cardNumber: "Cash payment",
    expiredDate: "",
  ),
];
