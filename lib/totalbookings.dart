import 'package:admin/admin_page.dart';
import 'package:admin/utils/constatnts/colors.dart';
import 'package:flutter/material.dart';

class TotalBooking extends StatefulWidget {
  @override
  _TotalBookingState createState() => _TotalBookingState();
}

class _TotalBookingState extends State<TotalBooking> with SingleTickerProviderStateMixin {
  
  late TabController _tabController;
  int _selectedIndex = 0;


  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  
      _tabController.addListener(() {
      setState(() {
        _selectedIndex = _tabController.index;
      });
    });
  }


 @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

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
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(8.0),
                       border: Border.all(color:const Color(0XFFD9D9D9))   
                      ),
                      child:const Center(child: Icon(Icons.arrow_back)),
                     ),

                      SizedBox(width: 20,), 
                      const Text('Total Booking',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),),
                    ],
                  ),


  
                ),
      body:
      
      
       Column(
         children: [
          SizedBox(height: 20,),
TabBar(
          controller: _tabController,
          tabs: [
            
            Tab(           
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                    'Upcoming Bookings',
                     textAlign: TextAlign.center,
                 
                    style: TextStyle(
                    color: _selectedIndex == 0 ? Colors.white : Colors.black,
                    fontFamily: 'Poppins',
                    fontSize: 12
                  ),
                ),
              ),
            
            ),
            
            Tab(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Past Bookings',
              
                  textAlign: TextAlign.center,
                    style: TextStyle(
                    color: _selectedIndex == 1 ? Colors.white : Colors.black,
                    fontFamily: 'Poppins',
                     fontSize: 12
                  
                  ),
                ),
              ),
            ),
          ],
         
          indicator: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(12),
          ),
          labelColor: Colors.white,
          unselectedLabelColor: Colors.black,
        ),
        const SizedBox(height: 20,),
           Expanded(
             child: TabBarView(
              controller: _tabController,
              children: [
                // Replace with your actual booking data
                BookingList(bookings: List.generate(3, (index) => 'Booking ID : KVD12345')),
                BookingList(bookings: List.generate(3, (index) => 'Booking ID : KVD12345')),
              ],
                 ),
           ),
         ],
       ),
    );
  }
}

class BookingList extends StatelessWidget {
  final List<String> bookings;

  BookingList({required this.bookings});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(height: 20,),
      itemCount: bookings.length,
      itemBuilder: (context, index) {
        return BookingCard_total(
          bookingId: bookings[index],
          name: 'Deepak Kumar',
          mobile: '+91-xxxxxx4411',
          date: '03/05/2024',
          slot: '15:00 - 19:00',
          lockerName: 'Bhawan',
          lockerQty: 5,
          lockerNo: '521, 522, 523, 524, 525',
        );
      },
    );
  }
}

class BookingCard_total extends StatelessWidget {
  final String bookingId;
  final String name;
  final String mobile;
  final String date;
  final String slot;
  final String lockerName;
  final int lockerQty;
  final String lockerNo;

  BookingCard_total({
    required this.bookingId,
    required this.name,
    required this.mobile,
    required this.date,
    required this.slot,
    required this.lockerName,
    required this.lockerQty,
    required this.lockerNo,
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: custom_card(
        height: 180,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                bookingId,
                style:const TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
             const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _bookingDetail('Name', name),
                  _bookingDetail('Date', date),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _bookingDetail('Mobile', mobile),
                  _bookingDetail('Slot', slot),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _bookingDetail('Locker Name', lockerName),
                  _bookingDetail('Locker Qty.', lockerQty.toString()),
                ],
              ),
                const SizedBox(height: 10,),
              _bookingDetail('Locker No.', lockerNo),
            ],
          ),
        ),
      ),
    );
  }
Widget _bookingDetail(String label, String? value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        children: [
          Text(
            '$label : ',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
          Text(
            value ?? "",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              fontSize: 15,
              color: Color(0xFF080E1E),
            ),
          ),
        ],
      ),
    );
  }


}