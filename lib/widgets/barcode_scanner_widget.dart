import 'package:barcode_scan/barcode_scan.dart';
import 'package:barcode_scan/model/scan_result.dart';
import 'package:flutter/services.dart';

class BarcodeScannerWidget {
  Future<ScanResult> scan() async {
    try {
      return await BarcodeScanner.scan(
//      TODO: frontFacingCameraのintを取得するようにしたい
//      TODO: 1指定するとsimulatorで動かんかった
//          options: ScanOptions(useCamera: 1)
      );
    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.cameraAccessDenied) {
        final String errorMessage = 'The user did not grant the camera permission!';
        return ScanResult(rawContent: errorMessage);
      } else {
        final String errorMessage = 'Unknown error: $e';
        return ScanResult(rawContent: errorMessage);
      }
    } on FormatException{
      final String errorMessage = 'null (User returned using the "back"-button before scanning anything. Result)';
      return ScanResult(rawContent: errorMessage);
    } catch (e) {
      final String errorMessage = 'Unknown error: $e';
      return ScanResult(rawContent: errorMessage);
    }
  }
}
