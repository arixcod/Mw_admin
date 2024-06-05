class Booking {
  final String bookingId;
  final String lockerNos;
  final String name;
  final String mobile;
  final String date;
  final String slot;
  final String lockerName;
  final int qty;
  final String? checkIn;
  final String? checkOut;
  final String? charges;
  final String? status;

  Booking(
    {
    required this.bookingId,
    required this.lockerNos,
    required this.name,
    required this.mobile,
    required this.date,
    required this.slot,
    required this.lockerName,
    required this.qty,
    this.checkIn, this.checkOut, this.charges, this.status,
  }
);



  // Factory constructor for creating a new Booking instance from a map
  factory Booking.fromJson(Map<String, dynamic> json) {
    return Booking(
      bookingId: json['bookingId'],
      lockerNos: json['lockerNos'],
      name: json['name'],
      mobile: json['mobile'],
      date: json['date'],
      slot: json['slot'],
      lockerName: json['lockerName'],
      qty: json['qty'],
    );
  }

  // Method for converting a Booking instance into a map
  Map<String, dynamic> toJson() {
    return {
      'bookingId': bookingId,
      'lockerNos': lockerNos,
      'name': name,
      'mobile': mobile,
      'date': date,
      'slot': slot,
      'lockerName': lockerName,
      'qty': qty,
    };
  }
}