import 'package:ProductHouse/models/byte.dart';
import 'package:ProductHouse/services/byte_repository.dart';
import 'package:ProductHouse/widgets/byte_tile.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';

import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final SearchBarController<PHByte> _searchBarController =
      SearchBarController();

  Future<List<PHByte>> _fetchBytes(String keyword) async {
    final bytes = await ByteRepository().searchBytesByTitle(keyword);
    return bytes.hasData ? bytes.data : [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SafeArea(
          child: SearchBar<PHByte>(
            searchBarPadding: const EdgeInsets.symmetric(horizontal: 10),
            headerPadding: const EdgeInsets.symmetric(horizontal: 10),
            onSearch: _fetchBytes,
            searchBarController: _searchBarController,
            iconActiveColor: Theme.of(context).primaryColor,
            hintText: 'Search',
            cancellationWidget: const Text('Cancel'),
            searchBarStyle: const SearchBarStyle(
              padding: EdgeInsets.symmetric(horizontal: 10),
            ),
            header: Container(
              width: double.infinity,
              padding: const EdgeInsets.only(bottom: 20, top: 12),
              child: Text(
                'Search Results',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            // emptyWidget: Center(child: Text("empty")),
            // indexedScaledTileBuilder: (int index) =>
            //     ScaledTile.count(1, index.isEven ? 2 : 1),
            // onCancelled: () {
            //   print("Cancelled triggered");
            // },
            onItemFound: (PHByte byte, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: PHByteTile(
                  byte: byte,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
