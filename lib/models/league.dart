// ignore_for_file: unused_element

class League {
  String teamFlag;
  String teamName;

  League({
    required this.teamFlag,
    required this.teamName,
  });

  String get _teamFlag => teamFlag;
  String get _teamName => teamName;
}

List<League> leagueList = [
  League(
    teamFlag: 'assets/icons/germany.png',
    teamName: 'Germany Bundesliga',
  ),
  League(
    teamFlag: 'assets/icons/france.png',
    teamName: 'France ligue 1',
  ),
  League(
    teamFlag: 'assets/icons/spain.png',
    teamName: 'Spain La Liga',
  ),
  League(
    teamFlag: 'assets/icons/france.png',
    teamName: 'France ligue 1',
  ),
];
