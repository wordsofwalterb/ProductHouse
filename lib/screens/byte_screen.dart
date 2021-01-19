import 'package:ProductHouse/models/byte.dart';
import 'package:ProductHouse/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sfsymbols/flutter_sfsymbols.dart';

class PHByteScreen extends StatelessWidget {
  final PHByte byte;

  const PHByteScreen(this.byte);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterButtons: [
        PHButton('Mark Read'),
        PHButton('Bookmark'),
      ],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // bottom: AppBar(
            //   title: Text('title'),
            // ),
            leading: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  SFSymbols.chevron_left_circle_fill,
                  size: 40,
                ),
              ],
            ),
            expandedHeight: 160,
            flexibleSpace: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 25),
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
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 20),
              child: Text(
                byte.overview,
                style: TextStyle(
                  fontFamily: 'SFProText-Semibold',
                  fontSize: 18,
                  color: const Color(0xff5d59f3),
                  height: 1.6666666666666667,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverToBoxAdapter(child: _buildByteBody()),
          ),
        ],
      ),
    );
  }

  Widget _buildByteBody() {
    List<Widget> bodyWidgets = [];
    for (Map<String, String> element in byte.body) {
      if (element.containsKey("paragraph")) {
        bodyWidgets.add(_paragraph(element["paragraph"]));
      } else if (element.containsKey("emphasis")) {
        bodyWidgets.add(_emphasis(element["emphasis"]));
      } else if (element.containsKey("image")) {
        if (element.containsKey("image_caption")) {
          bodyWidgets.add(_image(element["image"], element["image_caption"]));
        } else {
          bodyWidgets.add(_image(element["image"]));
        }
      }
    }
    return Column(children: [...bodyWidgets]);
  }

  Widget _paragraph(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 18,
        color: const Color(0xff222222),
        letterSpacing: 0.19999999237060545,
        height: 1.6666666666666667,
      ),
      textAlign: TextAlign.left,
    );
  }

  Widget _emphasis(String text) {
    return Row(
      children: [
        Container(
          height: 20,
          width: 5,
          color: Colors.black,
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          text,
          style: TextStyle(
            fontFamily: 'SFProText-Semibold',
            fontSize: 22,
            color: const Color(0xff000000),
          ),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }

  Widget _image(String imageUrl, [String imageCaption]) {
    return Image.network(imageUrl);
  }
}
