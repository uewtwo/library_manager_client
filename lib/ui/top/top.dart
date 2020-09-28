import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:librarymanagerclient/providers/topitem.dart';

class ItemCard extends HookWidget {
  const ItemCard({Key key, this.item}) : super(key: key);
  final Item item;
  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;

    return Card(
        color: Colors.white,
        child: Center(
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child:
                        RaisedButton.icon(
                          icon: Icon(item.icon, size: 90.0, color: textStyle.color),
                          label: Text(item.title),
                          onPressed: () => Navigator.of(context).pushNamed(item.navkey),
                          color: Colors.green,
                          textColor: Colors.white,
                        ),
                ),
                Text(item.title, style: textStyle),
              ]),
        ));
  }
}

class TopWidget extends HookWidget {
  //GlobalScopeだとHotReloadが効かない. HookWidgetの下に置くとHotReloadが効く.
  final ItemListProvider = ChangeNotifierProvider((ref) => ItemListNotifier());
  @override
  Widget build(BuildContext context) {
    final List<Item> items = useProvider(ItemListProvider).items;
    return Scaffold(
      appBar: AppBar(title: Text('BookRentalApp')),
      body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(items.length, (index) {
            return Center(
              child: ItemCard(item: items[index]),
            );
          })
      ),
    );
  }
}