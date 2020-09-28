import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:state_notifier/state_notifier.dart';

import 'package:librarymanagerclient/ui/top/top.dart';
import 'package:librarymanagerclient/ui/borrow/borrow.dart';
import 'package:librarymanagerclient/ui/return/return.dart';

final counterProvider = StateNotifierProvider((_) => Counter());

class Counter extends StateNotifier<int> {
  Counter(): super(0);
  void increment() => state++;
}

class LibraryManagerApp extends HookWidget {
  const LibraryManagerApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    final state = useProvider(counterProvider.state);
    final counter = useProvider(counterProvider);

    return MaterialApp(
      title: "Library Manager",
      routes: <String, WidgetBuilder> {
        '/': (_) => TopWidget(),
        '/borrow': (_) => BorrowWidget(),
        '/return': (_) => ReturnWidget(),
      },
      theme: ThemeData(
        primaryColor: Colors.teal,
        secondaryHeaderColor: Colors.indigo[400],
        backgroundColor: Colors.indigo[100],
        buttonColor: Colors.lightBlueAccent[100],
      ),
    );
  }

}
