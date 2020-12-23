import 'package:flutter/material.dart';

import '../widgets/scaffoldBase.dart';
import '../widgets/homeBody.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScaffoldBase(
        title: "DevFest",
        body: HomeBody(),
      ),
    );
  }
}
