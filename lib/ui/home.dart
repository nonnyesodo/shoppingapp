import 'package:flutter/material.dart';
import 'package:shoppingapp/util/categorytile.dart';
import 'package:shoppingapp/util/cloth.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List category = [
    ['All', true],
    ['Men', false],
    ['Women', false],
    ['Children', false],
    ['hair', false],
    ['money', false],
  ];
  void categorytileselect(int index) {
    setState(() {
      for (int i = 0; i < category.length; i++) {
        category[i][1] = false;
      }
      category[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 70, 10, 10),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Explore \nTrendy Clothes',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 60,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: category.length,
                    itemBuilder: (BuildContext context, index) {
                      return Category(
                        text: category[index][0],
                        isSelected: category[index][1],
                        ontap: () {
                          categorytileselect(index);
                        },
                      );
                    }),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: options.length,
                  itemBuilder: (BuildContext context, int index) =>
                      GridOptions(layout: options[index]),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5.0,
                    crossAxisSpacing: 5.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
