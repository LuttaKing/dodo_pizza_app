// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dodo_pizza_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List categories = [
    {"name":"Pizza","image":"assets/image/pizza.png"},
     {"name":"Salad","image":"assets/image/pizza.png"},
      {"name":"Sides","image":"assets/image/pizza.png"},
       {"name":"Salad","image":"assets/image/pizza.png"},
    
    ];

    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: backGroundOrange,

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(children: [
          
          Container(
            color: backGroundOrange,
            child: Column(children: [
           appBarr(),
        
            locationBar(),
        
            categoriesBar(),
        
             SizedBox(height: 25,),
        
            ],),),
         
        
           
        
            Container(
              color: Colors.white,
              child: Column(children: [ 
                PizzaItem(),
        
                 PizzaItem(),
        
                  PizzaItem(),
        
                    PizzaItem(),
              
              ],)),
        
           
        
            
        
          
          
            
          
          
          ],),
        ),
      ),
    );
  }

  SingleChildScrollView categoriesBar() {
    return SingleChildScrollView(scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            
            children: categories.map((category) {
            return   Container(
              margin: EdgeInsets.only(right: 20),
            padding: EdgeInsets.all(8),
             decoration: BoxDecoration(
              border: Border.all(
                color:category["name"] == "Pizza" ? Color(0xffeb7929) : Colors.transparent, 
                width: 1.5, 
              ),
              borderRadius: BorderRadius.circular(12.0), // Optional rounded corners
            ),
            child: Column(
              children: [
                SizedBox(width: 60,height: 60,child: Image.asset(category["image"])),
            
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(category["name"],style: GoogleFonts.robotoFlex(fontWeight: FontWeight.w600,fontSize: 14),),
                ),
              ],
            ),
          );
          },).toList()
          
          ),
        ),
        );
  }

  Container locationBar() {
    return Container(
          margin: EdgeInsets.only(top: 15,bottom: 18,right: 20,left: 20),
          decoration: BoxDecoration(
            color: Color(0xfffff0e6),
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("27 Hola Street, California, USA", style: GoogleFonts.inter(color: primaryColor,fontWeight:FontWeight.w700,fontSize: 12),),
              Spacer(),

                  SvgPicture.asset(
      "assets/svg/location.svg",
      height: 15,
    ),


              
              ],
            ),
          ));
  }

  Widget appBarr() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(children: [
        
            SvgPicture.asset(
          "assets/svg/menu.svg",
          height: 25,
        ),
        
           Padding(
             padding: const EdgeInsets.only(left: 10,right: 4),
             child: SizedBox(width: 43,height: 45,child: Image.asset("assets/image/pizz.png")),
           ),
        
        Text("DODO PIZZA",style: GoogleFonts.outfit(fontWeight: FontWeight.bold,fontSize: 17),),
        
        Spacer(),
        
        Row(children: [Text("DELIVERY ",style: GoogleFonts.outfit(fontWeight: FontWeight.w600,fontSize: 12,color: primaryColor),),
         Icon(Icons.arrow_drop_down,color: primaryColor,)],)
        
        
        
          ],),
    );
  }
}

class PizzaItem extends StatelessWidget {
  const PizzaItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, left: 20,right: 20),
      child: Stack(
        
        children: [
      
            Container(
      decoration: BoxDecoration(
      
          gradient: LinearGradient(
          colors: [Color(0xfffff8f2), Colors.white], // Gradient colors
          begin: Alignment.topLeft, // Starting point
          end: Alignment.bottomRight, // Ending point
        ),
        borderRadius: BorderRadius.circular(15),
      ),
              child: 
          Row(crossAxisAlignment: CrossAxisAlignment.end,
            children: [
      
              Spacer(),
            
          
              SizedBox(width: 5,),
          
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                Text("Margarita",style: GoogleFonts.inter(fontWeight: FontWeight.w700,fontSize: 15),),
          
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: SizedBox(width: 200,child: Text("Cheese | Toppings on the side | Onion | Tomato",style: GoogleFonts.inter(fontWeight: FontWeight.w300,fontSize: 10),)),
                ),
          
          Text("\$12", style: GoogleFonts.inter(fontWeight: FontWeight.w700,fontSize: 12),),
          SizedBox(height: 10,),
              ],),
          
              Container(
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15), bottomRight: Radius.circular(15))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(" + ADD ",style: GoogleFonts.inter(color: Colors.white,fontSize: 10,fontWeight: FontWeight.w600),),
                ),
              ),
            ],
          ),
            ),
      
      
            Positioned(
  left: -60,
  top: -30,
  child: ClipRRect(
    borderRadius: BorderRadius.circular(15), // Same radius as the container
    child: SizedBox(
      width: 140,
      height: 140,
      child: Image.asset(
        "assets/image/pizza.png",
        fit: BoxFit.cover, // Ensure the image covers the area
      ),
    ),
  ),
),

        ],
      ),
    );
  }
}