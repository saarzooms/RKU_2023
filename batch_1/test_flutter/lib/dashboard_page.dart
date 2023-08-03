import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.backpack),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.person),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.power_settings_new),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              // margin: const EdgeInsets.all(8),
              color: Colors.green,
              height: 200,
              width: double.infinity,
              child:
                  Image.asset('assets/images/banner.jpg', fit: BoxFit.cover)),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Recent',
              style: TextStyle(fontSize: 25),
            ),
          ),
          Row(
            children: [
              for (int i = 0; i < 3; i++)
                Card(
                  child: Container(
                    color: Colors.lightGreenAccent,
                    height: 100,
                    width: 100,
                    child: Center(child: Text("Item ${i + 1}")),
                  ),
                ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'New Arrival',
                  style: TextStyle(fontSize: 25),
                ),
                Text(
                  'View All',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          Row(
            children: [
              for (int i = 0; i < 3; i++)
                Card(
                  child: Container(
                    color: Colors.lightGreenAccent,
                    height: 100,
                    width: 100,
                    child: Center(child: Text("Item ${i + 1}")),
                  ),
                ),
            ],
          )
        ],
      ),
    );
  }
}
