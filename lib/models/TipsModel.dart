class TipsModel {
  String playerName;
  int score;
  bool isFavourite;

  TipsModel({this.playerName, this.score, this.isFavourite});
}

List<TipsModel> tipsList = [
  TipsModel(
    playerName: 'Oscar W.',
    score: 225,
    isFavourite: true,
  ),
  TipsModel(
    playerName: 'Steven N.',
    score: 202,
    isFavourite: false,
  ),
  TipsModel(
    playerName: 'Jameson H.',
    score: 198,
    isFavourite: false,
  ),
  TipsModel(
    playerName: 'Oscar W.',
    score: 225,
    isFavourite: true,
  ),
  TipsModel(
    playerName: 'Steven N.',
    score: 202,
    isFavourite: false,
  ),
  TipsModel(
    playerName: 'Jameson H.',
    score: 198,
    isFavourite: false,
  ),
];
