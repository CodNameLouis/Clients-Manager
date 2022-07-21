import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class DefaultTextFormWidget extends StatelessWidget {
  final FocusNode? focusNode;
  final bool enabled;
  final String? labelText;
  final String? hintText;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? formatters;
  final bool obscureText;
  final void Function()? changeIsShowPassword;
  final TextAlign textAlign;
  final TextInputAction? textInputAction;
  final String? helperText;
  final int? maxLength;
  final int maxLines;
  final IconData? prefixIcon;
  final Widget? suffixIcon;
  final bool showSuffixIcon;
  final double paddingHorizontal;
  final double height;
  final double width;

  const DefaultTextFormWidget({
    Key? key,
    this.focusNode,
    this.showSuffixIcon = false,
    this.enabled = true,
    this.labelText,
    this.hintText,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.formatters,
    this.obscureText = false,
    this.changeIsShowPassword,
    this.textAlign = TextAlign.left,
    this.textInputAction,
    this.helperText,
    this.maxLength,
    this.maxLines = 1,
    this.prefixIcon,
    this.suffixIcon = const Icon(
      Icons.info,
      color: Colors.red,
    ),
    this.paddingHorizontal = 0,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.08,
      width: width * 0.9,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(.05),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        maxLines: maxLines,
        textAlign: textAlign,
        focusNode: focusNode,
        enabled: enabled,
        obscureText: obscureText,
        inputFormatters: formatters ?? [],
        validator: validator,
        controller: controller,
        textInputAction: textInputAction,
        keyboardType: keyboardType,
        maxLength: maxLength ?? 200,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
          prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
          border: InputBorder.none,
          hintMaxLines: 1,
          hintStyle: Get.textTheme.bodyText1,
          suffixIcon: showSuffixIcon ? suffixIcon : null,
          labelText: labelText,
          counterText: '',
          hintText: hintText,
          helperText: helperText,
        ),
      ),
    );
  }
}
