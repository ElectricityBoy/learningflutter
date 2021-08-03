import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';


class UniPage extends StatefulWidget {
  @override
  State<UniPage> createState() {
    return UniPageState();
  }
}

class UniPageState extends State<UniPage> {
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter_linkify example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('flutter_linkify example'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Center(
              child: Linkify(
                onOpen: _onOpen,
                textScaleFactor: 2,
                text: "Made by https://cretezy.com\n\nMail: example@gmail.com",
              ),
            ),
            Center(
              child: SelectableLinkify(
                onOpen: _onOpen,
                textScaleFactor: 4,
                text: "Made by https://cretezy.com\n\nMail: example@gmail.com",
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _onOpen(LinkableElement link) async {
    if (await canLaunch(link.url)) {
      await launch(link.url);
    } else {
      throw 'Could not launch $link';
    }
  }
}
