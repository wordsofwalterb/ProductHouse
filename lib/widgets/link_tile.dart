import 'package:ProductByte/models/phlink.dart';
import 'package:ProductByte/services/feed_steam_cubit/feed_stream_cubit.dart';
import 'package:ProductByte/services/firebase_service/firebase_service.dart';
import 'package:ProductByte/util/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sfsymbols/flutter_sfsymbols.dart';
import 'package:url_launcher/url_launcher.dart';

class PHLinkTile extends StatelessWidget {
  const PHLinkTile(this.linkId);

  final String linkId;

  Future<void> _launchLink(String url) async {
    PHGlobal.analytics.logEvent(
      name: 'Launched Link $linkId',
    );

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: FirebaseService<PHLink>().getItemFromId(linkId),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final data = snapshot.data as PHLink;
          return GestureDetector(
            onTap: () => _launchLink(data.url),
            child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
                clipBehavior: Clip.antiAlias,
                child: IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        width: 8,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data.title,
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              data.sourceName.toUpperCase(),
                              style: Theme.of(context)
                                  .textTheme
                                  .overline
                                  .copyWith(
                                    fontSize: 14,
                                    color:
                                        Theme.of(context).colorScheme.onSurface,
                                  ),
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Icon(
                          SFSymbols.arrow_up_right,
                          size: 35,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                      )
                    ],
                  ),
                )),
          );
        } else {
          return Container();
        }
      },
    );
  }
}
