import 'package:flutter/material.dart';
import 'package:yudiz_practical_round/data_repository.dart';
import 'package:yudiz_practical_round/entry_model.dart';

import 'list_tile.dart';

class NestedListScreen extends StatefulWidget {
  const NestedListScreen({super.key});

  @override
  State<NestedListScreen> createState() => _NestedListScreenState();
}

class _NestedListScreenState extends State<NestedListScreen> {
  List<Item> fetchedList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchedList = DataRepository.getNestedList();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Expansion List'),
        ),
        body: ListView.builder(
          itemCount: fetchedList.length,
          itemBuilder: (BuildContext context, int index) => EntryItem(
            entry: fetchedList[index],
          ),
        ),
      ),
    );
  }
}
