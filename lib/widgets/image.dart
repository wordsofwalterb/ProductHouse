import 'package:flutter/material.dart';

class PHImage extends StatelessWidget {
  final String imageUrl;
  final String caption;

  const PHImage(this.imageUrl, {this.caption});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(imageUrl),
        if (caption != null) ...{
          Text(
            caption,
            style: Theme.of(context).textTheme.caption,
          ),
        }
      ],
    );
  }
}
