import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_kit/src/core/resources/assets.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    this.controller,
    this.hint,
    this.keyboardType,
    this.textInputAction,
    this.textInputFormatters,
    this.errorText,
    this.onFieldSubmitted,
    this.onTextChanged,
    this.textStyle,
    this.textAlign = TextAlign.start,
    this.filled,
    this.horizontalPadding,
    this.maxLines = 1,
    this.onEyePressed,
    this.shouldShowEyeIcon,
    this.onOffEyeIcon,
    this.obscureText,
    this.useOtp,
    this.autofocus = false,
    this.prefixIconName,
    this.prefixIconColor,
    super.key,
  });

  final TextEditingController? controller;
  final String? hint;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? textInputFormatters;
  final String? errorText;
  final Function(String text)? onFieldSubmitted;
  final Function(String text)? onTextChanged;
  final bool? shouldShowEyeIcon;
  final bool? onOffEyeIcon;
  final void Function()? onEyePressed;
  final String? prefixIconName;
  final Color? prefixIconColor;
  final TextStyle? textStyle;
  final TextAlign textAlign;
  final bool? filled;
  final double? horizontalPadding;
  final int? maxLines;
  final bool? obscureText;
  final bool? useOtp;
  final bool autofocus;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: textInputAction,
      controller: controller,
      // cursorColor: Colors.white,
      style: textStyle ??
          const TextStyle(
            // color: Colors.white,
            fontSize: 16.0,
          ),
      keyboardType: keyboardType,
      obscureText: obscureText == true,
      autofillHints: useOtp == true ? const [AutofillHints.oneTimeCode] : null,
      inputFormatters: textInputFormatters,
      textAlign: textAlign,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.grey),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.redAccent),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.blueAccent),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.redAccent),
        ),
        hintText: hint,
        errorText: errorText,
        errorMaxLines: 3,
        contentPadding: EdgeInsets.only(
            top: 12,
            left: horizontalPadding ?? 12,
            right: horizontalPadding ?? 12),
        filled: filled,
        prefixIcon: prefixIconName != null
            ? Center(
                child: SvgPicture.asset(
                  prefixIconName!,
                  package: assetsPackage,
                ),
              )
            : null,
        prefixIconColor: prefixIconColor,
        prefixIconConstraints: BoxConstraints.tight(const Size.square(48)),
        suffixIcon: shouldShowEyeIcon == true
            ? ExcludeFocusTraversal(
                child: IconButton(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  icon: onOffEyeIcon == true
                      ? const Icon(Icons.visibility_off, color: Colors.grey)
                      : const Icon(Icons.visibility, color: Colors.grey),
                  onPressed: onEyePressed,
                ),
              )
            : null,
      ),
      onFieldSubmitted: onFieldSubmitted,
      onChanged: onTextChanged,
      maxLines: maxLines,
      autofocus: autofocus,
    );
  }
}
