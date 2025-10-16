
import 'package:coffee_design/screens/screens_exports.dart';
import 'package:coffee_design/widgets/design/containers/containers_widget.dart';
import 'package:coffee_design/widgets/export_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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

            menuOption(
              size: size,  
              title: 'Espresso',
              icon: FontAwesomeIcons.mugHot, 
              onTap: () { 
                Navigator.push(context, 
                  MaterialPageRoute(
                    builder: (context) => CoffeeScreen(
                      icon: FontAwesomeIcons.mugHot, 
                      title: 'Espresso', 
                      precioSmall: 10, 
                      precioMedium: 15, 
                      precioLarge: 20,
                    ))
                  ); 
                }
            ),

            Divider(),

            menuOption(
              size: size,  
              title: 'Cappuccino',
              icon: FontAwesomeIcons.mugSaucer, 
              onTap: () {
                Navigator.push(context, 
                  MaterialPageRoute(
                    builder: (context) => CoffeeScreen(
                      icon: FontAwesomeIcons.mugSaucer, 
                      title: 'Cappuccino',
                      precioSmall: 20, 
                      precioMedium: 25, 
                      precioLarge: 30,
                    ))
                  );
              }
            ),

            Divider(),

            menuOption(
              size: size,  
              title: 'Macchiato',
              icon: Icons.coffee_maker, 
              onTap: () { Navigator.pushNamed(context, 'coffee_details'); }
            ),

            Divider(),

            menuOption(
              size: size,  
              title: 'Mocha',
              icon: Icons.coffee_outlined, 
              onTap: () { Navigator.pushNamed(context, 'coffee_details'); }
            ),

            Divider(),

            menuOption(
              size: size,  
              title: 'Latte',
              icon: Icons.local_cafe, 
              onTap: () { Navigator.pushNamed(context, 'coffee_details'); }
            ),

            Divider(),

          ],
        ),
      ),

      

    );
  }
}