import 'package:mobile_kit/src/util/optional.dart';

String? validatePassword(String? value) {
  return value?.isNotEmpty == true ? null : '*Password is required';
}

String? validateEmail(String? value, {bool optional = false}) {
  if (optional && value.orEmpty.isEmpty) {
    return null;
  }
  const pattern = r'[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}';
  final RegExp regExp = RegExp(pattern);
  if (value?.isEmpty == true) {
    return '*Email is required';
  } else if (!regExp.hasMatch(value!)) {
    return 'Email must be in the format \'name@domain.com';
  }
  return null;
}