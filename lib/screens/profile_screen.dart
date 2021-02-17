import 'package:ProductHouse/util/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sfsymbols/flutter_sfsymbols.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PHGlobal.lightGrey,
      appBar: AppBar(
        title: Text(
          'Account',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconTheme.of(context).copyWith(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        brightness: Brightness.light,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 24,
          ),
          ListTile(
            visualDensity: VisualDensity.adaptivePlatformDensity,
            dense: false,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 6, horizontal: 22),
            onTap: () => {},
            title: Text(
              'Privacy Policy',
              style:
                  Theme.of(context).textTheme.bodyText2.copyWith(fontSize: 18),
            ),
            trailing: const Icon(SFSymbols.chevron_right),
            tileColor: Colors.white,
          )
        ],
      ),
    );
  }
}
