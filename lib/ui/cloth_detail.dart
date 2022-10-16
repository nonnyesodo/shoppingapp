import 'package:flutter/material.dart';

import '../util/categorytile.dart';

class Clothe_d extends StatefulWidget {
  Clothe_d(
      {super.key,
      required this.price,
      required this.itemname,
      required this.image});
  final String price;
  final String itemname;
  final String image;

  @override
  State<Clothe_d> createState() => _Clothe_dState();
}

class _Clothe_dState extends State<Clothe_d> {
  final List size = [
    ['Xs', true],
    ['S', false],
    ['M', false],
    ['L', false],
    ['Xl', false],
  ];
  void categorytileselect(int index) {
    setState(() {
      for (int i = 0; i < size.length; i++) {
        size[i][1] = false;
      }
      size[index][1] = true;
    });
  }

  //radio
  int? _groupValue;

  @override
  void initState() {
    super.initState();
    print(widget.image);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                  Text(
                    'Details',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.shopping_bag_outlined),
                  )
                ],
              ),
              Container(
                padding:
                    const EdgeInsets.only(top: 25.0, left: 50.0, right: 50.0),
                height: 350.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(widget.image),
                  ),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.itemname),
                  Row(
                    children: [
                      Radio(
                        value: 0,
                        groupValue: _groupValue,
                        onChanged: (int? value) {
                          setState(() {
                            _groupValue = value;
                          });
                        },
                      ),
                      Radio(
                        value: 1,
                        groupValue: _groupValue,
                        onChanged: (int? value) {
                          setState(() {
                            _groupValue = value;
                          });
                        },
                      ),
                      Radio(
                        value: 2,
                        groupValue: _groupValue,
                        onChanged: (int? value) {
                          setState(() {
                            _groupValue = value;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
              Text('Sizes'),
              SizedBox(
                height: 50,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: size.length,
                    itemBuilder: (BuildContext context, index) {
                      return Category(
                        text: size[index][0],
                        isSelected: size[index][1],
                        ontap: () {
                          categorytileselect(index);
                        },
                      );
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.tag),
                      Text(widget.price),
                    ],
                  ),
                  ElevatedButton(onPressed: () {}, child: Text('Add To Bag'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
