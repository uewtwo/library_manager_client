import 'package:barcode_scan/barcode_scan.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

final scanResultProvider = StateNotifierProvider((_) => ScanResultProvider());

class ScanResultProvider extends StateNotifier<ScanResult> {
  ScanResultProvider() : super(ScanResult(rawContent: "Scan result here."));
  void exportResult(scanResult) => state = scanResult;
}
