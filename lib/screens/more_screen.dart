import 'package:ProductByte/blocs/bookmark_bloc/bookmark_bloc.dart';
import 'package:ProductByte/models/byte.dart';
import 'package:ProductByte/services/byte_repository.dart';
import 'package:ProductByte/util/result.dart';
import 'package:ProductByte/widgets/byte_square.dart';
import 'package:ProductByte/widgets/byte_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: Theme.of(context)
            .iconTheme
            .copyWith(color: Theme.of(context).colorScheme.onBackground),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
              child: Text(
                'Bookmarks',
                style: TextStyle(
                  fontFamily: 'SFProText-Bold',
                  fontSize: 35,
                  color: Theme.of(context).colorScheme.onBackground,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          _buildList(context),
        ],
      ),
    );
  }

  Widget _buildList(BuildContext context) {
    return BlocBuilder<BookmarkBloc, BookmarkState>(
      builder: (context, state) {
        return state.maybeWhen(
          loadSuccess: (bookmarks) {
            return SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 1.0,
                ),
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return PHByteSquare(bookmarks[index]);
                }, childCount: bookmarks.length),
              ),
            );
          },
          orElse: () => SliverToBoxAdapter(
            child: Container(),
          ),
        );
      },
    );
  }
}
