import 'package:admin/admin_page.dart';
import 'package:admin/utils/constatnts/colors.dart';
import 'package:flutter/material.dart';

class BookLocker extends StatefulWidget {
  
 
  @override
  State<BookLocker> createState() => _BookLockerState();
}

class _BookLockerState extends State<BookLocker> {
  List<String> timeSlots = [
    '15:00-19:00',
    '15:30-19:30',
    '15:30-19:30',
    '15:30-19:30',
    '15:30-19:30',
    '15:30-19:30',

    // Add more time slots as needed
  
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
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
                      const Text('Book Locker',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold
                      ),),
                    ],
                  ),


  
                ),
        backgroundColor: Tcolors.scaffoldclr_admin,
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Column(
              mainAxisSize: MainAxisSize.max,
              // User Profile
              children: [
               
              const SizedBox(height: 10),
                
                // hieght is Hardcoded .........
                
                custom_card(
                  height: 400,
                  child: Padding(
                    padding:
                      const EdgeInsets.symmetric(horizontal: 12.0, vertical: 22),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 35),
                            // Add padding here
                            labelText: 'First Name',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)),
                          ),
                        ),
                       const SizedBox(height: 12),
                        TextField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 35),
                            // Add padding here
                            labelText: 'Last Name',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)),
                          ),
                        ),
                       const SizedBox(height: 12),
                        TextField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 35),
                            // Add padding here
                            labelText: 'Mobile No',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)),
                          ),
                        ),
                      const  SizedBox(height: 12),
                        TextField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 35),
                            // Add padding here
                            labelText: 'Address/City',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)),
                          ),
                        ),
                       const SizedBox(height: 12),
                        TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 35),
                            // Add padding here
                            labelText: 'No. of Lockers',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              const  SizedBox(height: 20),            
                const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          'Available Slots',
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Text(
                        'Available Lockers (143)',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ]),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
          child: GridView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 10,mainAxisSpacing: 0,mainAxisExtent: 50,crossAxisCount: 3),
              children: timeSlots.map((timeSlot) => createSlotRow(timeSlot,false)).toList(),
          ),
        ),


             const SizedBox(height: 20,),
                custom_card(
                  height: 240,
                  child: Padding(
                    padding:const EdgeInsets.symmetric(horizontal: 12.0,vertical: 22),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       const Text("Do you have a promo Code?",style: TextStyle(fontSize: 18,fontFamily: "Poppins",fontWeight: FontWeight.bold),),
                       const SizedBox(height: 20,),
                        TextField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 35),
                                //Add padding here
                            labelText: 'Enter Your Promo Code',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)),
                          ),
                        ),
                       const SizedBox(height: 20,),
                        
                        
                        Container(
                          height: 54,
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              // Add your onPressed code here!
                            },
                            style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          side: BorderSide.none,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50)
          )
                            ),
                            child:const Text(
                              'Apply promo code',
                              style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),


                      ],
                    ),
                  ),
                ),
              const  SizedBox(height: 30),
               const Row(

                  children: [
                    SizedBox(width: 12),
                    Text("Total Payable Amount",style: TextStyle(fontSize: 18,fontFamily: "Poppins",fontWeight: FontWeight.bold),),
                  ],
                ),
              const  SizedBox(height: 20),
                const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          '4 Hours',
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 15,),
                        ),
                      ),
                      Text(
                        'Rs.40',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ]),
               const SizedBox(height: 20),
                Container(
                  height: 54,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your onPressed code here!
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      side: BorderSide.none,
      
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27),
                      ),
                    ),
                    child:const Text(
                      'Proceed to Book',
                      style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ]),
        ));
  }

  ChoiceChip createSlotRow(String timeSlot,bool isSelected ) {
    return  ChoiceChip(
        padding:const EdgeInsets.all(5.0),
        showCheckmark: false,
        selectedColor:const Color.fromRGBO(8, 14, 30, 1),
        backgroundColor:const Color.fromRGBO(8, 14, 30, 0.6),
        onSelected: (value) {

        },
        label: Text(
          timeSlot,
          style:const TextStyle(fontSize: 14,
              color: Colors.white,fontWeight: FontWeight.w500, fontFamily: "Poppins"),
        ),
        selected: isSelected);

  }
}