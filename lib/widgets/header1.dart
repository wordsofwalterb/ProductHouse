import 'package:flutter/material.dart';

class PHHeader1 extends StatelessWidget {
  final String text;

  const PHHeader1(this.text);

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      text,
      style: Theme.of(context)
          .textTheme
          .bodyText1
          .copyWith(fontWeight: FontWeight.w600, fontSize: 22),
      textAlign: TextAlign.left,
    );
  }
}
