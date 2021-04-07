class MatchesModel {
  String team1LogoUrl;
  String team2LogoUrl;
  String status;
  String dateTime;
  double completion;

  MatchesModel({
    this.team1LogoUrl,
    this.team2LogoUrl,
    this.status,
    this.dateTime,
    this.completion,
  });
}

List<MatchesModel> matchesList = [
  MatchesModel(
    team1LogoUrl: 'assets/images/teams/team1.png',
    team2LogoUrl: 'assets/images/teams/team2.png',
    status: 'Away Win or Draw',
    dateTime: '04 April 10:00',
    completion: 90,
  ),
  MatchesModel(
    team1LogoUrl: 'assets/images/teams/team3.png',
    team2LogoUrl: 'assets/images/teams/team4.png',
    status: 'Over 8.5 Corners',
    dateTime: '04 May 2:00',
    completion: 80,
  ),
  MatchesModel(
    team1LogoUrl: 'assets/images/teams/team1.png',
    team2LogoUrl: 'assets/images/teams/team2.png',
    status: 'Away Win or Draw',
    dateTime: '04 April 10:00',
    completion: 90,
  ),
  MatchesModel(
    team1LogoUrl: 'assets/images/teams/team3.png',
    team2LogoUrl: 'assets/images/teams/team4.png',
    status: 'Over 8.5 Corners',
    dateTime: '04 May 2:00',
    completion: 80,
  ),
  MatchesModel(
    team1LogoUrl: 'assets/images/teams/team1.png',
    team2LogoUrl: 'assets/images/teams/team2.png',
    status: 'Away Win or Draw',
    dateTime: '04 April 10:00',
    completion: 90,
  ),
  MatchesModel(
    team1LogoUrl: 'assets/images/teams/team3.png',
    team2LogoUrl: 'assets/images/teams/team4.png',
    status: 'Over 8.5 Corners',
    dateTime: '04 May 2:00',
    completion: 80,
  ),
];
