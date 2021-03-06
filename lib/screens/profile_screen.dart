import 'package:ProductByte/blocs/user_bloc/user_bloc.dart';
import 'package:ProductByte/util/global.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sfsymbols/flutter_sfsymbols.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    final userBloc = context.watch<UserBloc>();
    return userBloc.state.maybeWhen(
        authenticatedAnonymously: (user) {
          return Scaffold(
            backgroundColor: Theme.of(context).colorScheme.background,
            appBar: AppBar(
              title: Text(
                'Account',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              iconTheme: Theme.of(context).iconTheme,
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.transparent,
              bottomOpacity: 0,
              elevation: 0,
              actionsIconTheme: Theme.of(context).iconTheme,
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
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2
                        .copyWith(fontSize: 18),
                  ),
                  trailing: const Icon(SFSymbols.chevron_right),
                  tileColor: Theme.of(context).colorScheme.surface,
                ),
                SizedBox(
                  height: 6,
                ),
                ListTile(
                  visualDensity: VisualDensity.adaptivePlatformDensity,
                  dense: false,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 22),
                  onTap: _launchPrivacyPolicy,
                  title: Text(
                    'Dark Mode',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2
                        .copyWith(fontSize: 18),
                  ),
                  trailing: CupertinoSwitch(
                    value: user.hasDarkMode,
                    onChanged: (change) => userBloc.add(
                      UserEvent.updateUser(hasDarkMode: change),
                    ),
                    activeColor: Theme.of(context).colorScheme.primary,
                  ),
                  tileColor: Theme.of(context).colorScheme.surface,
                )
              ],
            ),
          );
        },
        orElse: () => Scaffold());
  }
}
