import '../models/movie.dart';

const _infinity = Movie(
  title: 'Avangers Infinity War',
  year: '2018',
  genre: 'Action, Adventure, Science Fiction',
  poster: 'assets/images/infinity.jpg',
);

const _cars = Movie(
  title: 'Cars',
  year: '2006',
  genre: 'Family, Adventure, Animation, Comedy',
  poster: 'assets/images/cars.jpg',
);

const _insidious = Movie(
  title: 'Insidious',
  year: '2011',
  genre: 'Thriller, Horror',
  poster: 'assets/images/insidius.jpg',
);

const _it = Movie(
  title: 'IT Chapter Two',
  year: '2019',
  genre: 'Drama, Thriller, Horror',
  poster: 'assets/images/it.jpg',
);

const _avengers = Movie(
  title: 'The Avangers',
  year: '2012',
  genre: 'Action, Adventure, Science Fiction',
  poster: 'assets/images/avengers.jpg',
);

const _zootopia = Movie(
  title: 'Zootopia',
  year: '2016',
  genre: 'Family, Adventure, Animation, Comedy',
  poster: 'assets/images/zootopia.jpg',
);

final nowPlayingMovies = [_avengers, _cars, _insidious, _it];
final trendingMovies = [_avengers, _infinity, _cars, _zootopia, _insidious];
final popularMovies = [_infinity, _cars, _zootopia, _insidious];
final topRatedMovies = [_avengers, _infinity, _it, _zootopia, _cars];
