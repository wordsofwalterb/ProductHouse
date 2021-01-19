import 'package:flutter/material.dart';

class PHByteTile extends StatelessWidget {
  final String title;
  final String body;
  final String minutes;
  final bool isRead;
  final bool isBookmarked;

  PHByteTile({
    @required this.title,
    @required this.body,
    @required this.minutes,
    this.isRead = false,
    this.isBookmarked = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                Icons.book_outlined,
                color: Colors.white,
                size: 40,
              ),
            ),
          ),
          SizedBox(width: 12),
          Flexible(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontFamily: 'SFProText-Semibold',
                      fontSize: 18,
                      color: const Color(0xff404040),
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Spacer(flex: 2),
                Text(
                  body,
                  style: TextStyle(
                    fontFamily: 'SFProText-Regular',
                    fontSize: 18,
                    color: const Color(0xff4b4b4b),
                  ),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  maxLines: 2,
                ),
                Spacer(flex: 1),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.bookmark_border,
                  size: 30,
                ),
                Spacer(flex: 1),
                Text(
                  "${minutes}m",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
