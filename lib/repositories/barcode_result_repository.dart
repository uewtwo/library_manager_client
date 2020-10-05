import 'package:barcode_scan/barcode_scan.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

class BarcodeResultRepository extends StateNotifier<ScanResult> {
  BarcodeResultRepository() : super(ScanResult(rawContent: 'Scan result here.'));

  void exportResult(scanResult) => state = scanResult;
}
