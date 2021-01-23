import 'package:flutter/material.dart';

class PHEmphasis extends StatelessWidget {
  final String text;

  const PHEmphasis(this.text);

  @override
  Widget build(BuildContext context) {
    // IntrinsicHeight Something to revisit if it slows app
    return IntrinsicHeight(
      child: Row(
        children: [
          Container(
            width: 5,
            color: Theme.of(context).primaryColor,
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child:
                    Text(text, style: Theme.of(context).textTheme.headline4)),
          ),
        ],
      ),
    );
  }
}
