import 'package:flutter/material.dart';

class AppVerticalDivider extends StatelessWidget {
  const AppVerticalDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const VerticalDivider(
      indent: 3,
      endIndent: 3,
      color: Colors.black,
      thickness: 10,
    );
  }
}