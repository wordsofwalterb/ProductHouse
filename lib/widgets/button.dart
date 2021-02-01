import 'package:flutter/material.dart';

class PHButton extends StatelessWidget {
  final String body;
  final IconData icon;
  final Color activeColor;
  final bool isActive;
  final GestureTapCallback onTap;

  const PHButton(
    this.body, {
    this.icon,
    this.activeColor,
    this.isActive = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () => {},
      child: Container(
        padding: const EdgeInsets.all(15),
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
              const SizedBox(
                width: 7,
              ),
            },
            Text(
              body,
              style: Theme.of(context).textTheme.button,
            ),
            const SizedBox(
              width: 20,
            )
          ],
        ),
      ),
    );
  }
}
