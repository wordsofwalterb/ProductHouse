import 'package:flutter/material.dart';

class PHCategoryChip extends StatelessWidget {
  final String text;
  final bool isActive;

  const PHCategoryChip(this.text, {this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        color: (isActive)
            ? Theme.of(context).colorScheme.primary
            : Theme.of(context).colorScheme.surface,
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18,
          color: (isActive)
              ? Theme.of(context).colorScheme.onPrimary
              : Theme.of(context).colorScheme.onSurface,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}
