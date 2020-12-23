import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'theme_event.dart';

class ThemeBloc extends HydratedBloc<ThemeEvent, ThemeData> {
  ThemeBloc() : super(ThemeData.light());

  static final _lightTheme = ThemeData.light().copyWith(
    textTheme: ThemeData.dark().textTheme.apply(
          fontFamily: GoogleFonts.dmSans().fontFamily,
        ),
  );
  static final _darkTheme = ThemeData.dark().copyWith(
    textTheme: ThemeData.light().textTheme.apply(
          fontFamily: GoogleFonts.dmSans().fontFamily,
        ),
  );

  @override
  Stream<ThemeData> mapEventToState(ThemeEvent event) async* {
    if (event is DarkTheme) {
      yield _lightTheme;
    }

    if (event is LightTheme) {
      yield _darkTheme;
    }
  }

  @override
  ThemeData fromJson(Map<String, dynamic> source) {
    try {
      if (source["light"] as bool) {
        return ThemeData.light().copyWith(
          textTheme: ThemeData.dark().textTheme.apply(
                fontFamily: GoogleFonts.dmSans().fontFamily,
              ),
        );
      }
      return ThemeData.dark().copyWith(
        textTheme: ThemeData.light().textTheme.apply(
              fontFamily: GoogleFonts.dmSans().fontFamily,
            ),
      );
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, bool> toJson(ThemeData themeData) {
    try {
      return {
        "light": state !=
            ThemeData.light().copyWith(
              textTheme: ThemeData.dark().textTheme.apply(
                    fontFamily: GoogleFonts.dmSans().fontFamily,
                  ),
            ),
      };
    } catch (_) {
      return null;
    }
  }
}
