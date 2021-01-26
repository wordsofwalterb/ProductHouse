import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class PHFeaturedByteShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300],
      highlightColor: Colors.grey[100],
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: Theme.of(context).primaryColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                'Test',
                style: TextStyle(
                  fontFamily: 'SFProText-Bold',
                  fontSize: 28,
                  color: const Color(0xfffbfbfb),
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            // Adobe XD layer: 'Double diamond is a' (text)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'test',
                style: TextStyle(
                  fontFamily: 'SFProText-Regular',
                  fontSize: 18,
                  color: const Color(0xfffbfbfb),
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 16),
              child: Row(
                children: [
                  // Adobe XD layer: 'Behavioral' (text)
                  Text(
                    'test',
                    style: TextStyle(
                      fontFamily: 'SFProText-Semibold',
                      fontSize: 18,
                      color: const Color(0xfffbfbfb),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  // Adobe XD layer: '2m' (text)
                  Text(
                    'test',
                    style: TextStyle(
                      fontFamily: 'SFProText-Semibold',
                      fontSize: 18,
                      color: const Color(0xfffbfbfb),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
