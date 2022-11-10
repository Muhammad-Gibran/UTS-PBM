class PlaceInfo2 {
  final String location, image, name, desc;
  final int distance, days;

  PlaceInfo2({
    required this.desc,
    required this.name,
    required this.image,
    required this.location,
    required this.distance,
    required this.days,
  });
}

List places = [
  PlaceInfo2(
      image: 'assets/bromo.jpg',
      location: 'Indonesia',
      name: 'Gunung Bromo',
      distance: 28000,
      days: 23,
      desc:
          "Ada beberapa destinasi wisata di Bromo yang menjadi tujuan utama wisatawan ke Bromo. Tidak hanya sunrise Bromo saja yang terkenal, melainkan ada beberapa destinasi yang disukai wisatawan yaitu; Penanjakan 1, Bukit Kingkong, Bukit Cinta, Seruni Point, Lembah Widodaren, Kawah Bromo, Gunung Batok, Pura Luhur, Pasir Berbisik, Savana/Bukit Teletubbies"),
  PlaceInfo2(
      image: 'assets/pantai-kuta.jpg',
      location: 'Indonesia',
      name: 'Pantai Kuta',
      distance: 22500,
      days: 7,
      desc:
          "Pantai Kuta terkenal memiliki ombak yang bagus untuk olahraga selancar (surfing), terutama bagi peselancar pemula. Selain keindahan pantai, wisata pantai Kuta juga menawarkan berbagai jenis hiburan seperti bar, restoran, pertokoan, restoran, hotel, dan toko-toko kelontong, serta pedagang kaki lima di sepanjang pantai menuju Pantai Legian."),
  PlaceInfo2(
      image: 'assets/Galapagos-Islands.jpeg',
      location: 'Equador',
      name: 'Galapagos Islands',
      distance: 68000,
      days: 27,
      desc:
          "Kepulauan ini dibagi kepada dua belahan: utara dan selatan khatulistiwa. Garis khatulistiwa melewati bagian utara pulau terbesar, Isabela. Galapagos ditetapkan sebagai cagar alam pada 1959, melindungi 97,5% wilayah kepulauan ini. Sisanya diberikan kepada pemukiman manusia yang sudah ada pada waktu itu. Sekitar 1.000 hingga 2.000 orang tinggal di sana. Pada 1972 sebuah sensus dilakukan dan sejumlah 3.488 jiwa tercatat. Hingga 1980-an, jumlah ini telah meningkat hingga 15.000 orang. "),
  PlaceInfo2(
      image: 'assets/Kyoto-Japan.jpeg',
      location: 'Jepang',
      name: 'Kyoto',
      distance: 32000,
      days: 15,
      desc:
          "Kyoto yang sarat dengan peninggalan budaya merupakan tujuan pariwisata budaya paling utama di Jepang. Kyoto selalu indah sepanjang tahun, salju di musim dingin, mekarnya bunga Sakura di musim semi, bukit-bukit yang sejuk di musim panas, dan pemandangan warna-warni daun musim gugur."),
];
