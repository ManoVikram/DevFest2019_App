import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

import './theme/theme_bloc.dart';
import './theme/theme_state.dart';
import './screens/homeScreen.dart';
import './screens/agendaScreen.dart';
import './screens/speakersScreen.dart';
import './models/speakers.dart';
import './models/sessions.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, theme) {
          return MultiProvider(
            providers: [
              ChangeNotifierProvider(
                create: (contxt) => Speaker(),
              ),
              ChangeNotifierProvider(
                create: (contxt) => Session(),
              ),
              /* Provider<Session>(
                create: (contxt) => Session(),
              ), */
            ],
            child: MaterialApp(
              title: "GDG DEVFEST",
              debugShowCheckedModeBanner: false,
              theme: theme.theme,
              home: DevFest(),
              routes: {
                AgendaScreen.routeName: (contxt) => AgendaScreen(),
                SpeakersScreen.routeName: (contxt) => SpeakersScreen(),
              },
            ),
          );
        },
      ),
    );
  }
}

class DevFest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );

  /* SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]); */

  // AppEssentials.preferences = await SharedPreferences.getInstance();

  runApp(MyApp());
}
