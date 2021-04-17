import 'package:ProductByte/blocs/bookmark_bloc/bookmark_bloc.dart';
import 'package:ProductByte/cubits/read_bytes_cubit/read_bytes_cubit.dart';
import 'package:ProductByte/cubits/recent_bytes_cubit/recent_bytes_cubit.dart';
import 'package:ProductByte/models/byte.dart';
import 'package:ProductByte/models/phcollection.dart';
import 'package:ProductByte/util/global.dart';
import 'package:ProductByte/util/router.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CollectionSquare extends StatelessWidget {
  final PHCollection collection;

  const CollectionSquare(this.collection);

  @override
  Widget build(BuildContext context) {
    final bookmarkBloc = BlocProvider.of<BookmarkBloc>(context);
    final readBytes = BlocProvider.of<ReadBytesCubit>(context);
    return GestureDetector(
      onTap: () => Navigator.pushNamed(
        context,
        PHRoutes.collectionScreen,
        arguments: CollectionScreenArgs(
          bookmarkBloc: bookmarkBloc,
          readBytesCubit: readBytes,
          recentsCubit: BlocProvider.of<RecentBytesCubit>(context),
          collection: collection,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          color: Theme.of(context).colorScheme.surface,
        ),
        padding: EdgeInsets.all(11),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        collection.title,
                        wrapWords: false,
                        softWrap: true,
                        style: TextStyle(
                          fontFamily: 'SFProText-Bold',
                          fontSize: 22,
                          color: Theme.of(context).colorScheme.onSurface,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 3,
                      ),
                      // if (isRead) ...{
                      //   SizedBox(
                      //     height: 6,
                      //   ),
                      //   Text(
                      //     'Read',
                      //     style: Theme.of(context).textTheme.bodyText2.copyWith(
                      //         color: Theme.of(context).colorScheme.onSurface,
                      //         fontSize: 18),
                      //   ),
                      // }
                    ],
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(left: 4.0),
                //   child: BlocBuilder<BookmarkBloc, BookmarkState>(
                //     builder: (context, state) {
                //       return state.maybeWhen(
                //         loadSuccess: (bookmarks) => IconButton(
                //           iconSize: 35,
                //           visualDensity: VisualDensity.compact,
                //           alignment: Alignment.topRight,
                //           padding: EdgeInsets.zero,
                //           onPressed: () => {},
                //           icon: Icon(
                //             (bookmarks.contains(byte))
                //                 ? Icons.bookmark
                //                 : Icons.bookmark_border_outlined,
                //             color: Theme.of(context).colorScheme.onSurface,
                //           ),
                //         ),
                //         orElse: () => Container(),
                //       );
                //     },
                //   ),
                // ),
              ],
            ),
            Spacer(
              flex: 1,
            ),
            Row(
              children: [
                Text(
                  collection.tags[0] ?? 'Uncategorized',
                  style: TextStyle(
                    fontFamily: 'SFProText-Regular',
                    fontSize: 18,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                  textAlign: TextAlign.left,
                ),
                Spacer(
                  flex: 1,
                ),

                Spacer(
                  flex: 1,
                ),
                // Adobe XD layer: 'Behavioral' (text)
                Text(
                  collection.readTime,
                  style: TextStyle(
                    fontFamily: 'SFProText-Regular',
                    fontSize: 18,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
