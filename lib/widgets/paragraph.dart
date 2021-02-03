import 'package:flutter/material.dart';

class PHParagraph extends StatelessWidget {
  final String text;

  const PHParagraph(this.text);

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      text,
      style: Theme.of(context).textTheme.bodyText1,
      textAlign: TextAlign.left,
    );
  }
}
