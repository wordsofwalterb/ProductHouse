import 'package:ProductHouse/util/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sfsymbols/flutter_sfsymbols.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileScreen extends StatelessWidget {
  Future<void> _launchPrivacyPolicy() async {
    PHGlobal.analytics.logEvent(
      name: 'Launched Privacy',
    );

    const url =
        'https://www.notion.so/amerison/Privacy-Policy-for-Bite-ace5b2d9891141b49573b926e2f1b6ff';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

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
            onTap: _launchPrivacyPolicy,
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
