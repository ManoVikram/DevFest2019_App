import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../theme/theme_bloc.dart';
import '../theme/theme_event.dart';
import '../theme/theme_state.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ThemeBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Theme"),
        actions: [
          BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, theme) {
              return theme.isDarkThemeOn
                  ? InkWell(
                      onTap: () {
                        print(2);
                        print(theme);
                        return bloc.add(const DarkTheme());
                      },
                      child: Icon(
                        Icons.lightbulb,
                        color: Colors.yellow,
                      ),
                    )
                  : InkWell(
                      onTap: () {
                        print(1);
                        return bloc.add(const LightTheme());
                      },
                      child: Icon(
                        Icons.lightbulb_outline,
                        color: Colors.white,
                      ),
                    );
            },
          )
        ],
      ),
      body: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FlatButton(
                  onPressed: () => bloc.add(const LightTheme()),
                  child: Text("Dark Theme"),
                ),
                FlatButton(
                  onPressed: () => bloc.add(const DarkTheme()),
                  child: Text("Light Theme"),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
