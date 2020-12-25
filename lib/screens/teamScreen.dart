import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../models/team.dart';
import '../theme/theme_bloc.dart';
import '../theme/theme_state.dart';
import '../widgets/scaffoldBase.dart';
import '../widgets/socialMedia.dart';

class TeamScreen extends StatelessWidget {
  static const String routeName = "/team";

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    final List<TeamData> team = context.watch<Team>().team;

    final List<Color> _colors = [
      Colors.yellowAccent,
      Colors.blue,
      Colors.green,
      Colors.red,
    ];

    return ScaffoldBase(
        title: "Team",
        body: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, theme) {
            return ListView.builder(
              shrinkWrap: true,
              itemBuilder: (contxt, index) => Card(
                elevation: 0.0,
                color: theme.isDarkThemeOn ? Colors.black : Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ConstrainedBox(
                        constraints: BoxConstraints.expand(
                          height: size.height * 0.2,
                          width: size.width * 0.3,
                        ),
                        child: CachedNetworkImage(
                          imageUrl: team[index].image,
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
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              team[index].name,
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            AnimatedContainer(
                              duration: Duration(milliseconds: 100),
                              height: 5,
                              width: size.width * 0.3,
                              color: _colors[Random().nextInt(4)],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              team[index].desc,
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              team[index].job,
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            SocialMedia(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              itemCount: team.length,
            );
          },
        ));
  }
}
