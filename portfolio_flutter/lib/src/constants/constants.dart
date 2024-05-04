import 'package:portfolio_flutter/src/models/project_data.dart';

List<Map<int, String>> options = [
  {1: "File"},
  {2: "Edit"},
  {3: "View"},
  {4: "Go"},
  {5: "Run"},
  {6: "Help"}
];

final socials = {
  "website": {"oyus.me": "https://oyus.me"},
  "email": {
    "ayushkumarsingh0708@gmail.com": "mailto:ayushkumarsingh0708@gmail.com"
  },
  "github": {"AyushKrSingh000": "https://github.com/AyushKrSingh000"},
  "linkedin": {
    "ayush-kumar-singh-9ab626216":
        "https://www.linkedin.com/in/ayush-kumar-singh-9ab626216/"
  },
  "instagram": {"ayush_kr.singh": "https://instagram.com/ayush_kr.singh/"},
  "google_play": {
    "ayushkrsingh":
        "https://play.google.com/store/apps/developer?id=AYUSH+KUMAR+SINGH"
  }
};

List<Map<int, String>> webOptions = [
  {1: "File"},
  {2: "Edit"},
  {3: "View"},
  {4: "Go"},
  {5: "Run"},
  {6: "Terminal"},
  {7: "Help"}
];

const double fontsize = 16;
const String resumeLink =
    "https://drive.google.com/file/d/1N3pM4lFXtehFQ-QUXuWhjRcdnZ8slA8A/view?usp=sharing";
List<String> skills = [
  'Flutter',
  'Firebase',
  'NodeJs',
  'C',
  'ExpressJS',
  'MongoDB',
  'MySQL',
  'C++',
  'JavaScript',
  'Python',
  'VsCode',
  'Git',
  'GitHub',
];
List<String> skilllinks = [
  flutter,
  firebase,
  nodejs,
  expressjs,
  mongodb,
  mysql,
  c,
  cpp,
  javascript,
  python,
  vscode,
  git,
  github,
];

List<ProjectData> projects = [
  ProjectData(
      projectName: 'Google Docs Clone',
      desc:
          'Created as a learning tool to explore REST API, Socket.IO, and state management in app development',
      imageUrl: '',
      techStacks: [
        'Flutter',
        'ExpressJS',
        'NodeJS',
        'MongoDB',
        'JavaScript',
        'SocketIO',
        'RiverPod'
      ],
      sourceCode: '',
      liveDemo: ''),
];

List<String> image = [
  'docs2.png',
  'vriddhi2.png',
  'expense2.png',
  'event2.png'
];

Map<int, List<String>> tech = {
  0: [
    'Flutter',
    'ExpressJS',
    'NodeJS',
    'MongoDB',
    'JavaScript',
    'SocketIO',
    'RiverPod'
  ],
  1: ['Flutter', 'Firebase', 'GETX', 'DJango', 'WebDevTools'],
  2: ['Flutter', 'Firebase', 'GETX', 'WebDevTools'],
  3: ['Flutter', 'ExpressJS', 'NodeJS', 'MongoDB', 'JavaScript']
};
Map<String, List<String>> techLinks = {
  'Google Docs Clone': [
    flutter,
    expressjs,
    nodejs,
    mongodb,
    javascript,
    socketio,
    riverpodw
  ],
  '1': [flutter, firebase, getx, django, webdevtools],
  '2': [flutter, firebase, getx, webdevtools],
  '3': [flutter, expressjs, nodejs, mongodb, javascript]
};
const String flutter = 'https://flutter.dev/';
const String firebase = 'https://firebase.google.com/';
const String nodejs = 'https://nodejs.org/en/';
const String mongodb = 'https://www.mongodb.com/home';
const String javascript = 'https://www.w3schools.com/js/';
const String socketio = 'https://socket.io/';
const String riverpodw = 'https://riverpod.dev/';
const String getx = 'https://pub.dev/packages/get'; //
const String django = 'https://www.djangoproject.com/'; //
const String webdevtools = 'https://www.w3schools.com/whatis/'; //
const String expressjs = 'https://expressjs.com/';
const String mysql = 'https://www.mysql.com/';
const String c = 'https://www.w3schools.com/c/';
const String cpp = 'https://www.w3schools.com/cpp/';
const String python = 'https://www.python.org/';
const String git = 'https://git-scm.com/';
const String github = 'https://github.com/';
const String vscode = 'https://code.visualstudio.com/';
