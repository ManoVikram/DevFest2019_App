import 'package:flutter/material.dart';

class SpeakerData {
  final String speakerId;
  final String speakerName;
  final String speakerDesc;
  final String speakerImg;
  final String speakerInfo;
  final String sessionId;
  final String speakerSession;
  final String twitterURL;
  final String githubURL;
  final String linkedInURL;

  SpeakerData({
    this.speakerId,
    this.speakerName,
    this.speakerDesc,
    this.speakerImg,
    this.speakerInfo,
    this.sessionId,
    this.speakerSession,
    this.twitterURL,
    this.githubURL,
    this.linkedInURL,
  });
}

class Speaker with ChangeNotifier {
  List<SpeakerData> _speakers = [
    SpeakerData(
      speakerName: "Mano Vikram",
      speakerDesc:
          "Student with a passion to build things. Interested in entrepreneurship and start-ups.",
      speakerImg:
          "https://avatars0.githubusercontent.com/u/42974191?s=460&u=f142bc28530d70ec336c5611b1d28c7d006fbb53&v=4",
      speakerSession: "Journey of developing mobile apps with Flutter.",
      twitterURL: "https://twitter.com/ManoVik18",
      githubURL: "https://github.com/ManoVikram",
      linkedInURL: "https://www.linkedin.com/in/mano-vikram-1398a11b6/",
    ),
    SpeakerData(
      speakerName: "Pooja Bhaumik",
      speakerDesc: "Software Developer, Bounce",
      speakerImg:
          "https://avatars2.githubusercontent.com/u/19394896?s=460&u=f418cfc2b61caae74f48b36bfc75b680b00f98f4&v=4",
      speakerSession:
          "How I Became a Mobile Developer with Firebase and Flutter",
      githubURL: "https://github.com/ManoVikram",
      linkedInURL: "https://www.linkedin.com/in/mano-vikram-1398a11b6/",
      twitterURL: "https://twitter.com/ManoVik18",
    ),
    SpeakerData(
      speakerName: "Jimenez Raul",
      speakerDesc: "Software Engineer, Byte Default",
      speakerImg:
          "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/L2FwcGhvc3RpbmdfZ2xvYmFsL2Jsb2JzL0FFbkIyVXJET043VnFRT2R1UHdyS1lFUElwLVNaYlVVbnc1enJuNTNGbUtQQjR0SF9STVUzMVptdkgzclRpRjhTUDc2WUNvNldKNFVacFhiXzF4bUoxTVc0RzlfXzF3d2tPUXl4NTNSNjBNSzRoaXB1VVBxOTRFLk0yOHMwWm1NeURjaWxQZ1k",
      speakerSession: "Angular Elements",
      twitterURL: "https://twitter.com/ManoVik18",
      githubURL: "https://github.com/ManoVikram",
      linkedInURL: "https://www.linkedin.com/in/mano-vikram-1398a11b6/",
    ),
    SpeakerData(
      speakerName: "Sathish V J",
      speakerDesc: "Tech Architect, Investor, Tutor",
      speakerImg:
          "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/AEnB2UozlnKuWKqwaGjT2U6ylLLyMtoByOnx-ctrRmn5A8kptjCS50E8EgQDSuxYg8chsldOmSLbHScKX0ERlngHvbRp5XVRyNuAUSIm_Hguq3THTisLLaU.UyKUL3gyFQsEAcmO",
      speakerSession: "Machine Learning and AutoML on GCP",
      twitterURL: "https://twitter.com/ManoVik18",
      githubURL: "https://github.com/ManoVikram",
      linkedInURL: "https://www.linkedin.com/in/mano-vikram-1398a11b6/",
    ),
    SpeakerData(
      speakerName: "Timothy Jordan",
      speakerDesc: "Sr. Staff Developer Advocate, Google",
      speakerImg:
          "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/AEnB2UqZAYU9q0R5K2cq94DxU7ebiOMhilDlx5NzzsWWZ_oHxqcZV8H8j594rg_q_vyfTToA0BfScTHOHAj8uKf2OeF5MVqa_jmdjC9JO9-2TcPWjboxPf8.NN-XmkQxmHl1XyY_",
      speakerSession: "Top 5 from Firebase Summit '18",
      twitterURL: "https://twitter.com/ManoVik18",
      githubURL: "https://github.com/ManoVikram",
      linkedInURL: "https://www.linkedin.com/in/mano-vikram-1398a11b6/",
    ),
    SpeakerData(
      speakerName: "Tanay Pant",
      speakerDesc: "Web Developer Advocate, Mozilla Foundation",
      speakerImg:
          "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/L2FwcGhvc3RpbmdfZ2xvYmFsL2Jsb2JzL0FFbkIyVXJ2Zkg0YUY1ZFJoMFFRbWlqdFE4MV9nNTdJR0dxUS1ubVJfbkN2Y1RaS3VoaUp2dWd3ejNmUmJRekFQaU5QNGhqd1F6cUtKQXpYeXJkemVyS2hUY1NzSWloMXFCNzQzdmpRVVVmU0Z4XzJZRDVZQXVBLnFHVllKVmc2MUVzQVZ5bVI",
      speakerSession: "Multiplayer Games with WebXR",
      twitterURL: "https://twitter.com/ManoVik18",
      githubURL: "https://github.com/ManoVikram",
      linkedInURL: "https://www.linkedin.com/in/mano-vikram-1398a11b6/",
    ),
    SpeakerData(
      speakerName: "Eric Maxwell",
      speakerDesc: "Software Developer, Big Nerd Ranch",
      speakerImg:
          "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/AEnB2UqEG002BsGCqZLZRFUGu9xo4IpGamz6gTqlWxWyME0s-n8gR7Rs0tM5R6mPMOCRYf5rAunWx0GQeXDUHPag_XWGApdekw.cks8tPlPy-TeucOT",
      speakerSession: "Mobile Database Persistence",
      twitterURL: "https://twitter.com/ManoVik18",
      githubURL: "https://github.com/ManoVikram",
      linkedInURL: "https://www.linkedin.com/in/mano-vikram-1398a11b6/",
    ),
    SpeakerData(
      speakerName: "Yohan Totting",
      speakerDesc: "Web Developer Advocate, Google",
      speakerImg:
          "https://devfest.withgoogle.com/api/assets?path=/gs/gweb-gc-gather-production.appspot.com/files/L2FwcGhvc3RpbmdfZ2xvYmFsL2Jsb2JzL0FFbkIyVXBET0RKT0JBV195UjVuSDRKS3JEenphN2gzLW80WEdvenlGdkZhNGREUzFmQUk1RjJnR0N5eEJIdlBkOVhlLUdwalVSWXlxbXJ4VFA0QXRZdnB4WDllWFNpdmdiNy14Q0tLOENCeU41Yks4NF9vUVQ0LlVFY0RBeld0ZTd4OEtSUTg",
      speakerSession: "Progressive Experience Web Development",
      twitterURL: "https://twitter.com/ManoVik18",
      githubURL: "https://github.com/ManoVikram",
      linkedInURL: "https://www.linkedin.com/in/mano-vikram-1398a11b6/",
    ),
  ];

  List<SpeakerData> get speakers => [..._speakers];
}
