import 'package:admin/totalbookings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';

import 'admin_page.dart';
import 'commons/bookingcard.dart';
import 'commons/info_card.dart';
import 'models/bookig.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  
  final _controller = ValueNotifier<bool>(false);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
                    elevation: 0,
                    toolbarHeight: 80,
                    automaticallyImplyLeading: false,
                    leading: null,
                    title:Row(
                      children: [

                        Padding(
                      padding: const EdgeInsets.only(top: 8,bottom: 8,right: 8),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color:const Color(0XFFD9D9D9)),
                          borderRadius: BorderRadius.circular(6)
                         ),
                        child:const Icon(Icons.tune)),
                    ),
                        const Text("Admin Dashboard",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 18,
                          fontWeight: FontWeight.w700
                        ),),
                      ],
                    ),
                  actions:const [
                    Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Icon(Icons.person,
                        color: Colors.white,
                        size: 30,),
                      ),
                    )
                  ],
                  ),

      body: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children: [


         const SizedBox(height: 40,),

          Center(
            
            
            // disable with Warning ...Implement Warning dailouge box for user prompt ..

            child: AdvancedSwitch(
            controller: _controller,
            activeColor: Colors.green,
            inactiveColor: Colors.grey,
            activeChild:const Text('Enabled',style: TextStyle(
              fontFamily: 'Poppins'
            ),),
            inactiveChild:const Text('Disabled',
            style: 
            TextStyle(
              fontFamily: 'Poppins'
            ),), 
            borderRadius:const BorderRadius.all(Radius.circular(35)),
            width: 90.0,
            height: 30.0,
            enabled: true,
            disabledOpacity: 0.5,
          ),
          ),

              //Header Cards ----


              const SizedBox(height: 20,),
             
              custom_card(
                child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InfoCard(
                          icon: "assets/icons/ic_book_locker.svg",
                          assetName: "assets/icons/bg_book_locker.svg",
                          title: 'Book\nLocker',
                          subtitle: '',
                          color: Colors.blue,
                        ),
                        GestureDetector(
                          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>TotalBooking())),
                          child: InfoCard(
                            icon: "assets/icons/ic_locker.svg",
                            assetName: "assets/icons/bg_total_booking.svg",
                            title: 'Total\nBooking',
                            subtitle: '183',
                            color: Colors.red,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            
                            // Implement Modal Bottomsheet
                          
                          showModalBottomSheet(
                          isScrollControlled: true,  
                          context: context, 
                          shape:
                            const RoundedRectangleBorder(
                            borderRadius:   BorderRadius.vertical(top:Radius.circular(30) ),
                         
                          ),
                          builder:(context)=>buildsheet(), 
                          )  ;
                        },
                          child: InfoCard(
                            icon: "assets/icons/ic_total_booking.svg",
                            assetName: "assets/icons/bg_locker.svg",
                            title: 'Total\nEmpty Locker',
                            subtitle: '142',
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
              ),
              
              const SizedBox(height: 20,),
              
              const Padding(
                 padding:  EdgeInsets.symmetric(horizontal: 20),
                 child:  Text(
                  'Recent Bookings',
                  style: TextStyle(
                     fontFamily: 'Poppins', 
                    fontSize: 16, fontWeight: FontWeight.bold),
                             ),
               ),
                const SizedBox(height: 20,),
                
                // To Genrate the 
                Expanded(
                  child: ListView.separated(
                    separatorBuilder: (context, _) {
                      return const SizedBox(height: 15,);
                    },
                    itemCount: 6,
                    shrinkWrap: true,
                    itemBuilder: (context,index){
                              
                  // BookingCard is Hardcoded --  Dev --  
                  
                  return  BookingCard(
                  booking: Booking(
                  bookingId: 'KVDBH12345',
                  lockerNos: '521, 522, 523, 524, 525',
                  name: 'Deepak Kumar',
                  mobile: '+91-xxxxxx4411',
                  date: '03/05/2024',
                  slot: '15:00 - 19:00',
                  lockerName: 'Bhawan',
                  qty: 5,
                    )); 
                  }),
                ),                
          ],),
    );
  }
}

Widget buildsheet()=>

Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisSize: MainAxisSize.min,
  children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
        child: Text("Total Empty Lockers",
        style: TextStyle(
          fontFamily: "Poppins",
          fontWeight: FontWeight.bold,
      
          fontSize: 18
        ),),
      ),

      const SizedBox(height: 20,),
      Center(
        child: Text("142",
        style: TextStyle(
          fontFamily: "Poppins",
          fontWeight: FontWeight.bold,
          fontSize: 100
        ),
        ),
      ),
      Center(
        child: Text("Lockers are available now",
        style: TextStyle(
          fontFamily: "Poppins",
          fontWeight: FontWeight.w400,
          fontSize: 18
        ),),
      )
  ],
);