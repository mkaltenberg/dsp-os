import 'package:fieldscan/models/InspectionStatusKey.dart';

const String _completedDisplay = 'Completed';
const String _inProgressDisplay = 'In Progress';
const String _notYetStartedDisplay = 'Not Yet Started';

extension InspectionStatusKeyExtension on InspectionStatusKey {
  String get displayTitle {
    switch (this) {
      case InspectionStatusKey.COMPLETED:
        return _completedDisplay;
      case InspectionStatusKey.IN_PROGRESS:
        return _inProgressDisplay;
      case InspectionStatusKey.NOT_YET_STARTED:
        return _notYetStartedDisplay;
    }
  }
}
