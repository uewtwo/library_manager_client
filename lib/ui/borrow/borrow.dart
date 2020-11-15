import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:librarymanagerclient/providers/client/ndlapi_client.dart';
import 'package:librarymanagerclient/repositories/barcode_result_repository.dart';
import 'package:librarymanagerclient/repositories/pick_date_provider.dart';
import 'package:librarymanagerclient/widgets/barcode_scanner_widget.dart';
import 'package:librarymanagerclient/widgets/date_picker_widget.dart';
import 'package:librarymanagerclient/widgets/ic_scanning_widget.dart';

final barcodeResultProvider =
    StateNotifierProvider.autoDispose((ref) => BarcodeResultRepository());
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
            _buildICScanning(),
            _buildReturnDate(),
            _buildConfirm(),
          ],
        )));
  }

  Widget _buildBarcodeScanning() {
    final ScanResult stateScanner = useProvider(barcodeResultProvider.state);
    final exporter = useProvider(barcodeResultProvider);

    final client = NdlapiClient();
    // final context = useContext();

    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildScanner(exporter),
          FutureBuilder(
              future: client.get_book_by_isbn(stateScanner.rawContent),
              builder: (context, snapshot) {
                if (snapshot.connectionState != ConnectionState.done) {
                  return const CircularProgressIndicator();
                } else {
                  return Text(snapshot.data ?? "", textAlign: TextAlign.center);
                }
              }) // Text(stateScanner.rawContent),
        ]);
  }

  Widget _buildScanner(exporter) {
    return FlatButton(
      color: Colors.teal,
      child: Text('BARCODE SCAN', style: TextStyle(color: Colors.white)),
      onPressed: () async {
        exporter.exportResult(await BarcodeScannerWidget().scan());
      },
    );
  }

  Widget _buildICScanning() {
    return Center(
      child:
          Text('IC Card Scan Result Here.'), // TODO: Implement IC Card scanner.
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
              exporter.exportResult(await DatePickerWidget(
                      initialDate: statePicker, firstDate: DateTime.now())
                  .pickDate(context));
            },
            child: Text(
                '${statePicker.year}/${statePicker.month}/${statePicker.day}'))
      ],
    );
  }

  Widget _buildConfirm() {
    return Container(
      child: RaisedButton(
          onPressed:
              () {}, // TODO: Implement function: Validation and Confirm to borrow books.
          child: Text('BORROW!')),
    );
  }
}
