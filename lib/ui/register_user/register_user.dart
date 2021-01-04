import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:librarymanagerclient/models/user/user.dart';
import 'package:librarymanagerclient/providers/db/user/user_table_provider.dart';

//final registerUsernameRepository =
//     StateNotifierProvider.autoDispose((_) => RegisterUsernameRepository());

class RegisterUser extends HookWidget {
  static const routeName = '/borrow/register_user';

  RegisterUser({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        // 第2引数に渡す値を設定
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Register User'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _inputText(context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _inputText(BuildContext context) {
  // borrow画面で読み込んだNFCのidentifierを受け取る
  final String identifier = ModalRoute.of(context).settings.arguments;

  // final String stateRegister = useProvider(registerUsernameRepository.state);
  // final exporter = useProvider(registerUsernameRepository);

  final _formKey = GlobalKey<FormState>();

  String _userName;

  // ユーザー情報をDBに登録し、borrow画面に戻す
  void _registerAndNavigate(BuildContext context) async {
    final User user = User(
      identifier: identifier,
      name: _userName.replaceAll(RegExp(r'\s'), ''),
      createdAt: DateTime.now().toString(),
      updatedAt: DateTime.now().toString(),
    );

    // insertした列番号が返る
    var result = await UserTableProvider().registerUser(user);
    print(result);
    if (result is int) {
      Navigator.of(context).popUntil(ModalRoute.withName('/borrow'));
    } else {
      //　列番号以外が返ったら氏名登録画面に戻す
      //　失敗した時に何が返ってくるのか不明なのでこの動作をするのかも不明
      Navigator.pop(context);
    }
  }

  // 入力された氏名が正しいか確認するダイアログ
  Future _showAlertDialog() async {
    await showDialog(
      context: context,
      builder: (BuildContext context) => new AlertDialog(
        title: new Text('確認'),
        content: new Text('"${_userName}"で氏名を登録してよろしいですか？'),
        actions: <Widget>[
          new SimpleDialogOption(
            child: new Text('OK'),
            onPressed: () async {
              _registerAndNavigate(context);
            },
          ),
          new SimpleDialogOption(
            child: new Text('CANCEL'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  // riverpodsで状態管理しようとするとうまくいかなかった

  // void _register(String value) async {
  //   // exporter.exportResult(value);
  // }

  return Form(
    key: _formKey,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text('社員カードの登録がありませんでした。\n登録のため氏名を入力してください。',
            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20)),
        Padding(
          padding: EdgeInsets.all(25),
          child: TextFormField(
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              filled: true,
              icon: Icon(Icons.person),
              labelText: '氏名',
              hintText: '例) 山田太郎',
            ),
            // _formKey.currentState.save()で呼ばれる
            onSaved: (String value) async {
              _userName = value;
            },
            // 入力を確定した時に呼ばれる
            onFieldSubmitted: (String value) async {
              // _register(value);
            },
            // _formKey.currentState.validate()で呼ばれる
            validator: (String value) {
              if (value.isEmpty) {
                return '必須です';
              }
              return null;
            },
          ),
        ),
        RaisedButton(
          child: Text('REGISTER'),
          onPressed: () async {
            if (_formKey.currentState.validate()) {
              _formKey.currentState.save();
              await _showAlertDialog();
            }
          },
        ),
      ],
    ),
  );
}
