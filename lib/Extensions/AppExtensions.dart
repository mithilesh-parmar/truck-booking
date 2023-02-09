import 'package:intl/intl.dart';

import '../models/TruckLoad.dart';

extension TruckLoadTypeExtension on TruckLoadType {
  String get displayTitle {
    switch (this) {
      case TruckLoadType.FERTILIZER:
        return "Fertilizer";
      case TruckLoadType.FURNITURE:
        return "Furniture";
      case TruckLoadType.STEEL:
        return "Steel";
    }
  }
}

extension TruckTypeExtension on TruckType {
  String get displayTitle {
    switch (this) {
      case TruckType.CONTAINER:
        return "Container";
      case TruckType.TRAILER:
        return "Trailer";
    }
  }
}

extension TruckLoadStatusExtension on TruckLoadStatus {
  String get displayTitle {
    switch (this) {
      case TruckLoadStatus.IN_PROGRESS:
        return "In Progress";
      case TruckLoadStatus.PENDING:
        return "Pending";
      case TruckLoadStatus.QUOTED:
        return "Quoted";
      case TruckLoadStatus.SCHEDULED:
        return "Scheduled";
    }
  }
}

extension DateFormatExtension on DateTime {
  String get formattedDate {
    return DateFormat.yMMMd().format(this);
  }
}
