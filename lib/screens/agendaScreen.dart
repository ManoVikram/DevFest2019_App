import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/scaffoldBase.dart';
import '../widgets/sessionList.dart';
import '../theme/theme_bloc.dart';
import '../theme/theme_state.dart';

class AgendaScreen extends StatelessWidget {
  static const routeName = "/agenda";

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, theme) {
        return DefaultTabController(
          length: 3,
          child: ScaffoldBase(
            title: "Agenda",
            tabBar: TabBar(
              tabs: [
                Tab(
                  child: Text("Cloud"),
                  icon: Icon(
                    FontAwesomeIcons.cloud,
                    size: 14,
                  ),
                ),
                Tab(
                  child: Text("Mobile"),
                  icon: Icon(
                    FontAwesomeIcons.mobile,
                    size: 14,
                  ),
                ),
                Tab(
                  child: Text("Web & more"),
                  icon: Icon(
                    FontAwesomeIcons.chrome,
                    size: 14,
                  ),
                ),
              ],
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Colors.red,
              isScrollable: false,
              labelStyle: TextStyle(fontSize: 16),
              labelColor: theme.isDarkThemeOn ? Colors.white : Colors.black,
              unselectedLabelStyle: TextStyle(fontSize: 12),
              unselectedLabelColor: Colors.grey,
            ),
            body: TabBarView(
              children: [
                SessionList(),
                Container(),
                Container(),
              ],
            ),
          ),
        );
      },
    );
  }
}
