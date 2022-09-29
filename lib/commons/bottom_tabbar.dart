import 'package:flutter/material.dart';

class BottomTabBar extends StatefulWidget {
  BottomTabBar({Key? key, required this.index, required this.onChangedTab})
      : super(key: key);
  final int index;
  final ValueChanged<int> onChangedTab;
  @override
  _BottomTabBarState createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar> {
  @override
  Widget build(BuildContext context) {
    // final placholder = Opacity(
    //   opacity: 0,
    //   child: IconButton(
    //     onPressed: () {},
    //     icon: Icon(Icons.arrow_drop_down),
    //   ),
    // );
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      // notchMargin: 6,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildTabItem(0, Icon(Icons.home), 'fafaf'),
          buildTabItem(1, Icon(Icons.notifications_paused_outlined), 'fafaf'),
          // placholder,
          buildTabItem(2, Icon(Icons.post_add_rounded), 'fafaf'),
          buildTabItem(3, Icon(Icons.favorite_outline), 'fafaf'),
          buildTabItem(4, Icon(Icons.favorite_outline), 'fafaf'),
        ],
      ),
    );
  }

  Widget buildTabItem(int index, Icon icon, String text) {
    final isSelected = index == widget.index;
    return Column(
      children: [
        IconTheme(
          data: IconThemeData(color: isSelected ? Colors.yellow : Colors.grey),
          child: Column(
            children: [
              IconButton(
                icon: icon,
                iconSize: 28,
                highlightColor: Theme.of(context).primaryColor,
                splashColor: Theme.of(context).colorScheme.secondary,
                onPressed: () => widget.onChangedTab(index),
              ),
            ],
          ),
        ),
        Text(
          text,
          style: TextStyle(color: Colors.red),
        )
      ],
    );
  }
}
