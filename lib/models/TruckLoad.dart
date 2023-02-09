enum TruckLoadStatus { PENDING, QUOTED, SCHEDULED, IN_PROGRESS }

enum TruckLoadType { STEEL, FURNITURE, FERTILIZER }

enum TruckType { CONTAINER, TRAILER }

class TruckLoad {
  final String pickupAddress;
  final String destinationAddress;
  final DateTime pickupDate;
  final DateTime? destinationDate;
  final TruckLoadStatus status;
  final String weight;
  final TruckLoadType loadType;
  final TruckType truckType;
  final String? pricePerTonne;

  TruckLoad(
      this.pickupAddress,
      this.destinationAddress,
      this.status,
      this.weight,
      this.loadType,
      this.truckType,
      this.pricePerTonne,
      this.pickupDate,
      this.destinationDate);
}
