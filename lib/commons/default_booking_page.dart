import 'package:admin/admin_page.dart';
import 'package:admin/utils/constatnts/Image_strings.dart';
import 'package:flutter/material.dart';

import '../utils/constatnts/colors.dart';


class DefaultBookingPage extends StatelessWidget {
  const DefaultBookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Tcolors.scaffoldclr_admin,
      appBar: AppBar(
                    toolbarHeight: 80,
                    elevation: 0,
                    backgroundColor: const Color.fromRGBO(247, 246, 240, 1),
                    leading: null,
                    automaticallyImplyLeading: false, 
                    title: Row(
                    children: [
                     Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(8.0),
                       border: Border.all(color:const Color(0XFFD9D9D9))   
                      ),
                      child:const Center(child: Icon(Icons.arrow_back)),
                     ),

                   const  SizedBox(width: 20,), 
                      const Text('My Bookings',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold
                      ),),
                    ],
                  ),
 
 
                ),
 
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: 
              custom_card(
               height: MediaQuery.of(context).size.height/2, 
                child: Column(
              
                children: [
                //use Your Own Image           
              const SizedBox(height: 20,),
              Image.asset(TImages.defualt_scan_qr),
              const SizedBox(height: 20,),
               
              const  Text("No Lockers Booked Yet"
                ,style: 
                  TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    letterSpacing: 0.1
                  )
                ,),   
                const SizedBox(height: 20,),
                
                           const   Text("Book Your Favourite Locker Through Book Locker",style: 
                  TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    letterSpacing: 0.1
                  )),
              
                const SizedBox(height: 20,),
                        
                ElevatedButton(
                  
                  style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                  backgroundColor: Tcolors.textheadlineclr,
                  side: BorderSide.none,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                   
                    
                  )
                  ),
                  onPressed: 
                 (){},child:Text(" GO TO BOOK LOCKER",style: 
                  TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    letterSpacing: 0.1
                  )))
                ],
              )) ),
        
    );
  }
}