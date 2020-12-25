import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../widgets/scaffoldBase.dart';
import '../widgets/socialMedia.dart';
import '../models/speakers.dart';
import '../theme/theme_bloc.dart';
import '../theme/theme_state.dart';

class SpeakersScreen extends StatelessWidget {
  static const String routeName = "/speakers";

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    final speakers = context.watch<Speaker>().speakers;

    final List<Color> _colors = [
      Colors.yellowAccent,
      Colors.blue,
      Colors.green,
      Colors.red,
    ];

    return ScaffoldBase(
      title: "Speakers",
      body: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, theme) {
          return ListView.builder(
            shrinkWrap: true,
            itemBuilder: (contxt, index) => Card(
              elevation: 0.0,
              color: theme.isDarkThemeOn ? Colors.black : Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ConstrainedBox(
                      constraints: BoxConstraints.expand(
                        height: size.height * 0.2,
                        width: size.width * 0.3,
                      ),
                      child: CachedNetworkImage(
                        imageUrl: speakers[index].speakerImg,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                speakers[index].speakerName,
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              AnimatedContainer(
                                duration: Duration(
                                  milliseconds: 100,
                                ),
                                width: size.width * 0.3,
                                height: 5,
                                color: _colors[Random().nextInt(4)],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            speakers[index].speakerDesc,
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            speakers[index].speakerSession,
                            style: Theme.of(context).textTheme.caption,
                          ),
                          SizedBox(height: 10),
                          SocialMedia(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            itemCount: speakers.length,
          );
        },
      ),
    );
  }
}
