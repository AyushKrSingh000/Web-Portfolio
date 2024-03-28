enum LoadingStatus {
  loading,
  loaded,
  error,
}

enum AppTheme {
  nightOwl(name: "Night Owl"),
  githubDark(name: "Github Dark"),
  dracula(name: "Dracula"),
  ayuDark(name: "Ayu Dark"),
  solarisedDark(name: "Solarised Dark"),
  lightVSCode(name: "Light Visual Studio Code"),
  dobriNext(name: "Dobri Next Amethyst");

  const AppTheme({required this.name});
  final String name;
}
