import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

import '../data/movie_dart.dart';
import '../models/movie.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Now Playing'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            NowPlayingSwiper(movies: nowPlayingMovies),
            MovieSection(title: 'Trending', movies: trendingMovies),
            MovieSection(title: 'Popular', movies: popularMovies),
            MovieSection(title: 'Top Rated', movies: topRatedMovies),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

class NowPlayingSwiper extends StatelessWidget {
  final List<Movie> movies;
  const NowPlayingSwiper({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: CardSwiper(
        cardsCount: movies.length,
        numberOfCardsDisplayed: 2,
        cardBuilder: (context, index, x, y) {
          final movie = movies[index];
          return ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(movie.poster, fit: BoxFit.cover),
          );
        },
      ),
    );
  }
}

class MovieSection extends StatelessWidget {
  final String title;
  final List<Movie> movies;
  const MovieSection({super.key, required this.title, required this.movies});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'More',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 180,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: movies.length,
              separatorBuilder: (_, _) => const SizedBox(width: 8),
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    movies[index].poster,
                    width: 110,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
