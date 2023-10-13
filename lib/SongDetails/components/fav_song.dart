

class FavSong {


  final List<String> favsongs = [ ];

  void addFavSong(String newSong) {
    if (!favsongs.contains(newSong)) {
      favsongs.add(newSong);
    }
  }

  void removeFavSong(int index) {
    favsongs.removeAt(index);
  }

  List<String> getFavSong(){
    if (favsongs.isEmpty) {
      return ['You have no favourites.'];
    }
    else {
      return favsongs;
    }
  }

}