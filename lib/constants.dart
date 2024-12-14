

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color primaryColor = Color(0xffe86b10);
const Color backGroundOrange = Color(0xfffdf9f7);
const double defaultContainerPadding = 25.0;

class ModallSheet extends StatefulWidget {
  const ModallSheet({
    super.key,
  });

  @override
  State<ModallSheet> createState() => _ModallSheetState();
}

class _ModallSheetState extends State<ModallSheet> {
  String selectedOption = "Medium - 9\"";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: MediaQuery.of(context).size.height * 0.8,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Classic Pepperoni",
                style: GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              const Spacer(),
              IconButton(onPressed: (){}, icon: const Icon(Icons.close,color: Colors.black,)),
            ],
          ),
          const SizedBox(height: 20),
           subtitle("Choose Size"),
           option("Small - 6\""),
           option("Medium - 9\""),
           option("Large - 11\""),
           subtitle("Pick Crust"),
           option2("Hard Crust"),
           option2("Soft Italian Crust"),
          Spacer(),

          Container(margin: EdgeInsets.symmetric(vertical: 20),height: 1,width: MediaQuery.of(context).size.width,color: Colors.grey,),

          Row(
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  decoration: BoxDecoration(color: primaryColor,borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 30),
                    child: Text("+ ADD TO CART",
                    style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w500),),
                  ),
                ),
              ),

              Spacer(),

              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text("Item Total",
                    style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 15),),
SizedBox(height: 10,),
                  Text("\$23.55",
                    style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 20),),
   


              ],)
            ],
          ),
        ],
      ),
    );
  }

  Widget option(String name) {

    bool isSelected = selectedOption == name;

    return Padding(
           padding: const EdgeInsets.only(bottom: 10),
           child: GestureDetector(
            onTap: () {
              setState(() {
                selectedOption = name;
              });
            },
             child: Row(children: [
             
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child:isSelected ? Icon(Icons.circle,color: primaryColor,)  : Icon(Icons.circle_outlined,color: Color(0xffcccdcd),),
              ),
             
              Text(name,style: GoogleFonts.inter(fontSize: 13,fontWeight: FontWeight.w400),),
              Spacer(),
              Text("\$12",style: GoogleFonts.inter(fontSize: 13,fontWeight: FontWeight.w400),),
             
              
             ],),
           ),
         );
  }

  Padding option2(String name) {

    return Padding(
           padding: const EdgeInsets.only(bottom: 10),
           child: Row(children: [
           
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Icon(Icons.circle_outlined,color: Color(0xffcccdcd),),
            ),
           
            Text(name,style: GoogleFonts.inter(fontSize: 13,fontWeight: FontWeight.w400),),
           
           
            
           ],),
         );
  }

  Widget subtitle(String name) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
            children: [
              Text(
                name,
                style: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w700),
              ),
              const Spacer(),
              Container(
      
      decoration: BoxDecoration(
        color: const Color(0xffd30e0d).withOpacity(0.1),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 8),
        child: Text("REQUIRED",style: GoogleFonts.poppins(color: const Color(0xffd30e0d),fontSize: 10,fontWeight: FontWeight.w600),),
      ),
        ),
            ],
          ),
    );
  }
}