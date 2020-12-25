import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import './tappableCard.dart';
import '../theme/theme_bloc.dart';
import '../theme/theme_state.dart';
import '../screens/agendaScreen.dart';
import '../screens/speakersScreen.dart';

class Navs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<BoxShadow> _boxShadow = [
      BoxShadow(
        color: Colors.grey[200],
        blurRadius: 10,
        spreadRadius: 5,
      ),
    ];
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, theme) {
        return Wrap(
          alignment: WrapAlignment.center,
          spacing: 20.0,
          runSpacing: 20.0,
          children: [
            TappableCard(
              onPressed: () {
                Navigator.of(context).pushNamed(AgendaScreen.routeName);
              },
              title: "Agenda",
              color: theme.isDarkThemeOn ? Color(0xFF1F2124) : Colors.grey[50],
              icon: Icons.schedule,
              iconColor: Colors.red,
              boxShadow: theme.isDarkThemeOn ? null : _boxShadow,
            ),
            TappableCard(
              onPressed: () {
                Navigator.of(context).pushNamed(SpeakersScreen.routeName);
              },
              title: "Speakers",
              color: theme.isDarkThemeOn ? Color(0xFF1F2124) : Colors.grey[50],
              icon: Icons.person,
              iconColor: Colors.greenAccent[400],
              boxShadow: theme.isDarkThemeOn ? null : _boxShadow,
            ),
            TappableCard(
              onPressed: () {},
              title: "Team",
              color: theme.isDarkThemeOn ? Color(0xFF1F2124) : Colors.grey[50],
              icon: Icons.people,
              iconColor: Colors.amber,
              boxShadow: theme.isDarkThemeOn ? null : _boxShadow,
            ),
            TappableCard(
              onPressed: () {},
              title: "Sponsors",
              color: theme.isDarkThemeOn ? Color(0xFF1F2124) : Colors.grey[50],
              icon: Icons.attach_money,
              iconColor: Colors.deepOrange,
              boxShadow: theme.isDarkThemeOn ? null : _boxShadow,
            ),
            TappableCard(
              onPressed: () {},
              title: "FAQ",
              color: theme.isDarkThemeOn ? Color(0xFF1F2124) : Colors.grey[50],
              icon: Icons.question_answer,
              iconColor: Colors.indigoAccent,
              boxShadow: theme.isDarkThemeOn ? null : _boxShadow,
            ),
            TappableCard(
              onPressed: () {},
              title: "Locate US",
              color: theme.isDarkThemeOn ? Color(0xFF1F2124) : Colors.grey[50],
              icon: Icons.location_on,
              iconColor: Colors.redAccent,
              boxShadow: theme.isDarkThemeOn ? null : _boxShadow,
            ),
          ],
        );
      },
    );
  }
}
