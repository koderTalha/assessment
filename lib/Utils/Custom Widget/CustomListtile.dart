import 'package:flutter/material.dart';

class Customlisttile extends StatelessWidget {

  final int? userID;
  final int? id;
  final String title;
  final String subtitle;



  const Customlisttile({
    super.key,
    required this.id,
    required this.title,
    required this.userID,
    required  this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Id: ${id.toString()}"),
          Text("Title: ${title}", style: const TextStyle(
            fontWeight: FontWeight.w400,
          ),),
        ],
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("UserId: ${userID.toString()}"),
          Text("Body: ${subtitle}", style: const TextStyle(
            fontWeight: FontWeight.w400,
          ),),
        ],
      ),
    );
  }
}
