import 'package:flutter/material.dart';

class PHSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: const Color(0xfff0f1f5),
      ),
      child: Row(
        children: [
          SizedBox(width: 14),
          Icon(
            Icons.search,
            color: Colors.grey,
          ),
          SizedBox(
            width: 6,
          ),
          Text(
            'Search',
            style: TextStyle(color: Colors.grey, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
