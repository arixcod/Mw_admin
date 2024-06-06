import 'package:admin/admin_page.dart';
import 'package:admin/utils/constatnts/colors.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {


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
                      const Text('Search Bookings',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold
                      ),),
                    ],
                  ),
 
 
                ),
 
        body: Column(
          children: [
          const  SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Container(
                width: double.infinity,
                padding:const EdgeInsets.symmetric(vertical: 10,horizontal: 8),
                decoration: BoxDecoration(
                  color: Tcolors.Appwhite,
                  borderRadius: BorderRadius.circular(10)
                ),
                child:const IntrinsicHeight(
                  child: Row(
                    children: [
                      Text("Search with Mobile No./ Booking ID/ Locker No.",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0XFFb64646E)
                      ),
                      ),
                      VerticalDivider(),
                      Icon(Icons.search)
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20,),
                Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: ListView.builder(
                  itemCount: 3, // Replace with the actual number of bookings
                  itemBuilder: (context, index) {
                    return BookingCard();
                  },
                ),
              ),
            ),
          ],
        ),
    );
  }
}
class BookingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return custom_card(
      margin: EdgeInsets.only(bottom: 16.0),
      height: 390,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Booking ID : KVDBH12345'),
                Text('Date : 03/05/2024'),
              ],
            ),
            SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Name : Deepak Kumar'),
                Text('Slot : 15:00 - 19:00'),
              ],
            ),
            SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Mobile : +91-xxxxxx4411'),
                Text('Locker Qty. : 5'),
              ],
            ),
            SizedBox(height: 8.0),
            Text('Locker Name : Bhawan'),
            SizedBox(height: 8.0),
            Center(
              child: Text(
                'Locker No. 520',
                style: TextStyle(color: Colors.blue),
              ),
            ),
            SizedBox(height: 16.0),
            Center(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(color: Colors.black,width: 1)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/qr.png', // Replace with actual image asset path
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text('Show the QR Code to Locker Volunteer'),
                  SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        //use your own size 
                      
                        width: 120,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            side: BorderSide.none,
                            padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(27),
                              ),
                          ), onPressed: () {
                            // Handle print button press
                          },
                          child: Center(
                            child: Text('Print',
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 120,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                             padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                          
                            side: BorderSide.none,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(27),
                            ),
                          ), onPressed: () {
                            // Handle release button press
                          },
                          child: Text('Release',
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}