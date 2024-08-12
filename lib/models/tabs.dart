// ignore_for_file: unused_element

class Tabs {
  final String tabName;
  final String tabIcon;
  Tabs({
    required this.tabName,
    required this.tabIcon,
  });

  String get _tabName => tabName;
  String get _tabIcon => tabIcon;

  static List<Tabs> tabsList = [
    Tabs(
      tabName: 'Soccer',
      tabIcon: 'assets/icons/football.png',
    ),
    Tabs(
      tabName: 'Basketball',
      tabIcon: 'assets/icons/basketball.png',
    ),
    Tabs(
      tabName: 'Tennis',
      tabIcon: 'assets/icons/tennis.png',
    ),
    Tabs(
      tabName: 'Hockey',
      tabIcon: 'assets/icons/hockey.png',
    ),
  ];
}
