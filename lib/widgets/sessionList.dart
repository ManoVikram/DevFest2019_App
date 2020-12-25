import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../models/sessions.dart';
import '../theme/theme_bloc.dart';
import '../theme/theme_state.dart';

class SessionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<SessionData> sessions = context.watch<Session>().sessions;

    final List<Color> _colors = [
      Colors.yellowAccent,
      Colors.blue,
      Colors.green,
      Colors.red,
    ];

    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, theme) {
        return ListView.builder(
          itemBuilder: (contxt, index) => Card(
            elevation: 0.0,
            color: theme.isDarkThemeOn ? Colors.black : Colors.white,
            child: ListTile(
              isThreeLine: true,
              leading: Hero(
                tag: sessions[index].speakerImg,
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage:
                      CachedNetworkImageProvider(sessions[index].speakerImg),
                ),
              ),
              title: RichText(
                text: TextSpan(
                  text: "${sessions[index].sessionTitle}\n",
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        fontSize: 16,
                      ),
                  children: [
                    TextSpan(
                      text: sessions[index].speakerName,
                      style: Theme.of(context).textTheme.subtitle2.copyWith(
                            color: _colors[Random().nextInt(4)],
                          ),
                    ),
                  ],
                ),
              ),
              subtitle: Text(
                sessions[index].speakerDesc,
                style: Theme.of(context).textTheme.caption.copyWith(
                      fontSize: 10,
                    ),
              ),
              trailing: RichText(
                text: TextSpan(
                  text: "${sessions[index].sessionTotalTime}\n",
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                  children: [
                    TextSpan(
                      text: sessions[index].sessionStartTime,
                      style: Theme.of(context).textTheme.subtitle2.copyWith(
                            fontSize: 12,
                          ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          itemCount: sessions.length,
        );
      },
    );
  }
}
