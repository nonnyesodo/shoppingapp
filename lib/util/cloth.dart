import 'package:flutter/material.dart';

import '../ui/cloth_detail.dart';

class GridLayout {
  final String price;
  final String itemname;
  final String image;
  GridLayout({
    required this.price,
    required this.itemname,
    required this.image,
  });
}

List<GridLayout> options = [
  GridLayout(
    price: '\$742.50',
    itemname: 'Gown',
    image: 'images/first.jpeg',
  ),
  GridLayout(
    price: '\$252.50',
    itemname: 'Gown',
    image: 'images/first.jpeg',
  ),
  GridLayout(
    price: '\$332.50',
    itemname: 'T shirt',
    image: 'images/fifth.jpeg',
  ),
  GridLayout(
    price: '\$222.50',
    itemname: 'sweater',
    image: 'images/fourth.jpeg',
  ),
  GridLayout(
    price: '\$541.50',
    itemname: 'Jump suit',
    image: 'images/third.jpeg',
  ),
  GridLayout(
    price: '\$964.50',
    itemname: 'Spagehetti gown',
    image: 'images/second.jpeg',
  ),
];

class GridOptions extends StatelessWidget {
  final GridLayout layout;
  const GridOptions({super.key, required this.layout});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Clothe_d(
              image: layout.image,
              price: layout.price,
              itemname: layout.itemname,
            ),
          ),
        );
      },
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: const EdgeInsets.only(
                  top: 5.0,
                  left: 15.0,
                  right: 15.0,
                ),
                height: 130.0,
                width: 200.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(layout.image),
                  ),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Stack(children: [
                  Positioned(
                    right: -4.0,
                    top: -5,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      size: 30,
                    ),
                  )
                ])),
            Text(layout.price),
            Text(layout.itemname),
          ],
        ),
      ),
    );
  }
}












































































/*
class Clothecard extends StatelessWidget {
  Clothecard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
              padding: const EdgeInsets.only(
                top: 15.0,
                left: 15.0,
                right: 15.0,
              ),
              height: 300.0,
              width: 200.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('images/second.jpeg'),
                ),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Stack(children: [
                Positioned(
                  right: -2.0,
                  top: 0,
                  child: Icon(
                    Icons.favorite,
                    size: 30,
                  ),
                )
              ])),
          Text('#232.50'),
          Text('Spaghetti Gown'),
        ],
      ),
    );
  }
}*/
