import 'package:nfc_manager/nfc_manager.dart';

class NfcReaderWidget {
  void read(exporter) {
    NfcManager.instance.startSession(onDiscovered: (NfcTag tag) async {
      final tagData = tag.data['nfcf']['identifier'];
      NfcManager.instance.stopSession();

      // 8ビットを逆順にして16進数にして結合して文字列にする
      final tagDataRev = tagData.reversed.toList();
      final tagDataHex = tagDataRev.map((n) => n.toRadixString(16)).toList();
      exporter.exportResult(tagDataHex.join());
    });
  }

  void readTest(exporter) {
    exporter.exportResult('145d1c7400031601');
  }
}
