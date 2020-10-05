import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:librarymanagerclient/ui/borrow/borrow.dart';

class Home extends StatelessWidget {
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Library Manager'),
      ),
      body: Center(child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildUserMenu(context),
          _buildManagerMenu(context)
        ],
      )),
    );
  }}

  Widget _buildUserMenu(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text('USER MENU'),
        RaisedButton(
          child: Text('BORROW'),
          onPressed: (){
            Navigator.of(context).pushNamed(Borrow.routeName);
          },
        ),
        RaisedButton(
          child: Text('RETURN'),
          onPressed: (){
//            Navigator.of(context).pushNamed('/return');
          },
        ),
        RaisedButton(
          child: Text('SEARCH'),
          onPressed: (){
//            Navigator.of(context).pushNamed('/search');
          },
        ),
      ],
    );
  }

  Widget _buildManagerMenu(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text('MANAGER MENU'),
        RaisedButton(
          child: Text('REGISTER'),
          onPressed: (){
//            Navigator.of(context).pushNamed('/register');
          },
        ),
        RaisedButton(
          child: Text('INVENTROY CHECK'),
          onPressed: (){
//            Navigator.of(context).pushNamed('/inventory_check');
          },
        ),
        RaisedButton(
          child: Text('DEBUG'),
          onPressed: (){
//            Navigator.of(context).pushNamed('/debug');
          },
        ),
      ],
    );
  }
