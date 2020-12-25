import 'dart:math';

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../models/sessions.dart';
import '../widgets/scaffoldBase.dart';
import '../widgets/socialMedia.dart';

class SessionDetailsScreen extends StatelessWidget {
  static const String routeName = "/sessionDetails";

  final List<Color> _colors = [
    Colors.red,
    Colors.green,
    Colors.yellowAccent,
    Colors.blue,
  ];

  @override
  Widget build(BuildContext context) {
    final SessionData session = ModalRoute.of(context).settings.arguments;
    return ScaffoldBase(
      title: session.speakerName,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Hero(
                  tag: session.speakerImg,
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: CachedNetworkImageProvider(
                      session.speakerImg,
                    ),
                  ),
                ),
              ),
              /* Flexible(
                child: FractionallySizedBox(
                  heightFactor: 0.2,
                ),
              ), */
              SizedBox(
                height: 20,
              ),
              Text(
                session.speakerDesc,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline6.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: _colors[Random().nextInt(4)],
                    ),
              ),
              /* Flexible(
                child: FractionallySizedBox(
                  heightFactor: 0.2,
                ),
              ), */
              SizedBox(
                height: 20,
              ),
              Text(
                session.sessionTitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline6.copyWith(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                session.sessionDesc,
                textAlign: TextAlign.justify,
                style: Theme.of(context).textTheme.caption.copyWith(
                      fontSize: 16,
                    ),
              ),
              SizedBox(
                height: 20,
              ),
              SocialMedia(),
            ],
          ),
        ),
      ),
    );
  }
}
