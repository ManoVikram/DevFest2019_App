import 'package:flutter/widgets.dart';

class SponsorsData {
  final String name;
  final String logo;
  final String imageLocation;
  final String desc;
  final String url;

  SponsorsData({
    this.name,
    this.logo,
    this.imageLocation,
    this.desc,
    this.url,
  });
}

class Sponsors with ChangeNotifier {
  List<SponsorsData> _sponsors = [
    SponsorsData(
      name: "Google",
      imageLocation: "lib/assets/images/Google.png",
    ),
    SponsorsData(
      name: "Apple",
      imageLocation: "lib/assets/images/Apple.png",
    ),
    SponsorsData(
      name: "Flutter",
      imageLocation: "lib/assets/images/Flutter.png",
    ),
    SponsorsData(
      name: "Tesla",
      imageLocation: "lib/assets/images/Tesla.png",
    ),
    SponsorsData(
      name: "Cred",
      imageLocation: "lib/assets/images/CRED_light.png",
      logo: "lib/assets/images/CRED_dark.png",
    ),
  ];

  List<SponsorsData> get sponsors => [..._sponsors];
}
