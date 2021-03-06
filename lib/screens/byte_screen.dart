import 'package:ProductByte/blocs/bookmark_bloc/bookmark_bloc.dart';
import 'package:ProductByte/cubits/read_bytes_cubit/read_bytes_cubit.dart';
import 'package:ProductByte/models/byte.dart';
import 'package:ProductByte/widgets/button.dart';
import 'package:ProductByte/widgets/emphasis.dart';
import 'package:ProductByte/widgets/header1.dart';
import 'package:ProductByte/widgets/image.dart';
import 'package:ProductByte/widgets/link_tile.dart';
import 'package:ProductByte/widgets/paragraph.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sfsymbols/flutter_sfsymbols.dart';

class PHByteScreen extends StatelessWidget {
  final PHByte byte;

  const PHByteScreen(this.byte);

  @override
  Widget build(BuildContext context) {
    final bottom = MediaQuery.of(context).padding.bottom;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 160,
            flexibleSpace: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(
                  flex: 4,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text(
                    byte.title,
                    style: TextStyle(
                      fontFamily: 'SFProText-Bold',
                      fontSize: 35,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
          // Overview Text
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 14.0, vertical: 20),
              child: Text(
                byte.overview,
                style: TextStyle(
                    fontSize: 18,
                    color: Theme.of(context).colorScheme.onBackground,
                    height: 1.6666666666666667,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          // Body of Byte
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverToBoxAdapter(child: _buildByteBody()),
          ),
        ],
      ),
      //Bottom Nav Bar
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(width: .5, color: Colors.black12),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            0,
            8,
            0,
            (bottom == 0) ? 8.0 : bottom,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<ReadBytesCubit, ReadBytesState>(
                  builder: (context, state) {
                final cubit = BlocProvider.of<ReadBytesCubit>(context);
                return PHButton(
                  'Mark Read',
                  icon: Icons.check,
                  isActive: state.readByteIds.contains(byte.id),
                  onTap: () => cubit.toggleReadByte(byte.id),
                );
              }),
              SizedBox(
                width: 12,
              ),
              BlocBuilder<BookmarkBloc, BookmarkState>(
                builder: (context, state) {
                  final bloc = BlocProvider.of<BookmarkBloc>(context);
                  return state.maybeMap(
                    loadSuccess: (successState) => PHButton(
                      'Bookmark',
                      icon: Icons.bookmark,
                      isActive: successState.bookmarks.contains(byte),
                      onTap: () => bloc.add(BookmarkEvent.updateBookmark(byte)),
                    ),
                    orElse: () => Container(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildByteBody() {
    List<Widget> bodyWidgets = [];
    for (Map<String, String> element in byte.body) {
      bodyWidgets.addAll([
        if (element.containsKey("paragraph")) ...{
          PHParagraph(element["paragraph"])
        } else if (element.containsKey("emphasis")) ...{
          PHEmphasis(element["emphasis"])
        } else if (element.containsKey("image")) ...{
          PHImage(element["image"], caption: element["imageCaption"])
        } else if (element.containsKey("header1")) ...{
          PHHeader1(element["header1"])
        } else if (element.containsKey("linkId")) ...{
          PHLinkTile(element["linkId"])
        },
        // Always adds a sizedBox for height spacing
        SizedBox(
          height: 25,
        ),
      ]);
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...bodyWidgets,
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
