import 'package:flutter/material.dart';
import 'package:mobile_kit/src/core/widget/gradient_box_decoration.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.items, required this.onTapCallback});

  final List<Widget> items;
  final void Function(int) onTapCallback;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          child: Card(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            clipBehavior: Clip.hardEdge,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(14)),
            ),
            child: Container(
              decoration: GradientBoxDecoration.backgroundCardGradient,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: items[index],
              ),
            ),
          ),
          onTap: () => onTapCallback(index),
        );
      },
    );
  }
}
