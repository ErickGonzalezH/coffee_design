import 'package:coffee_design/widgets/export_widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: customText(
          text: 'Menu', 
          fontWeight: FontWeight.bold,
          color: Colors.grey.shade500, 
        )
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(),
            ListTile(
              leading: Icon(Icons.coffee_outlined, size: 40, color: Colors.brown[400]),
              title: customText(text: 'Espresso', size: 20, fontWeight: FontWeight.bold),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.coffee_maker, size: 40, color: Colors.brown[400]),
              title: customText(text: 'Cappuccino', size: 20, fontWeight: FontWeight.bold),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.coffee_outlined, size: 40, color: Colors.brown[400]),
              title: customText(text: 'Macchiato', size: 20, fontWeight: FontWeight.bold),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.coffee_maker, size: 40, color: Colors.brown[400]),
              title: customText(text: 'Cappuccino', size: 20, fontWeight: FontWeight.bold),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.coffee_outlined, size: 40, color: Colors.brown[400]),
              title: customText(text: 'Macchiato', size: 20, fontWeight: FontWeight.bold),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(),
          ],
        ),
      ),

    );
  }
}