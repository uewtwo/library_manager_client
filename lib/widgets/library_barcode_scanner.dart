import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';
import 'package:librarymanagerclient/widgets/widgets.dart';

class LibraryBarcodeScanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center();
  }

  Future<ScanResult> _scanBarcode() async {
    try {
      ScanResult scanResult = await BarcodeScanner.scan();
      return scanResult;
    } on PlatformException catch(e) {
      if (e.code == BarcodeScanner.cameraAccessDenied) {
        _showErrorSnackbar(context, )
      }
    }
  }

  void _showErrorSnackbar(BuildContext context, String error) {
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text(error),
      )
    );
  }
}
