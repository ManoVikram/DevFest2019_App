import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

class SessionData {
  final String sessionId;
  final String sessionTitle;
  final String sessionDesc;
  final String sessionImage;
  final String sessionStartTime;
  final String sessionTotalTime;
  final String sessionLink;
  final String speakerId;
  final String speakerName;
  final String speakerDesc;
  final String speakerImg;
  final String speakerInfo;
  final String track;

  SessionData({
    this.sessionId,
    this.sessionTitle,
    this.sessionDesc,
    this.sessionImage,
    this.sessionStartTime,
    this.sessionTotalTime,
    this.sessionLink,
    this.speakerId,
    this.speakerName,
    this.speakerDesc,
    this.speakerImg,
    this.speakerInfo,
    this.track,
  });
}

class Session with ChangeNotifier {
  List<SessionData> _sessions = [
    SessionData(
      sessionId: "1",
      sessionStartTime: "8:00 AM",
      sessionTotalTime: "30 Mins",
      sessionTitle: "Flutter: How to Flutter the right way.",
      sessionDesc: Faker().lorem.sentences(25).join(),
      speakerImg:
          "https://avatars0.githubusercontent.com/u/42974191?s=460&u=f142bc28530d70ec336c5611b1d28c7d006fbb53&v=4",
      speakerName: "Mano Vikram",
      speakerDesc: "Flutter Developer Advocate, Google DevByte speaker",
      track: "mobile",
    ),
    SessionData(
      sessionId: "2",
      sessionStartTime: "9:00 AM",
      sessionTotalTime: "30 Mins",
      sessionTitle: "DevByte: From Zero to ML on Google Cloud Platform",
      sessionDesc: Faker().lorem.sentences(25).join(),
      speakerImg:
          "https://avatars1.githubusercontent.com/u/12619420?s=400&u=eac38b075e4e4463edfb0f0a8972825cf7803d4c&v=4",
      speakerName: "Pawan Kumar",
      speakerDesc: "Cloud Developer Advocate, Google DevByte speaker",
      track: "cloud",
    ),
    SessionData(
      sessionId: "3",
      sessionStartTime: "9:30 AM",
      sessionTotalTime: "30 Mins",
      sessionTitle: "How I Became a Mobile Developer with Firebase and Flutter",
      sessionDesc: Faker().lorem.sentences(25).join(),
      speakerImg:
          "https://avatars2.githubusercontent.com/u/19394896?s=460&u=f418cfc2b61caae74f48b36bfc75b680b00f98f4&v=4",
      speakerName: "Pooja Bhaumik",
      speakerDesc: "Software Developer, DMod Labs",
      track: "mobile",
    ),
    SessionData(
      sessionId: "4",
      sessionStartTime: "10:30 AM",
      sessionTotalTime: "30 Mins",
      sessionTitle: "Angular Elements",
      sessionDesc: Faker().lorem.sentences(25).join(),
      speakerImg:
          "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/L2FwcGhvc3RpbmdfZ2xvYmFsL2Jsb2JzL0FFbkIyVXJET043VnFRT2R1UHdyS1lFUElwLVNaYlVVbnc1enJuNTNGbUtQQjR0SF9STVUzMVptdkgzclRpRjhTUDc2WUNvNldKNFVacFhiXzF4bUoxTVc0RzlfXzF3d2tPUXl4NTNSNjBNSzRoaXB1VVBxOTRFLk0yOHMwWm1NeURjaWxQZ1k",
      speakerName: "Jimenez Raul",
      speakerDesc: "Software Engineer, Byte Default",
      track: "web",
    ),
    SessionData(
      sessionId: "5",
      sessionStartTime: "11:00 AM",
      sessionTotalTime: "45 Mins",
      sessionTitle: "Machine Learning and AutoML on GCP",
      sessionDesc: Faker().lorem.sentences(25).join(),
      speakerImg:
          "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/AEnB2UozlnKuWKqwaGjT2U6ylLLyMtoByOnx-ctrRmn5A8kptjCS50E8EgQDSuxYg8chsldOmSLbHScKX0ERlngHvbRp5XVRyNuAUSIm_Hguq3THTisLLaU.UyKUL3gyFQsEAcmO",
      speakerName: "Sathish V J",
      speakerDesc: "Tech Architect, Investor, Tutor",
      track: "cloud",
    ),
    SessionData(
      sessionId: "6",
      sessionStartTime: "1:00 PM",
      sessionTotalTime: "45 Mins",
      sessionTitle: "Top 5 from Firebase Summit '18",
      sessionDesc: Faker().lorem.sentences(25).join(),
      speakerImg:
          "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/AEnB2UqZAYU9q0R5K2cq94DxU7ebiOMhilDlx5NzzsWWZ_oHxqcZV8H8j594rg_q_vyfTToA0BfScTHOHAj8uKf2OeF5MVqa_jmdjC9JO9-2TcPWjboxPf8.NN-XmkQxmHl1XyY_",
      speakerName: "Timothy Jordan",
      speakerDesc: "Sr. Staff Developer Advocate, Google",
      track: "web",
    ),
    SessionData(
      sessionId: "7",
      sessionStartTime: "2:00 PM",
      sessionTotalTime: "45 Mins",
      sessionTitle: "Multiplayer Games with WebXR",
      sessionDesc: Faker().lorem.sentences(25).join(),
      speakerImg:
          "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/L2FwcGhvc3RpbmdfZ2xvYmFsL2Jsb2JzL0FFbkIyVXJ2Zkg0YUY1ZFJoMFFRbWlqdFE4MV9nNTdJR0dxUS1ubVJfbkN2Y1RaS3VoaUp2dWd3ejNmUmJRekFQaU5QNGhqd1F6cUtKQXpYeXJkemVyS2hUY1NzSWloMXFCNzQzdmpRVVVmU0Z4XzJZRDVZQXVBLnFHVllKVmc2MUVzQVZ5bVI",
      speakerName: "Tanay Pant",
      speakerDesc: "Web Developer Advocate, Mozilla Foundation",
      track: "web",
    ),
    SessionData(
      sessionId: "8",
      sessionStartTime: "3:00 PM",
      sessionTotalTime: "45 Mins",
      sessionTitle: "Mobile Database Persistence",
      sessionDesc: Faker().lorem.sentences(25).join(),
      speakerImg:
          "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/AEnB2UqEG002BsGCqZLZRFUGu9xo4IpGamz6gTqlWxWyME0s-n8gR7Rs0tM5R6mPMOCRYf5rAunWx0GQeXDUHPag_XWGApdekw.cks8tPlPy-TeucOT",
      speakerName: "Eric Maxwell",
      speakerDesc: "Software Developer, Big Nerd Ranch",
      track: "mobile",
    ),
    SessionData(
      sessionId: "9",
      sessionStartTime: "4:00 PM",
      sessionTotalTime: "45 Mins",
      sessionTitle: "Progressive Experience Web Development",
      sessionDesc: Faker().lorem.sentences(25).join(),
      speakerImg:
          "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/L2FwcGhvc3RpbmdfZ2xvYmFsL2Jsb2JzL0FFbkIyVXBET0RKT0JBV195UjVuSDRKS3JEenphN2gzLW80WEdvenlGdkZhNGREUzFmQUk1RjJnR0N5eEJIdlBkOVhlLUdwalVSWXlxbXJ4VFA0QXRZdnB4WDllWFNpdmdiNy14Q0tLOENCeU41Yks4NF9vUVQ0LlVFY0RBeld0ZTd4OEtSUTg",
      speakerName: "Yohan Totting",
      speakerDesc: "Web Developer Advocate, Google",
      track: "web",
    ),
    SessionData(
      sessionId: "10",
      sessionStartTime: "5:00 PM",
      sessionTotalTime: "45 Mins",
      sessionTitle: "Kotlin Coroutines",
      sessionDesc: Faker().lorem.sentences(25).join(),
      speakerImg:
          "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/L2FwcGhvc3RpbmdfZ2xvYmFsL2Jsb2JzL0FFbkIyVW9XdVlxYUljN0RsYm1kejJaZFpkNENVMm1aTWhxU3VhNEtTVEoza3lBYVpDdGJsei1tSFB2ajNDc2FuZEdBbmNOMGlPZGtWRkJicHR6S1R0UVYxc1V2bXk0TWlBbnItWG00a3ZZc0laZ3VmVkg4NU5vLm1jNWdnX1pEZV8yT2FDalM",
      speakerName: "Svetlana Isakova",
      speakerDesc: "Developer Advocate, Jetbrain",
      track: "mobile",
    ),
  ];

  List<SessionData> get sessions => [..._sessions];
}
