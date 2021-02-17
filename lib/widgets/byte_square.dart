import 'package:ProductHouse/blocs/bookmark_bloc/bookmark_bloc.dart';
import 'package:ProductHouse/cubits/read_bytes_cubit/read_bytes_cubit.dart';
import 'package:ProductHouse/cubits/recent_bytes_cubit/recent_bytes_cubit.dart';
import 'package:ProductHouse/models/byte.dart';
import 'package:ProductHouse/util/global.dart';
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
    final readBytes = BlocProvider.of<ReadBytesCubit>(context);
    return GestureDetector(
      onTap: () => Navigator.pushNamed(
        context,
        PHRoutes.byteScreen,
        arguments: ByteScreenArgs(
          bookmarkBloc: bookmarkBloc,
          readBytesCubit: readBytes,
          recentsCubit: BlocProvider.of<RecentBytesCubit>(context),
          byte: byte,
        ),
      ),
      child: BlocBuilder<ReadBytesCubit, ReadBytesState>(
          builder: (context, state) {
        final isRead = state.readByteIds.contains(byte.id);
        return Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color:
                  isRead ? Theme.of(context).primaryColor : PHGlobal.lightGrey),
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
                        color:
                            isRead ? const Color(0xffffffff) : Colors.black87,
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
                                    color:
                                        isRead ? Colors.white : Colors.black54,
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
                      color: isRead ? const Color(0xffffffff) : Colors.black87,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Icon(
                    Icons.circle,
                    size: 9,
                    color: isRead ? Colors.white : Colors.black87,
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
                      color: isRead ? const Color(0xffffffff) : Colors.black87,
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
        );
      }),
    );
  }
}
