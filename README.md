# Movie Home Layout

Aplikasi Flutter sederhana yang menampilkan halaman utama katalog film, dibuat sebagai **Task 1 (Mandatory)**. Layout meniru tampilan "Now Playing", "Trending", "Popular", dan "Top Rated".

## Fitur

- **Now Playing** menggunakan `flutter_card_swiper` dengan kartu bertumpuk yang bisa digeser.
- **Trending, Popular, Top Rated** menggunakan `ListView` horizontal yang bisa di-scroll.
- Tampilan gelap (dark theme) dengan latar hitam..

## Demo

[Link video demo](https://drive.google.com/file/d/1goeLJxnSrhYsqn5nPPGwYya0l7SMT5XY/view?usp=sharing)

## Teknologi

- Flutter (Dart)
- [carousel_slider](https://pub.dev/packages/carousel_slider)
- [flutter_card_swiper](https://pub.dev/packages/flutter_card_swiper)

## Struktur Folder

```
lib/
├── main.dart
├── models/
│   └── movie.dart
├── data/
│   └── movie_data.dart
└── screens/
    └── home_page.dart
assets/
└── images/
```

## Cara Menjalankan

1. Clone repository ini:
   ```bash
   git clone <URL_REPOSITORY>
   cd <nama_folder_proyek>
   ```
2. Install dependency:
   ```bash
   flutter pub get
   ```
3. Jalankan aplikasi:
   ```bash
   flutter run
   ```

## Catatan

- Poster film disimpan di `assets/images/` dan didaftarkan di `pubspec.yaml`.
- Data film masih dummy (data statis di `lib/data/movie_data.dart`).
