import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share/share.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../theme/theme_bloc.dart';
import '../theme/theme_event.dart';
import '../theme/theme_state.dart';

class ScaffoldBase extends StatelessWidget {
  final String title;
  final Widget body;
  final Widget tabBar;

  ScaffoldBase({
    Key key,
    @required this.title,
    @required this.body,
    this.tabBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ThemeBloc>(context);
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, theme) {
        return AnimatedContainer(
          duration: Duration(
            seconds: 5,
          ),
          color: theme.isDarkThemeOn ? Colors.grey[800] : Colors.white,
          child: SafeArea(
            top: false,
            bottom: false,
            child: Scaffold(
              backgroundColor:
                  theme.isDarkThemeOn ? Colors.black : Colors.white,
              appBar: AppBar(
                iconTheme: Theme.of(context).iconTheme,
                textTheme: Theme.of(context).textTheme,
                title: Text(
                  title,
                  style: TextStyle(
                    color: theme.isDarkThemeOn ? Colors.white : Colors.black,
                  ),
                ),
                centerTitle: true,
                backgroundColor:
                    theme.isDarkThemeOn ? Colors.black : Colors.white,
                foregroundColor:
                    theme.isDarkThemeOn ? Colors.white : Colors.black,
                elevation: 0,
                bottom: tabBar ?? null,
                // '??' means 'if null'
                actions: [
                  theme.isDarkThemeOn
                      ? InkWell(
                          onTap: () {
                            print(1);
                            print(theme);
                            return bloc.add(const DarkTheme());
                          },
                          child: Icon(
                            FontAwesomeIcons.solidLightbulb,
                            color: Colors.amber,
                            size: 18,
                          ),
                        )
                      : InkWell(
                          onTap: () {
                            print(2);
                            return bloc.add(const LightTheme());
                          },
                          child: Icon(
                            FontAwesomeIcons.lightbulb,
                            color: Colors.black,
                            size: 18,
                          ),
                        ),
                  IconButton(
                    onPressed: () => Share.share(
                      "Download the app and share it with your friends.\nPlayStore - http://bit.ly/2GDr18N",
                    ),
                    icon: Icon(
                      Icons.share,
                      color: theme.isDarkThemeOn ? Colors.white : Colors.black,
                    ),
                    iconSize: 20,
                  ),
                ],
              ),
              body: body,
            ),
          ),
        );
      },
    );
  }
}
