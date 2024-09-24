import 'package:flutter/material.dart';

class Customappbar extends StatelessWidget implements PreferredSizeWidget {

  @override
  Size get preferredSize => const Size.fromHeight(65);

  final String text;
  final Color? backgroundclr;
  final bool? centerTitle;
  final void Function()? onpressed;
  final IconData? icon;

  const Customappbar({
    super.key,
    required this.text,
    this.backgroundclr,
    this.centerTitle,
    this.icon,
    this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        text, style:  const TextStyle(
        color: Colors.white,
        fontSize: 26,
        fontWeight: FontWeight.bold
      ),),
      backgroundColor: backgroundclr,
      centerTitle: centerTitle,
      actions: [
        IconButton(onPressed: onpressed, icon: Icon(icon, color: Colors.white,)),
      ],
    );
  }
}
