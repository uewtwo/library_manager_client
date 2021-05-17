import 'package:state_notifier/state_notifier.dart';

class BarcodeResultRepository extends StateNotifier<String> {
  BarcodeResultRepository() : super('');

  void exportResult(scanResult) => state = scanResult;
}
