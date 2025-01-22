import 'package:flutter/material.dart';
import 'package:mobile_kit/src/core/resources/colors.dart';


class CardWidget extends StatefulWidget {
  const CardWidget({super.key, required this.items, required this.onTapCallback});

  final List<Widget> items;
  final void Function(int) onTapCallback;

  @override
  State<StatefulWidget> createState() => CardWidgetState();
}

class CardWidgetState extends State<CardWidget> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: widget.items.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          child: Card(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            clipBehavior: Clip.hardEdge,
            color: ColorPalette.greyBackground,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(14)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child:  widget.items[index],
            ),
          ),
          onTap: () => widget.onTapCallback(index),
        );
      },
    );
  }
}
