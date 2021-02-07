import 'package:ProductHouse/blocs/bookmark_bloc/bookmark_bloc.dart';
import 'package:ProductHouse/models/byte.dart';
import 'package:ProductHouse/util/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PHByteTile extends StatelessWidget {
  final PHByte byte;

  PHByteTile({@required this.byte});

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
                    byte.title,
                    style: TextStyle(
                        fontFamily: 'SFProText-Semibold',
                        fontSize: 18,
                        color: const Color(0xff404040),
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  Spacer(flex: 2),
                  Text(
                    byte.overview,
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
                  BlocBuilder<BookmarkBloc, BookmarkState>(
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
                                  color: Colors.grey,
                                ),
                              ),
                          orElse: () => Container());
                    },
                  ),
                  Spacer(flex: 1),
                  Text(
                    "${byte.readTime}",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
