import 'package:flutter/material.dart';

import 'package:coffee_design/widgets/export_widgets.dart';

Widget menuOption({
  required Size size, 
  required String title,
  required IconData icon, 
  required void Function() onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: SizedBox(
      height: size.height * 0.1,
      child: Center(
        child: ListTile(
          leading: Icon(icon, size: 38, color: Colors.brown[400]),
          title: customText(text: title, size: 20, fontWeight: FontWeight.bold),
          trailing: Icon(Icons.arrow_forward_ios, size: 20, color: Colors.brown[400]),
        ),
      ),
    ),
  );
}