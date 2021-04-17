import 'package:flutter/material.dart';

class PHSectionTitle extends StatelessWidget {
  final String title;

  const PHSectionTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontFamily: 'SFProText-Bold',
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.onBackground,
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 4),
        Padding(
          padding: const EdgeInsets.only(left: 2.0),
          child: Container(
            height: 5,
            width: 75,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ],
    );
  }
}
