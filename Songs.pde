ArrayList<MenuSong> songs = new ArrayList<MenuSong>();



void songSetup()
{
    songs.add(new MenuSong(minim.loadFile("Culture Beat           Mr. Vain.mp3")));
    songs.add(new MenuSong(minim.loadFile("Sandstorm.mp3")));
    songs.add(new MenuSong(minim.loadFile("Haddaway - What Is Love.mp3")));
    songs.add(new MenuSong(minim.loadFile("Technotronic - Pump Up The Jam.mp3")));
    songs.add(new MenuSong(minim.loadFile("Eiffel 65 - I'm Blue (da ba dee) lyrics.mp3")));
    songs.add(new MenuSong(minim.loadFile("Gigi D'Agostino - L'Amour Toujours ( Official Video ).mp3")));
    
}

class MenuSong
{
  AudioPlayer songs;
  
  MenuSong(AudioPlayer songs)
  {
    this.songs = songs;
  }
  
}