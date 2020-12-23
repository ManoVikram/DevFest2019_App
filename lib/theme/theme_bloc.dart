import 'package:devfest_app/theme/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'theme_event.dart';

class ThemeBloc extends HydratedBloc<ThemeEvent, ThemeState> {
  ThemeBloc()
      : super(
          ThemeState(
            false,
            ThemeData.light().copyWith(
              textTheme: ThemeData.light().textTheme.apply(
                    fontFamily: GoogleFonts.dmSans().fontFamily,
                  ),
            ),
          ),
        );

  static final _lightTheme = ThemeState(
    false,
    ThemeData.light().copyWith(
      textTheme: ThemeData.light().textTheme.apply(
            fontFamily: GoogleFonts.dmSans().fontFamily,
          ),
    ),
  );
  static final _darkTheme = ThemeState(
    true,
    ThemeData.dark().copyWith(
      textTheme: ThemeData.dark().textTheme.apply(
            fontFamily: GoogleFonts.dmSans().fontFamily,
          ),
    ),
  );

  @override
  Stream<ThemeState> mapEventToState(ThemeEvent event) async* {
    if (event is DarkTheme) {
      yield _lightTheme;
    }

    if (event is LightTheme) {
      yield _darkTheme;
    }
  }

  @override
  ThemeState fromJson(Map<String, dynamic> source) {
    try {
      if (source["light"] as bool) {
        return ThemeState(
          false,
          ThemeData.light().copyWith(
            textTheme: ThemeData.light().textTheme.apply(
                  fontFamily: GoogleFonts.dmSans().fontFamily,
                ),
          ),
        );
      }
      return ThemeState(
        true,
        ThemeData.dark().copyWith(
          textTheme: ThemeData.dark().textTheme.apply(
                fontFamily: GoogleFonts.dmSans().fontFamily,
              ),
        ),
      );
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, bool> toJson(ThemeState themeState) {
    try {
      return {
        "light": state !=
            ThemeState(
              false,
              ThemeData.light().copyWith(
                textTheme: ThemeData.light().textTheme.apply(
                      fontFamily: GoogleFonts.dmSans().fontFamily,
                    ),
              ),
            ),
      };
    } catch (_) {
      return null;
    }
  }
}
