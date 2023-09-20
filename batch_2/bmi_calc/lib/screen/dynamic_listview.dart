import 'package:flutter/material.dart';

class DynamicListView extends StatefulWidget {
  const DynamicListView({super.key});

  @override
  State<DynamicListView> createState() => _DynamicListViewState();
}

class _DynamicListViewState extends State<DynamicListView> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                icon: Icon(Icons.remove),
                onPressed: count == 0
                    ? null
                    : () {
                        count--;
                        setState(() {});
                      }),
            IconButton(
                icon: Icon(Icons.refresh),
                onPressed: count == 0
                    ? null
                    : () {
                        count = 0;
                        setState(() {});
                      }),
            IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  count++;
                  setState(() {});
                }),
          ],
        ),
        Expanded(
          child: ListView.builder(
            itemCount: count,
            itemBuilder: (context, index) =>
                ListTile(title: Text('item ${index + 1}')),
          ),
        )
      ])),
    );
  }
}
