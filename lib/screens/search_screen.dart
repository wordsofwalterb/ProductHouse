import 'package:ProductByte/models/byte.dart';
import 'package:ProductByte/services/byte_repository.dart';
import 'package:ProductByte/util/global.dart';
import 'package:ProductByte/util/search_bar.dart';
import 'package:ProductByte/widgets/byte_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final SearchBarController<PHByte> _searchBarController =
      SearchBarController();

  @override
  void initState() {
    super.initState();
  }

  Future<List<PHByte>> _fetchBytes(String keyword) async {
    final bytes = await ByteRepository().searchBytesByTitle(keyword);
    PHGlobal.analytics.logEvent(
      name: 'Searched For Byte',
      parameters: {
        'keyword': keyword,
      },
    );
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
            minimumChars: 0,
            searchBarController: _searchBarController,
            iconActiveColor: Theme.of(context).primaryColor,
            hintText: 'Search',
            onCancelled: () => Navigator.of(context).pop(),
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
