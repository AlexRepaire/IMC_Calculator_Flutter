import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colorCard, this.cardChild, this.onPressFunc});

  final Color colorCard;
  final Widget? cardChild;
  final Function? onPressFunc;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressFunc!(),
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colorCard,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
