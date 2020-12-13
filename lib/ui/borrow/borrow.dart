import 'dart:io';

import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:librarymanagerclient/repositories/barcode_result_repository.dart';
import 'package:librarymanagerclient/repositories/nfc_result_repository.dart';
import 'package:librarymanagerclient/repositories/pick_date_provider.dart';
import 'package:librarymanagerclient/widgets/barcode_scanner_widget.dart';
import 'package:librarymanagerclient/widgets/date_picker_widget.dart';
import 'package:librarymanagerclient/widgets/nfc_reader_widget.dart';

final barcodeResultProvider =
    StateNotifierProvider.autoDispose((ref) => BarcodeResultRepository());
final nfcResultProvider =
    StateNotifierProvider.autoDispose((ref) => NfcResultRepository());
final pickDateProvider =
    StateNotifierProvider.autoDispose((_) => PickDateProvider());

class Borrow extends HookWidget {
  static const routeName = '/borrow';

  Borrow({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Library Manager'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _buildBarcodeScanning(),
            _buildNfcReading(),
            _buildReturnDate(),
            _buildConfirm(),
          ],
        ),
      ),
    );
  }

  Widget _buildBarcodeScanning() {
    final ScanResult stateScanner = useProvider(barcodeResultProvider.state);
    final exporter = useProvider(barcodeResultProvider);

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buildScanner(exporter),
        Text(stateScanner.rawContent),
      ],
    );
  }

  Widget _buildScanner(exporter) {
    return FlatButton(
      color: Colors.teal,
      child: Text('BARCODE SCAN', style: TextStyle(color: Colors.white)),
      onPressed: () async {
        exporter.exportResult(
          await BarcodeScannerWidget().scan(),
        );
      },
    );
  }

  Widget _buildNfcReading() {
    final String stateReader = useProvider(nfcResultProvider.state);
    final exporter = useProvider(nfcResultProvider);

    final reader = NfcReaderWidget();

    if (Platform.isAndroid) {
      // Android のとき
      reader.read(exporter);
    } else if (Platform.isIOS) {
      // iOSのとき
      reader.readTest(exporter);
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FlatButton(
          color: Colors.teal,
          child: Text('NFC SCAN', style: TextStyle(color: Colors.white)),
          onPressed: () {},
        ),
        stateReader == '' ? CircularProgressIndicator() : Text(stateReader)
      ],
    );
  }

  Widget _buildReturnDate() {
    final DateTime statePicker = useProvider(pickDateProvider.state);
    final PickDateProvider exporter = useProvider(pickDateProvider);
    final context = useContext();

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Return Date: '),
        RaisedButton(
          onPressed: () async {
            exporter.exportResult(
              await DatePickerWidget(
                initialDate: statePicker,
                firstDate: DateTime.now(),
              ).pickDate(context),
            );
          },
          child: Text(
            '${statePicker.year}/${statePicker.month}/${statePicker.day}',
          ),
        )
      ],
    );
  }

  Widget _buildConfirm() {
    return Container(
      child: RaisedButton(
        onPressed: () {},
        // TODO: Implement function: Validation and Confirm to borrow books.
        child: Text('BORROW!'),
      ),
    );
  }
}
