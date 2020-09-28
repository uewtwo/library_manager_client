import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ItemListNotifier extends ChangeNotifier {
  List<Item> _items = null;
  get items => _items;
  ItemListNotifier() {
    _items = new List<Item>();
    _items.add(new Item(title:'borrow',icon: Icons.shopping_cart,navkey:'/borrow'));
    _items.add(new Item(title:'return',icon: Icons.directions_bike,navkey:'/return'));
    _items.add(new Item(title:'search',icon: Icons.search,navkey:'/search'));
    notifyListeners();
  }
}
class Item {
  const Item({this.title,this.icon,this.navkey});
  final String title;
  final IconData icon;
  final String navkey;
}
