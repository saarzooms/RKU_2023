import 'package:flutter/material.dart';

import 'product_screen.dart';

class DasboardScreen extends StatelessWidget {
  DasboardScreen({super.key});
  TextStyle heading = TextStyle(fontSize: 28);
  TextStyle viewAll = TextStyle(fontSize: 18, color: Colors.blue);
  TextStyle prodTitle = TextStyle(fontSize: 20);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.3,
          width: double.infinity,
          color: Colors.purple,
          child: Image.asset('assets/images/banner.jpg', fit: BoxFit.cover),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Recent Items', style: heading),
              SizedBox(
                height: 110,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    for (int i = 0; i < 4; i++)
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  ProductScreen('item ${i + 1}'),
                            ),
                          );
                        },
                        child: Card(
                          child: Container(
                            alignment: Alignment.center,
                            height: 100,
                            width: 100,
                            child: Text('item ${i + 1}', style: prodTitle),
                          ),
                        ),
                      )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('New Items', style: heading),
                  Text('View all', style: viewAll),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for (int i = 0; i < 3; i++)
                    Card(
                      child: Container(
                        alignment: Alignment.center,
                        height: 100,
                        width: 100,
                        child: Text('item ${i + 1}', style: prodTitle),
                      ),
                    )
                ],
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
