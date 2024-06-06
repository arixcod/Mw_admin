import 'package:admin/utils/constatnts/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScanQrScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 246, 240, 1),
      appBar:  AppBar(
        backgroundColor: const Color.fromRGBO(247, 246, 240, 1),
        titleTextStyle: const TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 20),
            title: const Text('Scan QR'),
            leading: IconButton(
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.white),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  side: BorderSide(color: Colors.grey, width: 1),
                  borderRadius:
                  BorderRadius.all(Radius.circular(8))))),
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding:const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset:const Offset(0, 3),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            //color is to support the text change accordingly
                          backgroundColor: Color.fromARGB(255, 206, 168, 168), 
                          side: BorderSide.none,
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)
                          )
                          ),
                        onPressed: () {
                          // Handle find a code to scan button press
                        
                        },
                        child:const Text('Find a Code to Scan',
                        style: TextStyle(
                          fontFamily: "Poppins",
                          color: Colors.black,
                          fontSize: 12
                        ),
                        ),
                      ),
                    ),

                const  SizedBox(height: 20),

                    Align(
                      alignment: Alignment.bottomCenter,
                      child: FloatingActionButton(
                        onPressed: () {
                          // Handle flashlight button press
                        },
                        child:const Icon(Icons.flashlight_on),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          const SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
               const Text(
                  'If you can’t scan QR Code',
                  textAlign: TextAlign.center,
                ),
              const  SizedBox(height: 10),
              const  Text(
                  'Enter Your Booking ID or Mobile No.',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              const  SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 35),
                    // Add padding here
                    filled: true,
                    labelText: 'Enter Your Booking ID or Mobile No.',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}