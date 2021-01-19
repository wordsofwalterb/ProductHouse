import 'package:flutter/material.dart';

class PHButton extends StatelessWidget {
  final String body;

  const PHButton(this.body);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        color: const Color(0xff76a6c8),
      ),
      child: Row(
        children: [
          Icon(
            Icons.bookmark_border_outlined,
            color: Colors.white,
          ),
          Text(
            body,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
