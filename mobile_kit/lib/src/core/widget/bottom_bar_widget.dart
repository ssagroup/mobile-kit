import 'package:flutter/material.dart';
import 'package:mobile_kit/src/core/resources/colors.dart';
import 'package:mobile_kit/src/core/widget/gradient_box_decoration.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:mobile_kit/src/core/util/optional.dart';

class BottomBarWidget extends StatelessWidget {
  final int selectedIndex;
  final double tabWidth;
  final double inset;
  final List<PersistentBottomNavBarItem> items;
  final ValueChanged<int> onItemSelected;

  BottomBarWidget({
    required this.selectedIndex,
    required this.tabWidth,
    required this.inset,
    required this.items,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: items.map((item) {
        int index = items.indexOf(item);
        return GestureDetector(
          onTap: () {
            onItemSelected(index);
          },
          child: _buildItem(item, selectedIndex == index, tabWidth),
        );
      }).toList(),
    );
  }

  Widget _buildItem(PersistentBottomNavBarItem item, bool isSelected, double tabWidth) {
    return Container(
      alignment: Alignment.center,
      width: tabWidth,
      margin: EdgeInsets.only(left: inset, right: inset, bottom: 2 * inset, top: inset),
      decoration: GradientBoxDecoration.backgroundBottomBarGradient(isSelected),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconTheme(
            data: IconThemeData(color: isSelected ? item.activeColorPrimary : item.inactiveColorPrimary),
            child: item.icon,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Text(
              item.title.orEmpty,
              style: TextStyle(
                color: isSelected ? item.activeColorPrimary : item.inactiveColorPrimary,
                fontWeight: FontWeight.w400,
                fontSize: 12.0,
                decorationColor: isSelected ? Colors.white : ColorPalette.grayBackground,
              ),
            ),
          )
        ],
      ),
    );
  }
}