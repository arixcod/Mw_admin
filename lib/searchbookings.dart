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
            )
          ],
        ),
 
 
    );
  }
}