import 'package:flutter/widgets.dart';

class TeamData {
  final String name;
  final String image;
  final String desc;
  final String job;
  final String speciality;
  final String twitterURL;
  final String githubURL;
  final String instagramURL;

  TeamData({
    this.name,
    this.image,
    this.desc,
    this.job,
    this.speciality,
    this.twitterURL,
    this.githubURL,
    this.instagramURL,
  });
}

class Team with ChangeNotifier {
  List<TeamData> _team = [
    TeamData(
      name: "Sundar Pichai",
      desc: "Organizer",
      job: "Google CEO",
      image:
          "https://pbs.twimg.com/profile_images/864282616597405701/M-FEJMZ0_400x400.jpg",
    ),
    TeamData(
      name: "Steve Jobs",
      desc: "Co-Organizer",
      job: "Apple Inc CEO",
      image:
          "https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTY2MzU3OTcxMTUwODQxNTM1/steve-jobs--david-paul-morrisbloomberg-via-getty-images.jpg",
    ),
    TeamData(
      name: "Larry Page",
      desc: "Co-Organizer",
      job: "Founder",
      image:
          "https://thumbor.forbes.com/thumbor/960x0/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5c76bcaaa7ea43100043c836%2F400x400.jpg%3Ffit%3Dscale%26background%3D000000",
    ),
    TeamData(
      name: "Pawan Kumar",
      desc: "Co-Organizer",
      job: "Developed the app",
      image:
          "https://avatars1.githubusercontent.com/u/12619420?s=400&u=eac38b075e4e4463edfb0f0a8972825cf7803d4c&v=4",
    ),
    TeamData(
      name: "Mano Vikram",
      desc: "Flutter developer",
      job: "Entrepreneur",
      image:
          "https://avatars0.githubusercontent.com/u/42974191?s=460&u=f142bc28530d70ec336c5611b1d28c7d006fbb53&v=4",
    ),
  ];

  List<TeamData> get team => [..._team];
}
