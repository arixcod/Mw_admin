
import 'package:admin/admin_page.dart';
import 'package:admin/utils/constatnts/colors.dart';
import 'package:flutter/material.dart';

import '../models/bookig.dart';

class BookingCard extends StatelessWidget {

  final Booking booking;

  BookingCard({
    required this.booking,
  });

  @override

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: custom_card(
        height: 180,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(alignment: WrapAlignment.spaceBetween, children: [
                Text(
                  "Booking ID: ${booking.bookingId}",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        color: Tcolors.textheadlineclr

                  )),
                if (booking.status == "booked")
 
                  Text(
                    'Locker No. ${booking.lockerNos}',
                    style:const TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
              ]),
             const SizedBox(height: 5),
              if (booking.status == "booked")
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _bookingDetail('Date', booking.date),
                    _bookingDetail('Slot', booking.slot),
                  ],
                ),
              if (booking.status == "booked")
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _bookingDetail('Check In', booking.checkIn),
                    _bookingDetail('Charges', booking.charges),
                  ],
                ),
              if (booking.status == "booked")
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _bookingDetail('Check Out', booking.checkOut),
                    _bookingDetail('Status', booking.status),
                  ],
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _bookingDetail('Name', booking.name),
                  _bookingDetail('Date', booking.date),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _bookingDetail('Mobile', booking.mobile),
                  _bookingDetail('Slot', booking.slot),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _bookingDetail('Locker Name', booking.lockerName),
                  _bookingDetail('Locker Qty.', booking.qty.toString()),
                ],
              ),

                 const SizedBox(height: 10,),
              _bookingDetail('Locker No.', booking.lockerNos),
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
            style:const TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
          Text(
            value ?? "",
            style:const TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: Color(0xFF080E1E),
            ),
          ),
        ],
      ),
    );
  }
}
