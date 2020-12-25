import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import './socialMedia.dart';
import './navs.dart';
import '../theme/theme_bloc.dart';
import '../theme/theme_state.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, theme) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: size.width > 600 ? size.height * 0.9 : 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        theme.isDarkThemeOn
                            ? "lib/assets/images/banner_dark.png"
                            : "lib/assets/images/banner_light.png",
                      ),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: theme.isDarkThemeOn
                            ? Colors.grey[900]
                            : Colors.grey,
                        offset: Offset(0.0, 1.0),
                        blurRadius: 5.0,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Welcome to GDG DevFest",
                  style: Theme.of(context).textTheme.headline6,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "DevFests are community-led, developer events hosted by GDG chapters around the globe focused on community building & learning about Google’s technologies. Each DevFest is inspired by and uniquely tailored to the needs of the developer community and region that hosts it.",
                  style: Theme.of(context).textTheme.caption.copyWith(
                        fontSize: 16,
                        color: theme.isDarkThemeOn
                            ? Colors.white70
                            : Colors.black87,
                      ),
                  textAlign:
                      size.width > 600 ? TextAlign.center : TextAlign.justify,
                ),
                SizedBox(
                  height: 20,
                ),
                Navs(),
                SizedBox(
                  height: 20,
                ),
                SocialMedia(
                  ishome: true,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Version: 1.0.0",
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      .copyWith(fontSize: 10),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
