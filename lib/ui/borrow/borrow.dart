import 'dart:io';

import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:librarymanagerclient/providers/db/user/user_table_provider.dart';
import 'package:librarymanagerclient/repositories/barcode_result_repository.dart';
import 'package:librarymanagerclient/repositories/nfc_result_repository.dart';
import 'package:librarymanagerclient/repositories/pick_date_provider.dart';
import 'package:librarymanagerclient/repositories/register_username_repository.dart';
import 'package:librarymanagerclient/ui/register_user/register_user.dart';
import 'package:librarymanagerclient/widgets/barcode_scanner_widget.dart';
import 'package:librarymanagerclient/widgets/date_picker_widget.dart';
import 'package:librarymanagerclient/widgets/nfc_reader_widget.dart';

final barcodeResultProvider =
    StateNotifierProvider.autoDispose((ref) => BarcodeResultRepository());
final nfcResultProvider =
    StateNotifierProvider.autoDispose((ref) => NfcResultRepository());
final userNameProvider =
    StateNotifierProvider.autoDispose((ref) => RegisterUsernameRepository());
final pickDateProvider =
    StateNotifierProvider.autoDispose((_) => PickDateProvider());

// final userNameProvider = FutureProvider.autoDispose<String>((ref) async {
//   final stateIdentifier = ref.watch(nfcResultProvider.state);
//
//   if (stateIdentifier.isEmpty) {
//     return null;
//   } else {
//     var _userName =
//         await UserTableProvider().getUserFromIdentifier(stateIdentifier);
//     return _userName;
//   }
// });

class Borrow extends HookWidget {
  static const routeName = '/borrow';

  Borrow({Key key}) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Library Manager'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _buildBarcodeScanning(),
            _buildNfcReading(context),
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

  Widget _buildNfcReading(BuildContext context) {
    final String stateReader = useProvider(nfcResultProvider.state);
    final exporterNfc = useProvider(nfcResultProvider);

    final String stateUserName = useProvider(userNameProvider.state);
    final exporterUserName = useProvider(userNameProvider);

    final reader = NfcReaderWidget();

    if (Platform.isAndroid) {
      // Android のとき
      reader.read(exporterNfc);
    } else if (Platform.isIOS) {
      // iOSのとき
      reader.readTest(exporterNfc);
    }

    // 氏名登録画面（register_user）への遷移
    _navigateAndDisplay(BuildContext context) async {
      var result = await Navigator.of(context).pushNamed(
        RegisterUser.routeName,
        arguments: stateReader,
      );
      // 氏名登録後から戻ってくる時は返り値がないので、
      // 返り値がなければスナックバーを表示する
      // 戻るボタンで戻ってきた時は返り値があるのでバーを表示しない
      if (result == null) {
        _scaffoldKey.currentState.showSnackBar(
          SnackBar(
            content: new Text('登録完了'),
          ),
        );
        var _userName =
            await UserTableProvider().getUserFromIdentifier(stateReader);
        exporterUserName.exportResult(_userName);
      }
    }

    // NFCのidentifierでユーザーが登録されているか確認する
    // 登録がなければ登録画面に遷移させる
    Future<void> _getUserNameOrNavigate(BuildContext context) async {
      if (stateReader.isNotEmpty) {
        var _userName =
            await UserTableProvider().getUserFromIdentifier(stateReader);
        if (_userName == null) {
          _navigateAndDisplay(context);
        } else {
          exporterUserName.exportResult(_userName);
        }
      }
    }

    Widget _displayText() {
      if (stateReader.isEmpty) {
        return Text('社員カードをかざしてください');
      } else if (stateUserName.isEmpty) {
        return Text('identifier : $stateReader\n登録確認ボタンを押してください');
      }
      return Text('identifier: $stateReader\nName     : $stateUserName');
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // テストで適当なNFCのidentifierを登録する時はこちらのボタンを使用
        /*
        RaisedButton(
          child: Text('NFC id register'),
          onPressed: () {
            exporterNfc.exportResult('test');
          },
        ),
        */
        _displayText(),
        FlatButton(
          color: Colors.teal,
          child: Text('ユーザー登録確認', style: TextStyle(color: Colors.white)),
          onPressed: () {
            _getUserNameOrNavigate(context);
          },
        ),
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
