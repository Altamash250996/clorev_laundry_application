class ClosedBookings {
  String id;
  List serviceoffered;
  List<DateTime> servicedates;
  DateTime bookingdate;
  int totalamount;

  ClosedBookings({
    this.id,
    this.serviceoffered,
    this.servicedates,
    this.bookingdate,
    this.totalamount,
  });
}