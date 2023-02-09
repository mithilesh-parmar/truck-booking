import 'package:truck_booking/models/TruckLoad.dart';

class LoadOrder {
  final int id;
  final TruckLoad truckLoad;
  final FleetOperator fleetOperator;
  final TruckDetails truckDetails;

  LoadOrder(this.id, this.truckLoad, this.fleetOperator, this.truckDetails);
}

class FleetOperator {
  final String companyName;
  final String operatorName;
  final String phoneNumber;

  FleetOperator(this.companyName, this.operatorName, this.phoneNumber);
}

class TruckDetails {
  final String truckNumber;
  final String driverPhoneNumber;
  final String driverName;

  TruckDetails(this.truckNumber, this.driverPhoneNumber, this.driverName);
}
