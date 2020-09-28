import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReturnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Return'),
      ),
      body: _return(context)
    );
  }

  Widget _return(BuildContext context) {
    return Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        //_buildBarcodeScanner(),
      ],
    ));
  }
}
