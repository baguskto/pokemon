import 'package:flutter/material.dart';

class WidgetAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Color? background;

  const WidgetAppBar({Key? key, this.title, this.background}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: background ?? Colors.white,
      elevation: 0,
      shadowColor: Colors.transparent,
      title: Text(
        title ?? '',
        style: const TextStyle(
          color: Colors.black54,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
