import 'package:flutter/material.dart';

class PHButton extends StatelessWidget {
  final String body;
  final IconData icon;
  final Color activeColor;
  final bool isActive;
  const PHButton(
    this.body, {
    this.icon,
    this.activeColor,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        color: (isActive)
            ? (activeColor ?? Theme.of(context).primaryColor)
            : (Theme.of(context).buttonColor),
      ),
      child: Row(
        children: [
          if (icon != null) ...{
            Icon(
              icon,
              color: Colors.white,
            ),
            SizedBox(
              width: 7,
            ),
          },
          Text(
            body,
            style: Theme.of(context).textTheme.button,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
