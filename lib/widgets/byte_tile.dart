import 'package:ProductByte/blocs/bookmark_bloc/bookmark_bloc.dart';
import 'package:ProductByte/cubits/read_bytes_cubit/read_bytes_cubit.dart';
import 'package:ProductByte/cubits/recent_bytes_cubit/recent_bytes_cubit.dart';
import 'package:ProductByte/models/byte.dart';
import 'package:ProductByte/util/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sfsymbols/flutter_sfsymbols.dart';

class PHByteTile extends StatelessWidget {
  final PHByte byte;

  PHByteTile({@required this.byte});

  @override
  Widget build(BuildContext context) {
    final bookmarkBloc = BlocProvider.of<BookmarkBloc>(context);
    final readBytesCubit = BlocProvider.of<ReadBytesCubit>(context);
    return GestureDetector(
      onTap: () => Navigator.pushNamed(
        context,
        PHRoutes.byteScreen,
        arguments: ByteScreenArgs(
          readBytesCubit: readBytesCubit,
          bookmarkBloc: bookmarkBloc,
          recentsCubit: BlocProvider.of<RecentBytesCubit>(context),
          byte: byte,
        ),
      ),
      child: BlocBuilder<ReadBytesCubit, ReadBytesState>(
          builder: (context, state) {
        final isRead = state.readByteIds.contains(byte.id);
        return Container(
          height: 70,
          child: Row(
            children: [
              if (isRead) ...{
                AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          SFSymbols.book_fill,
                          color: Colors.white,
                          size: 35,
                        ),
                        Text(
                          'Read',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              } else ...{
                AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      SFSymbols.book,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ),
              },
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(flex: 2),
                    Text(
                      byte.title,
                      style: TextStyle(
                          fontSize: 18,
                          color: Theme.of(context).colorScheme.onSurface,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                    Spacer(flex: 1),
                    Text(
                      'Strategy',
                      style: TextStyle(
                        fontSize: 18,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      maxLines: 2,
                    ),
                    Spacer(flex: 2),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                          orElse: () => IconButton(
                            iconSize: 35,
                            visualDensity: VisualDensity.compact,
                            padding: EdgeInsets.zero,
                            onPressed: () => {},
                            icon: const Icon(Icons.bookmark_border_outlined),
                            color: Colors.grey,
                          ),
                        );
                      },
                    ),
                    Spacer(flex: 1),
                    Text(
                      "${byte.readTime}",
                      textAlign: TextAlign.end,
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
