import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/sponsors.dart';
import '../widgets/scaffoldBase.dart';
import '../theme/theme_bloc.dart';
import '../theme/theme_state.dart';

class SponsorsScreen extends StatelessWidget {
  static const String routeName = "/sponsors";

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    final List<SponsorsData> sponsors = context.watch<Sponsors>().sponsors;

    return ScaffoldBase(
      title: "Sponsors",
      body: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, theme) {
          return ListView.builder(
            itemBuilder: (contxt, index) => Card(
              elevation: 0.0,
              color: theme.isDarkThemeOn ? Colors.black : Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    /* CachedNetworkImage(
                      imageUrl: sponsors[index].imageLocation,
                      height: size.height * 0.2,
                      width: size.width * 0.3,
                      fit: BoxFit.cover,
                    ), */
                    Image.asset(
                      theme.isDarkThemeOn
                          ? (sponsors[index].logo ??
                              sponsors[index].imageLocation)
                          : sponsors[index].imageLocation,
                      height: size.height * 0.3,
                      width: size.width,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      sponsors[index].name,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ],
                ),
              ),
            ),
            itemCount: sponsors.length,
          );
        },
      ),
    );
  }
}
