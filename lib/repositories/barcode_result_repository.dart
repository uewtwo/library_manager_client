import 'package:barcode_scan/barcode_scan.dart';
import 'package:state_notifier/state_notifier.dart';

class BarcodeResultRepository extends StateNotifier<ScanResult> {
  BarcodeResultRepository() : super(ScanResult(rawContent: ''));

  void exportResult(scanResult) => state = scanResult;
}
