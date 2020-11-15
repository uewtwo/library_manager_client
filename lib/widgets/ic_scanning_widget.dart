import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_nfc_reader/flutter_nfc_reader.dart';

class ICScanningWidget {
  Future scan() async {
    final response = await FlutterNfcReader.read();
    print(response.content);
    return Future.value(response.content);
  }
}

void main() {
  final client = ICScanningWidget();
  client.scan();
}
