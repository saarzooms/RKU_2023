import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  const GridViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    int cardCount = 4;
    if (width < 500)
      cardCount = 2;
    else if (width < 700)
      cardCount = 3;
    else
      cardCount = 4;
    return Scaffold(
        body: GridView.count(
      crossAxisCount: cardCount,
      crossAxisSpacing: 2,
      mainAxisSpacing: 2,
      childAspectRatio: 3 / 2,
      children: [
        for (int i = 0; i < 7; i++)
          Container(
            alignment: Alignment.center,
            child: Text(
              (i + 1).toString(),
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            color: Colors.green,
          ),
      ],
    ));
  }
}
