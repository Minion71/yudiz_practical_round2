import 'package:flutter/material.dart';

import 'entry_model.dart';


class EntryItem extends StatelessWidget {
  const EntryItem({required this.entry, super.key});
  final Item entry;

  // This function recursively creates the multi-level list rows.
  Widget _buildTiles(Item root) {
    if (root.items.isEmpty) {
      return ListTile(
        title: Text(root.title,),
      );
    }
    return ExpansionTile(
      key: PageStorageKey<Item>(root),
      title: Text(root.title),
      children: root.items.map<Widget>(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
