import 'package:flutter/material.dart';

class PHCategoryChip extends StatelessWidget {
  final String text;
  final bool isActive;

  const PHCategoryChip(this.text, {this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        color: (isActive)
            ? Theme.of(context).primaryColor
            : const Color(0xff494949),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'SFProText-Regular',
          fontSize: 18,
          color: const Color(0xffffffff),
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}
