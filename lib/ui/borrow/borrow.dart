import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:librarymanagerclient/widgets/library_barcode_scanner.dart';

class BorrowWidget extends StatelessWidget {
  //static const routeName = '/borrow';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Borrow'),
      ),
      body: _borrow(context)
    );
  }

  Widget _borrow(BuildContext context) {
    return Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _buildBarcodeScanner(),
      ],
    ));
  }

  Widget _buildBarcodeScanner() {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          //BarcodeScanner(),
          // TODO: Implement scan result widget
        ]
    );
  }
}
