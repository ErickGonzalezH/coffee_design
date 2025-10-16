import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:flutter_custom_cards/flutter_custom_cards.dart';

import 'package:coffee_design/constant/colors/colors.dart';
import 'package:coffee_design/widgets/export_widgets.dart';

class CoffeeScreen extends StatefulWidget {
    final IconData icon;
    final String title;
    final int precioSmall;
    final int precioMedium;
    final int precioLarge;
  const CoffeeScreen({super.key, required this.icon, required this.title, required this.precioSmall, required this.precioMedium, required this.precioLarge});

  @override
  State<CoffeeScreen> createState() => _CoffeeScreenState();
}

class _CoffeeScreenState extends State<CoffeeScreen> {

  bool small = false;
  bool medium = false;
  bool large = false;

  int counterSmall = 0;
  int counterMedium = 0;
  int counterLarge = 0;

  int totalSmall = 0;
  int totalMedium = 0;
  int totalLarge = 0;

  int total = 0;

  @override
  Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
    return Scaffold( 

      appBar: AppBar(
        title: customText(
          text: 'Preferences', 
          fontWeight: FontWeight.bold,
          color: Colors.grey.shade700, 
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
        
            Container(
              width: size.width,
              height: size.height * 0.2,
              color: kPrimaryColor,
              child: Icon(widget.icon, size: 60,),
            ),
        
            ListTile(
              title: customText(text: widget.title, size: 20, fontWeight: FontWeight.bold),
              subtitle: customText(
                size: 16, 
                text: small
                  ? '\$${widget.precioSmall} - Small' 
                  : medium
                    ? '\$${widget.precioMedium} - Medium' 
                    : large
                      ? '\$${widget.precioLarge} - Large' 
                      : 'Select a size',
                fontWeight: FontWeight.w400
              ),
              trailing: SizedBox(
                width: size.width * 0.35,
                child: Row(
                  children: [
                    
                    //RESTAR  
                    CustomCard(
                      elevation: 0,
                      borderColor: kSecondaryColor,
                      borderWidth: .5,
                      borderRadius: 100,
                      onTap: () {
                        setState(() {

                          if (small) {
                           
                            if (counterSmall == 0) {
                              counterSmall = 0;
                            } else {
                              totalSmall -= widget.precioSmall;
                              counterSmall--;
                            }

                            total = totalLarge + totalMedium + totalSmall;


                          } else if (medium) {
                            
                            if (counterMedium == 0) {
                              counterMedium = 0;
                            } else {
                              totalMedium -= widget.precioMedium;
                              counterMedium--;
                            }
                            total = totalLarge + totalMedium + totalSmall;


                          } else if (large) {
                            
                            if (counterLarge == 0) {
                              counterLarge = 0;
                            } else {
                              totalLarge -= widget.precioLarge;
                              counterLarge--;
                            }
                            total = totalLarge + totalMedium + totalSmall;

                          } else {
                            total = 0;
                          }
                        });
                      },
                      child: Icon(
                        Icons.remove, 
                        color: Colors.brown[400]
                      ),
                    ),

                    SizedBox(width: 10),

                    customText(
                      text: small
                        ? counterSmall.toString()
                        : medium
                          ? counterMedium.toString()
                          : large
                            ? counterLarge.toString()
                            : '0',
                      size: 20, 
                      fontWeight: FontWeight.bold
                    ),

                    //SUMAR
                    SizedBox(width: 10),

                    CustomCard(
                      elevation: 0,
                      borderWidth: .5,
                      borderRadius: 100,
                      borderColor: kSecondaryColor,
                      onTap: () {
                        setState(() {

                          if (small) {

                            totalSmall += widget.precioSmall;
                            counterSmall++;
                            total = totalLarge + totalMedium + totalSmall;

                          } else if (medium) {

                            totalMedium += widget.precioMedium;
                            counterMedium++;
                            total = totalLarge + totalMedium + totalSmall;

                          } else if (large) {

                            totalLarge += widget.precioLarge;
                            counterLarge++;
                            total = totalLarge + totalMedium + totalSmall;

                          } else {
                            total = 0;
                          }

                        });
                      },
                      child: Icon(
                        Icons.add, 
                        color: Colors.brown[400]
                      ),
                    ),

                  ],
                ),
              ),
            ),
            
            Divider(),

            //SIZE
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SizedBox(
                width: size.width,
                height: size.height * 0.07,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    SizedBox(
                      width: size.width * 0.3,
                      child: customText(text: 'Size', size: 18, fontWeight: FontWeight.bold)
                    ),
                    
                    Row(
                      children: [
                        
                        //SMALL
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              small = !small;
                              medium = false;
                              large = false;
                            });
                          },
                          child: Icon(
                            size: small ? 31 : 30,
                            LineIcons.coffee,
                            color: small ? Colors.brown : Colors.grey,
                          ),
                        ),
                        
                        SizedBox(width: 20),

                        //MEDIUM
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              small = false;
                              medium = !medium;
                              large = false;
                            });
                          },
                          child: Icon(
                            LineIcons.coffee,
                            size: medium ? 36 : 35,
                            color: medium ? Colors.brown : Colors.grey,
                          ),
                        ),

                        SizedBox(width: 20),

                        //LARGE
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              small = false;
                              medium = false;
                              large = !large;
                            });
                          },
                          child: Icon(
                            LineIcons.coffee,
                            size: large ? 41 : 40,
                            color: large ? Colors.brown : Colors.grey,
                          ),
                        ),
                      
                      ],
                    ),

                  ],
                ),
              ),
            ),
            
            Divider(),

            //SUGAR
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SizedBox(
                width: size.width,
                height: size.height * 0.07,
                child: Row(
                  children: [
                    SizedBox(
                      width: size.width * 0.3,
                      child: customText(text: 'Sugar', size: 18, fontWeight: FontWeight.bold)
                    ),
                    Row(
                      children: [
                        Icon(LineIcons.cube, size: 30, color: Colors.grey),
                        SizedBox(width: 20),
                        Icon(LineIcons.cubes, size: 35, color: Colors.grey),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            
            Divider(),

            //ADDITIONS
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SizedBox(
                width: size.width,
                height: size.height * 0.07,
                child: Row(
                  children: [
                    SizedBox(
                      width: size.width * 0.3,
                      child: customText(text: 'Additions', size: 18, fontWeight: FontWeight.bold)
                    ),
                    Row(
                      children: [
                        Icon(widget.icon, size: 30, color: Colors.grey),
                        SizedBox(width: 20),
                        Icon(widget.icon, size: 30, color: Colors.grey),
                        SizedBox(width: 20),
                        Icon(widget.icon, size: 30, color: Colors.grey),
                        SizedBox(width: 20),
                        Icon(widget.icon, size: 30, color: Colors.grey),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            
            Divider(),

            //TOTAL
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customText(text: 'Total', size: 20, fontWeight: FontWeight.bold),
                  customText(text: total.toString(), size: 20, fontWeight: FontWeight.bold, color: Colors.brown[400]),
                ],
              ),
            ),

            //BUTTON
            CustomCard(
              borderRadius: 20,
              color: kSecondaryColor,
              width: size.width * 0.9,
              height: size.height * 0.06,
              elevation: 0,
              child: Center(
                child: customText(
                  text: 'Add to cart', 
                  fontWeight: FontWeight.bold, 
                  color: Colors.white
                ),
              ),
            )
          ],
        ),
      ),
      
    );
  }
}
   