import 'package:flutter/material.dart';
import 'package:mobile_kit/src/core/widget/gradient_box_decoration.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.item,
    required this.index,
    this.onTapCallback,
  });

  final Widget item;
  final int index;
  final void Function(int)? onTapCallback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 8),
        clipBehavior: Clip.hardEdge,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(14)),
        ),
        child: Container(
          decoration: GradientBoxDecoration.backgroundCardGradient,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: item,
          ),
        ),
      ),
      onTap: onTapCallback != null ? () => onTapCallback!(index) : null,
    );
  }
}