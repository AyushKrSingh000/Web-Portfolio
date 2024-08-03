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
  },
  "leetcode": {"AyushKrSingh000": "https://leetcode.com/AyushKrSingh000"}
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
    "https://drive.google.com/file/d/1SFYqhGCLLs8ZZWS43ARmsBZzB19g_w_3/view";
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
    projectName: 'Urja-Event Management System',
    desc:
        'This application allows users to discover upcoming events, view event details including location on a map, register for events, and generate QR codes for validation at event venues. Additionally, administrators have access to features such as adding new events, editing event details, updating event locations, and scanning QR codes for attendee validation.',
    imageUrl: 'assets/project_images/urja.png',
    techStacks: [
      'Flutter',
      'ExpressJS',
      'NodeJS',
      'MongoDB',
      'Firebase',
      'JavaScript',
      'RiverPod',
    ],
    sourceCode: '',
    liveDemo:
        'https://play.google.com/store/apps/details?id=com.saturnalia.saturnalia_app',
  ),
  ProjectData(
    projectName: 'Saarthi Camps',
    desc:
        'Amid Wars, Political tussles war, the influence of Nonstate Actors, etc., Refugees are the one who suffers the most. They need help with proper Healthcare and consultations with Doctors due to the ...',
    imageUrl: 'assets/project_images/saarthi.png',
    techStacks: [
      'Flutter',
      'ExpressJS',
      'NodeJS',
      'MongoDB',
      'JavaScript',
      'RiverPod'
    ],
    sourceCode: 'https://github.com/AyushKrSingh000/Saarthi-Camps',
    liveDemo: '',
  ),
  ProjectData(
    projectName: 'Vriddhi',
    desc:
        'Vriddhi is a parent-facing app that enhances the holistic growth of children aged 6-12, covering cognitive, psychomotor, and affective domains through age-appropriate activities, educational games, and personalized progress tracking',
    imageUrl: 'assets/project_images/vriddhi2.png',
    techStacks: [
      'Flutter',
      'DJango',
      'Getx',
      'Firebase',
    ],
    sourceCode: 'https://github.com/AyushKrSingh000/pgrkam',
    liveDemo: '',
  ),
  ProjectData(
    projectName: 'Pgrkam',
    desc:
        'The PGRKAM Analytics Tool is a Flutter-based analytics solution designed to empower administrators by tracking user behavior within the PGRKAM app. This tool captures crucial details, providing insights into user engagement, demographics, and the overall user experience.',
    imageUrl: 'assets/project_images/pgrkam.png',
    techStacks: [
      'Flutter',
      'ExpressJS',
      'NodeJS',
      'MongoDB',
      'JavaScript',
      'RiverPod',
    ],
    sourceCode: 'https://github.com/AyushKrSingh000/pgrkam',
    liveDemo: '',
  ),
  ProjectData(
    projectName: 'Portfolio Website',
    desc:
        'This is a Flutter-based web application that serves as your personal project portfolio. It allows you to showcase your projects, skills, experience, and contact information. The app features both light and dark modes to enhance the user experience.',
    imageUrl: 'assets/project_images/web_app.png',
    techStacks: [
      'Flutter',
      'RiverPod',
      'Firebase',
    ],
    sourceCode: 'https://github.com/AyushKrSingh000/Portfolio-Web-App',
    liveDemo: 'https://oyus.me/',
  ),
  ProjectData(
      projectName: 'Google Docs Clone',
      desc:
          'Created as a learning tool to explore REST API, Socket.IO, and state management in app development',
      imageUrl: 'assets/project_images/docs2.png',
      techStacks: [
        'Flutter',
        'ExpressJS',
        'NodeJS',
        'MongoDB',
        'JavaScript',
        'SocketIO',
        'RiverPod'
      ],
      sourceCode: 'https://github.com/AyushKrSingh000/Google-Docs-Clone',
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
