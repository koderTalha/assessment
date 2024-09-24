import 'package:assessment/Utils/Custom%20Widget/CustomListtile.dart';
import 'package:flutter/material.dart';

class Customcard extends StatelessWidget {

  final int? userID;
  final int? id;
  final String title;
  final String subtitle;


  const Customcard({
    super.key,
    required this.id,
    required this.title,
    required this.userID,
    required  this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.yellow.withOpacity(0.4),
        child: Customlisttile(id: id, title: title, userID: userID, subtitle: subtitle),
      ),
    );
  }
}
