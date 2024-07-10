import 'package:spotifyy/data/artist_model.dart';
import 'package:spotifyy/data/podcast_model.dart';
import 'package:spotifyy/data/song_model.dart';
import 'package:spotifyy/data/top_mix_model.dart';
import 'package:spotifyy/data/tophit_model.dart';

class Data {
  List<SongModel> songs = [
    SongModel(
        id: 1,
        title: 'Intouchables',
        description: 'Original Soundtrack',
        artist: 'Tayfun Abi',
        image:
            'https://i.scdn.co/image/ab67706c0000da84fcb8b92f2615d3261b8eb146',
        type: 'album',
        src: 'https://freesound.org/data/previews/612/612095_5674468-lq.mp3'),
    SongModel(
        id: 2,
        title: 'Peaceful Piano',
        artist: 'Murat Abi',
        description: 'Relax and indulge with beautiful piano pieces',
        image:
            'https://i.scdn.co/image/ab67706f00000002ca5a7517156021292e5663a6',
        type: 'album',
        src: 'https://freesound.org/data/previews/612/612092_7037-lq.mp3'),
    SongModel(
        id: 3,
        title: 'Hang Massive',
        artist: 'Mert Abi',
        description: 'Artist',
        image:
            'https://i.scdn.co/image/ab67616100005174802686196d39eb0b7b5cd8b1',
        type: 'artist',
        src: 'https://freesound.org/data/previews/612/612087_1648170-lq.mp3'),
    SongModel(
        id: 4,
        title: 'Intouchables ',
        artist: 'Gökhan Abi',
        description: 'Original Soundtrack',
        image:
            'https://i.scdn.co/image/d39397d2f6a1525b3fe90369c89ea2d94aac5714',
        type: 'podcast',
        src: 'https://freesound.org/data/previews/612/612085_28867-lq.mp3'),
    SongModel(
        id: 5,
        title: 'Intouchables',
        artist: 'Mehmet Abi',
        description: 'Original Soundtrack',
        image:
            'https://i.scdn.co/image/ab67706c0000da84fcb8b92f2615d3261b8eb146',
        type: 'album',
        src: 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3')
  ];

  List<ArtistModel> artists = [
    ArtistModel(
      image: 'assets/images/artist1.png',
      name: 'The Kid LAROI',
    ),
    ArtistModel(
      image: 'assets/images/artist2.png',
      name: 'Taylor Swift',
    ),
    ArtistModel(
      image: 'assets/images/artist3.png',
      name: 'Post Malone',
    ),
  ];

  List<TopMixModel> topmixs = [
    TopMixModel(
      title: "Hip Hop Mix",
      description: "Juice Wrld, Drake, Kendrick lamar and more... ",
      image: "assets/images/music1.png",
      color: "#EF0CAF",
    ),
    TopMixModel(
      title: "Moody Mix",
      description: "Joji, The Kid LAROI, Tate McRae and more...",
      image: "assets/images/music2.png",
      color: "#FFFF00",
    ),
    TopMixModel(
      title: "House Mix",
      description: "Martin Garrix, The Chainsmoker and more...",
      image: "assets/images/music3.png",
      color: "#1ED760",
    ),
  ];
  List<PodCastModel> podcasts = [
    PodCastModel(
      title: "Impaulsive",
      description: "334 ep.",
      image: "assets/images/impaulsive.png",
    ),
    PodCastModel(
      title: "TED Talks Daily",
      description: "155 ep.",
      image: "assets/images/tedTalk.png",
    ),
    PodCastModel(
      title: "Mom’s Basement",
      description: "75 ep.",
      image: "assets/images/momsBasement.png",
    ),
  ];
  List<TopHitModel> tophits = [
    TopHitModel(
      image: 'assets/images/music1.png',
      title: 'stay',
      description: 'The Kid LAROI, Justin Bieber',
    ),
    TopHitModel(
      image: 'assets/images/wishingWall.png',
      title: 'Wishing Well',
      description: 'Juice WLRD',
    ),
    TopHitModel(
      image: 'assets/images/jack.png',
      title: 'First Class',
      description: 'Jack Harlow',
    ),
    TopHitModel(
      image: 'assets/images/Frame1.png',
      title: 'Unstable',
      description: 'Justin Bieber, The Kid LAROI',
    ),
    TopHitModel(
      image: 'assets/images/Group25.png',
      title: 'Unstable',
      description: 'Justin Bieber, The Kid LAROI',
    ),
  ];
}
