import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../theme/theme_bloc.dart';
import '../theme/theme_state.dart';

class SocialMedia extends StatelessWidget {
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      launch(url);
    } else {
      throw "Couldn't launch URL";
    }
  }

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, theme) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.github,
                ),
                color: theme.isDarkThemeOn ? Colors.grey[100] : Colors.grey,
                onPressed: () => _launchURL("https://github.com/ManoVikram"),
              ),
              IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.twitter,
                ),
                color: theme.isDarkThemeOn ? Colors.grey[100] : Colors.grey,
                onPressed: () => _launchURL("https://twitter.com/ManoVik18"),
              ),
              IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.linkedinIn,
                ),
                color: theme.isDarkThemeOn ? Colors.grey[100] : Colors.grey,
                onPressed: () => _launchURL(
                    "https://www.linkedin.com/in/mano-vikram-1398a11b6/"),
              ),
              IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.instagram,
                ),
                color: theme.isDarkThemeOn ? Colors.grey[100] : Colors.grey,
                onPressed: () =>
                    _launchURL("https://www.instagram.com/mano_vikram.18/"),
              ),
              IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.envelope,
                ),
                color: theme.isDarkThemeOn ? Colors.grey[100] : Colors.grey,
                onPressed: () {
                  /* final String url =
                      "mailto:18x022@psgtech.ac.in?subject=Support needed for DevFest";
                  _launchURL(Uri.encodeFull(url)); */
                  // Alternative
                  final Uri _emailLaunchUri = Uri(
                    scheme: "mailto",
                    path: "18x022@psgtech.ac.in",
                    queryParameters: {
                      "subject": "Support needed for DevFest",
                    },
                  );
                  _launchURL(_emailLaunchUri.toString());
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
