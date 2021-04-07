import 'dart:ffi';

class PlayerModel {
  int id;
  String name;
  String imageUrl;
  double rating;
  String flagImageUrl;

  PlayerModel(
      {this.id, this.name, this.imageUrl, this.rating, this.flagImageUrl});
}

List<PlayerModel> playerList = [
  PlayerModel(
    id: 1,
    name: 'Oscar W.',
    imageUrl: 'assets/images/players/oscar.png',
    rating: 9.8,
    flagImageUrl: 'assets/images/flags/hu.png',
  ),
  PlayerModel(
    id: 2,
    name: 'Dennis S.',
    imageUrl: 'assets/images/players/dennis.png',
    rating: 9.4,
    flagImageUrl: 'assets/images/flags/de.png',
  ),
  PlayerModel(
    id: 3,
    name: 'Nathan K.',
    imageUrl: 'assets/images/players/nathan.png',
    rating: 8.1,
    flagImageUrl: 'assets/images/flags/fr.png',
  ),
  PlayerModel(
    id: 1,
    name: 'Oscar W.',
    imageUrl: 'assets/images/players/oscar.png',
    rating: 9.8,
    flagImageUrl: 'assets/images/flags/hu.png',
  ),
  PlayerModel(
    id: 2,
    name: 'Dennis S.',
    imageUrl: 'assets/images/players/dennis.png',
    rating: 9.8,
    flagImageUrl: 'assets/images/flags/de.png',
  ),
  PlayerModel(
    id: 3,
    name: 'Nathan K.',
    imageUrl: 'assets/images/players/nathan.png',
    rating: 9.8,
    flagImageUrl: 'assets/images/flags/fr.png',
  ),
];
