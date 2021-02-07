import 'package:ProductHouse/blocs/bookmark_bloc/bookmark_bloc.dart';
import 'package:ProductHouse/models/byte.dart';
import 'package:ProductHouse/util/router.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PHByteSquare extends StatelessWidget {
  final PHByte byte;

  const PHByteSquare(this.byte);

  @override
  Widget build(BuildContext context) {
    final bookmarkBloc = BlocProvider.of<BookmarkBloc>(context);
    return GestureDetector(
      onTap: () => Navigator.pushNamed(
        context,
        PHRoutes.byteScreen,
        arguments: ByteScreenArgs(
          bookmarkBloc: bookmarkBloc,
          byte: byte,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
            color: Theme.of(context).primaryColor),
        padding: EdgeInsets.all(11),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: AutoSizeText(
                    byte.title,
                    wrapWords: false,
                    softWrap: true,
                    style: TextStyle(
                      fontFamily: 'SFProText-Bold',
                      fontSize: 22,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 3,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: BlocBuilder<BookmarkBloc, BookmarkState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                          loadSuccess: (bookmarks) => IconButton(
                                iconSize: 35,
                                visualDensity: VisualDensity.compact,
                                padding: EdgeInsets.zero,
                                onPressed: () => bookmarkBloc
                                    .add(BookmarkEvent.updateBookmark(byte)),
                                icon: Icon(
                                  (bookmarks.contains(byte))
                                      ? Icons.bookmark
                                      : Icons.bookmark_border_outlined,
                                  color: Colors.white,
                                ),
                              ),
                          orElse: () => Container());
                    },
                  ),
                ),
              ],
            ),
            Spacer(
              flex: 1,
            ),
            Row(
              children: [
                Text(
                  byte.tags[0] ?? 'Uncategorized',
                  style: TextStyle(
                    fontFamily: 'SFProText-Regular',
                    fontSize: 18,
                    color: const Color(0xffffffff),
                  ),
                  textAlign: TextAlign.left,
                ),
                Spacer(
                  flex: 1,
                ),
                Icon(
                  Icons.circle,
                  size: 9,
                  color: Colors.white,
                ),
                Spacer(
                  flex: 1,
                ),
                // Adobe XD layer: 'Behavioral' (text)
                Text(
                  byte.readTime,
                  style: TextStyle(
                    fontFamily: 'SFProText-Regular',
                    fontSize: 18,
                    color: const Color(0xffffffff),
                  ),
                  textAlign: TextAlign.left,
                ),
                Spacer(
                  flex: 3,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
