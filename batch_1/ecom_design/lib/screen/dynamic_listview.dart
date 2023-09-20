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
    return Scaffold(
        appBar: AppBar(
          title: Text('Dynamic List View'),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    if (count > 0) {
                      count--;
                      setState(() {});
                    }
                  },
                  icon: Icon(Icons.remove),
                ),
                IconButton(
                  onPressed: () {
                    count = 0;
                    setState(() {});
                  },
                  icon: Icon(Icons.refresh),
                ),
                IconButton(
                  onPressed: () {
                    count++;
                    setState(() {});
                  },
                  icon: Icon(Icons.add),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: count,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Item ${index + 1}'),
                    subtitle: Text('cat ${index + 1}'),
                  );
                },
              ),
            )
          ],
        ));
  }
}
