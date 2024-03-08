import 'package:el_amal_app/core/utils/app_colors.dart';
import 'package:el_amal_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    this.hintText,
    this.validator,
    this.onSave,
    this.secure = false,
    this.focusNode,
    this.onEditingComplete,
    this.textInputAction,
    this.keyBoardType,
    this.lable,
    this.icon,
    this.fill = true,
    this.borderColor = Colors.white,
    this.prefixIconColor = Colors.white,
    this.fillColor = AppColors.primaryColor,
  });
  final bool secure;
  final String? hintText;
  final String? Function(String?)? validator;

  final void Function(String?)? onSave;

  final FocusNode? focusNode;
  final String? lable;
  final TextInputType? keyBoardType;

  final VoidCallback? onEditingComplete;
  final TextInputAction? textInputAction;
  final IconData? icon;
  final bool? fill;
  final Color borderColor;
  final Color prefixIconColor;
  final Color fillColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadiusDirectional.circular(14),
      child: Container(
        color: fillColor,
        child: TextFormField(
          keyboardType: keyBoardType,
          obscureText: secure,
          cursorColor: borderColor,
          onSaved: onSave,

          style: TextStyle(color: borderColor),

          focusNode: focusNode,
          onEditingComplete: onEditingComplete,
          textInputAction: textInputAction,
          validator: validator, //
          decoration: InputDecoration(
            hintText: hintText,
            label: Text(
              lable ?? "",
              style: TextStyles.font16White400,
            ),
            fillColor: AppColors.primaryColor,
            filled: fill,
            prefixIcon: Icon(icon),
            prefixIconColor: prefixIconColor,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14.0),
              borderSide: const BorderSide(
                color: Colors.white,
              ),
            ),
            enabledBorder: inputBorder(borderColor),
            focusedBorder: inputBorder(borderColor),
            errorBorder: inputBorder(Colors.red[600]!),
            focusedErrorBorder: inputBorder(Colors.red[600]!),
            disabledBorder: inputBorder(borderColor),
          ),
        ),
      ),
    );
  }
}

InputBorder inputBorder(Color color) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(14.0),
    borderSide: BorderSide(color: color),
  );
}
