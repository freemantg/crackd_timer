import 'package:uuid/uuid.dart';

class UniqueId {
  final String value;
  factory UniqueId() {
    return UniqueId._(const Uuid().v1());
  }

  factory UniqueId.fromUniqueString(String uniqueIdStr) {
    return UniqueId._(uniqueIdStr);
  }

  UniqueId._(this.value);
}
