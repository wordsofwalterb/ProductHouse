import 'package:ProductHouse/util/global.dart';
import 'package:ProductHouse/util/router.dart';
import 'package:flutter/material.dart';

class PHProfileButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, PHRoutes.profileScreen),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: Theme.of(context).primaryColor,
        ),
        child: Icon(
          Icons.person,
          size: 35,
        ),
      ),
    );
  }
}
