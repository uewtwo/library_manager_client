import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:librarymanagerclient/providers/pick_date_provider.dart';
import 'package:librarymanagerclient/providers/scan_result_provider.dart';

class Borrow extends HookWidget {
  static const routeName = '/borrow';
  Borrow({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Library Manager'),
      ),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _buildBarcodeScanning(),
          _buildICScanning(),
          _buildReturnDate(),
          _buildConfirm(),
        ],
      ))
    );
  }

  Widget _buildBarcodeScanning() {
    final ScanResult stateScanner = useProvider(scanResultProvider.state);
    final ScanResultProvider exporter = useProvider(scanResultProvider);

    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
//          BookBarcodeScanner(), FIXME: とりあえずこのクラスに実装するが、Widgetとして切り出したい
          _buildScanner(exporter),
          Text(stateScanner.rawContent), // TODO: Initializerで定義した値が入っていない、空文字列になっている
        ]
    );
  }

  //////////////////////////////
  _buildScanner(exporter) {
    Future<void> scan() async {
      try {
        ScanResult scanResult = await BarcodeScanner.scan(
//          options: ScanOptions(useCamera: 1) // TODO: frontFacingCameraのintを取得するようにしたい
        );
        exporter.exportResult(scanResult);
//        scanResult.state = scanResult;
      } on PlatformException catch (e) {
        if (e.code == BarcodeScanner.cameraAccessDenied) {
          final String errorMessage = 'The user did not grant the camera permission!';
          exporter.exportResult(ScanResult(rawContent: errorMessage));
//          context.read(_scanProvider).state = ScanResult(rawContent: errorMessage);
        } else {
          final String errorMessage = 'Unknown error: $e';
          exporter.exportResult(ScanResult(rawContent: errorMessage));
//          context.read(_scanProvider).state = ScanResult(rawContent: errorMessage);
        }
      } on FormatException{
        final String errorMessage = 'null (User returned using the "back"-button before scanning anything. Result)';
        exporter.exportResult(ScanResult(rawContent: errorMessage));
//        context.read(_scanProvider).state = ScanResult(rawContent: errorMessage);
      } catch (e) {
        final String errorMessage = 'Unknown error: $e';
        exporter.exportResult(ScanResult(rawContent: errorMessage));
//        context.read(_scanProvider).state = ScanResult(rawContent: errorMessage);
      }
    }

    return FlatButton(
      color: Colors.teal,
      child: Text('BARCODE SCAN', style: TextStyle(color: Colors.white)),
      onPressed: scan,
    );
  }
  //////////////////////////////

  Widget _buildICScanning() {
    return Center(
      child: Text('IC Card Scan Result Here.'), // TODO: Implement IC Card scanner.
    );
  }

  Widget _buildReturnDate() {
    final DateTime statePicker = useProvider(pickDateProvider.state);
    final PickDateProvider exporter = useProvider(pickDateProvider);
    final pickDateString = '${statePicker.year}/${statePicker.month}/${statePicker.day}';
    final BuildContext context = useContext();

    // TODO: DatePickerをWidgetに切り出したい
    Future _selectDate(BuildContext context) async {
      DateTime _date = DateTime.now();
      final DateTime picked = await showDatePicker(
        context: context,
        initialDate: statePicker,
        firstDate: _date,
        lastDate: _date.add(Duration(days: 14))
      );
      exporter.exportResult(picked ?? statePicker);
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Return Date: '),
        RaisedButton(
          onPressed: () {
            _selectDate(context);
          },
          child: Text(pickDateString)
        )
      ],
    );
  }

  Widget _buildConfirm() {
    return Container(
      child: RaisedButton(
        onPressed: (){}, // TODO: Implement function: Validation and Confirm to borrow books.
        child: Text('BORROW!')
      ),
    );
  }
}
