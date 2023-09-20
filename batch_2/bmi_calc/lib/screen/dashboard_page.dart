import 'package:flutter/material.dart';

import 'product_page.dart';

class Dashboard extends StatelessWidget {
  Dashboard({super.key});
  TextStyle heading = TextStyle(fontSize: 24, color: Colors.deepPurple);
  TextStyle viewallstyle = TextStyle(fontSize: 18, color: Colors.blue);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            color: Colors.grey,
            width: double.infinity,
            height: 200,
            child: Image.asset(
              'assets/images/banner.jpg',
              fit: BoxFit.cover,
            )),
        Text(
          'Recent',
          style: heading,
        ),
        SizedBox(
          height: 80,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              for (int i = 0; i < 5; i++)
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductPage((i + 1).toString()),
                    ));
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    color: Colors.grey,
                    height: 80,
                    width: 80,
                    child: Center(
                      child: Text(
                        (i + 1).toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: [
        //     for (int i = 0; i < 5; i++)
        //       Container(color: Colors.grey, height: 80, width: 80),
        //   ],
        // ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'New Arrivals',
              style: heading,
            ),
            Text(
              'View All',
              style: viewallstyle,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            for (int i = 0; i < 4; i++)
              Container(color: Colors.grey, height: 80, width: 80),
          ],
        ),
      ],
    ));
  }
}
