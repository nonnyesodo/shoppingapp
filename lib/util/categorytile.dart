import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({
    required this.text,
    Key? key,
    required this.isSelected,
    required this.ontap,
  }) : super(key: key);
  final String text;
  final bool isSelected;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: const EdgeInsets.only(right: 15.0),
        color: isSelected ? Colors.black : Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
//how to shape a card in flutter?
