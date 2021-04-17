import 'package:ProductByte/models/phlink.dart';
import 'package:ProductByte/services/feed_steam_cubit/feed_stream_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sfsymbols/flutter_sfsymbols.dart';

class PHLinkTile extends StatelessWidget {
  const PHLinkTile(this.linkId);

  final String linkId;

  @override
  Widget build(BuildContext context) {
    // final body = context
    //     .select((FeedStreamCubit<FFPost> r) => r.state.itemIds[id]?.body);

    // final link = context.watch<FeedStreamCubit<PHLink>>().state;
    return GestureDetector(
      onTap: () => {},
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
                        'This is the Title',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'WIKIPEDIA',
                        style: Theme.of(context).textTheme.overline.copyWith(
                              fontSize: 14,
                              color: Colors.black87,
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
  }
}
