import 'package:ProductByte/blocs/bookmark_bloc/bookmark_bloc.dart';
import 'package:ProductByte/cubits/read_bytes_cubit/read_bytes_cubit.dart';
import 'package:ProductByte/cubits/recent_bytes_cubit/recent_bytes_cubit.dart';
import 'package:ProductByte/util/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PHSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bookmarkBloc = BlocProvider.of<BookmarkBloc>(context);
    final recentsCubit = BlocProvider.of<RecentBytesCubit>(context);
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(PHRoutes.searchScreen,
          arguments: SearchScreenArgs(
            readBytesCubit: BlocProvider.of<ReadBytesCubit>(context),
            bookmarkBloc: bookmarkBloc,
            recentsCubit: recentsCubit,
          )),
      child: Container(
        height: 42,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: const Color(0xfff0f1f5),
        ),
        child: Row(
          children: [
            SizedBox(width: 14),
            Icon(
              Icons.search,
              color: Colors.grey,
            ),
            SizedBox(
              width: 6,
            ),
            Text(
              'Search',
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
