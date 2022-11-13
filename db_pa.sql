-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Nov 2022 pada 07.38
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE `akun` (
  `id` int(4) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `sta` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `akun`
--

INSERT INTO `akun` (`id`, `username`, `pass`, `email`, `sta`) VALUES
(1, 'admin', '$2y$10$B51KOGL5ZHqDiFTnKDOjMOPNlAF1HeFw3o68aaxAMXct3RAMpsZd.', '-', 'admin'),
(2, 'user1', '$2y$10$gpKC3QLz/SbM55SCVAzIk.2z0EoqukEaNgyZnhhb9SrQcj1uYYRJ.', 'titoblack098@gmail.com', 'user'),
(4, 'ayu', '$2y$10$u5vYB4Q9TuUMqsghuFBYJe2Wb8Tsmm0a2GWFHZuXvo6T5d6UORpru', 'ayukd5@gmail.com', 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `files`
--

CREATE TABLE `files` (
  `id` int(4) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `tanggal_up` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `files`
--

INSERT INTO `files` (`id`, `filename`, `tanggal_up`) VALUES
(33, '9Soo.jpg', '04/11/2022'),
(35, 'Florance1o.jpg', '12/11/2022'),
(41, '1.jpg', '12/11/2022'),
(42, '1o.jpg', '12/11/2022'),
(43, '1oo.jpg', '12/11/2022'),
(45, '1ooo.jpg', '12/11/2022'),
(46, '1oooo.jpg', '12/11/2022'),
(47, '1476710_548337151918720_1827004057_n.jpg', '12/11/2022'),
(48, '1459657_549326311819804_1716428261_n.jpg', '12/11/2022'),
(49, '1459657_549326311819804_1716428261_no.jpg', '12/11/2022'),
(50, '1463558_553044914781277_327309733_n.jpg', '12/11/2022'),
(51, '1904232_595420033877098_634978104_n.jpg', '12/11/2022'),
(52, '1781978_584682724950829_1498035646_n.jpg', '12/11/2022'),
(53, '544189_549821161770319_706894466_n.jpg', '13/11/2022');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekomendasi`
--

CREATE TABLE `rekomendasi` (
  `id` int(4) NOT NULL,
  `judul` varchar(30) NOT NULL,
  `penulis` varchar(30) NOT NULL,
  `sinopsis` text NOT NULL,
  `cerita` longtext NOT NULL,
  `file_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `rekomendasi`
--

INSERT INTO `rekomendasi` (`id`, `judul`, `penulis`, `sinopsis`, `cerita`, `file_id`) VALUES
(25, 'Apel', 'me', 'Saat sendiri, manusia akan mulai berpikir lebih banyak. Cendrung mengabaikan hal disekitar, yang tidak terjangkau oleh tangan. Untuk diriku, melihat ke arah dunia menjadi kebiasaanku. Warna langit, awan yang terus bergerak, cahaya yang masuk ke mata. \"Ahh, indahnya dunia\". Tetapi bagaimana didalamnya? Kebanyakan orang sudah tau dengan phrasa \"Jangan nilai sesuatu dari sampulnya\". Penipuan, konflik, penindasan, tidakkah itu indah? Pengalaman diri terhadap kehidupan, umur, waktu, Kau akan melihat dunia untuk kedua kalinya. Jadi, saat ada yang bertanya \"Bukankah dunia begitu indah?\". Bagaimana kau akan menjawabnya?', 'Saat sendiri, manusia akan mulai berpikir lebih banyak. Cendrung mengabaikan hal disekitar, yang tidak terjangkau oleh tangan. Untuk diriku, melihat ke arah dunia menjadi kebiasaanku. Warna langit, awan yang terus bergerak, cahaya yang masuk ke mata. \"Ahh, indahnya dunia\". Tetapi bagaimana didalamnya? Kebanyakan orang sudah tau dengan phrasa \"Jangan nilai sesuatu dari sampulnya\". Penipuan, konflik, penindasan, tidakkah itu indah? Pengalaman diri terhadap kehidupan, umur, waktu, Kau akan melihat dunia untuk kedua kalinya. Jadi, saat ada yang bertanya \"Bukankah dunia begitu indah?\". Bagaimana kau akan menjawabnya?', 35),
(30, 'Ajari Aku Mencintainya', 'Musyarrafah jamil', 'Namanya Furqan. Dia adalah satu-satunya murid laki-laki di sekolah ini yang tidak terpesona padaku. Oke, karena tidak ada yang tidak terpesona padaku, maka kukatakan dia adalah satu-satunya murid laki-laki di sekolah ini yang BELUM terpesona padaku.', 'Namanya Furqan. Dia adalah satu-satunya murid laki-laki di sekolah ini yang tidak terpesona padaku. Oke, karena tidak ada yang tidak terpesona padaku, maka kukatakan dia adalah satu-satunya murid laki-laki di sekolah ini yang BELUM terpesona padaku.\r\nSebelumnya perkenalkan orang-orang memanggilku Honey. Itulah sebutanku di sekolah ini. Mungkin karena kecantikanku dan kemanisan wajahku ini. Bisa dibilang aku adalah murid tercantik dan terpopuler di antara semua murid cewek di sekolah ini bahkan senior kelas XII sekalipun. Dengan kepopuleran itu selama bersekolah hampir dua tahun di SMA ini, tidak ada murid laki-laki disekolah ini yang tidak mengakui kecantikanku. Mereka memuji kecantikanku,dan tentu saja terpesona padaku.\r\nSetiap hari lokerku dipenuhi coklat dan surat warna pink dari mereka yang menyukai ku dan berninat menjadikanku pacarnya. Tidak hanya coklat dan surat cinta, mereka yang nekat bahkan mengadakan semacam cara gila untuk menyatakan perasaannya padaku mulai dari aksi romantis ‘berlutut di depanku di depan umum’ sampai pakai acara mau bunuh diri. Dan kebanyakan dari mereka harus patah hati.\r\n\r\nAsal kalian tahu saja, aku juga menetapkan beberapa standar dan hanya sedikit orang yang bisa memenuhi standar itu. Pernah sekali aku berpacaran dengan Ketua Osis yang merupakan cowok terpopuler di sekolah. Pernah juga aku berpacaran dengan Ketua Tim Basket yang juga merupakan cowok terkeren di sekolah. Tidak ketinggalan cowok tercupu di sekolah ini pun tidak terlewatkan.', 46),
(31, 'Aku yang sedang menunggu', 'Lnn', 'Saat sendiri, manusia akan mulai berpikir lebih banyak. Cendrung mengabaikan hal disekitar, yang tidak terjangkau oleh tangan. Untuk diriku, melihat ke arah dunia menjadi kebiasaanku.', 'Saat sendiri, manusia akan mulai berpikir lebih banyak. Cendrung mengabaikan hal disekitar, yang tidak terjangkau oleh tangan. Untuk diriku, melihat ke arah dunia menjadi kebiasaanku. Warna langit, awan yang terus bergerak, cahaya yang masuk ke mata. \"Ahh, indahnya dunia\". Tetapi bagaimana didalamnya? Kebanyakan orang sudah tau dengan phrasa \"Jangan nilai sesuatu dari sampulnya\". Penipuan, konflik, penindasan, tidakkah itu indah? Pengalaman diri terhadap kehidupan, umur, waktu, Kau akan melihat dunia untuk kedua kalinya. Jadi, saat ada yang bertanya \"Bukankah dunia begitu indah?\". Bagaimana kau akan menjawabnya?\r\n\r\nAbc', 33),
(32, 'Aku Ingin Seperti Laki-Laki ', ' Dirgita Devina', '“Ninda..., sebaiknya kita pergi.” Aku mencoba melerai. Orang­orang sudah mulai memperhatikan kami dan aku takut rahasiaku akan bocor lebih awal.\r\n“Yap, pergi saja dengan setengah wanita itu!”\r\nDeg! Jiwa laki­lakiku terpanggil. Aku maju ke depan. “Kau ingin merasakan pukulanku?”\r\n“Aku yakin, pukulanmu selembut belaian tangan bayi.”\r\nGiliran Ninda mencoba menarikku untuk menjauh. Ia sudah sadar dengan situasi yang akan kami hadapi.\r\n“A… Lihat Selengkapnya\r\n21\r\n', '“Ninda..., sebaiknya kita pergi.” Aku mencoba melerai. Orang­orang sudah mulai memperhatikan kami dan aku takut rahasiaku akan bocor lebih awal.\r\n“Yap, pergi saja dengan setengah wanita itu!”\r\nDeg! Jiwa laki­lakiku terpanggil. Aku maju ke depan. “Kau ingin merasakan pukulanku?”\r\n“Aku yakin, pukulanmu selembut belaian tangan bayi.”\r\nGiliran Ninda mencoba menarikku untuk menjauh. Ia sudah sadar dengan situasi yang akan kami hadapi.', 50),
(33, 'How Much You Mean To Me', 'chan-chan', '\"Tidak perlu dengan kata aku mencintaimu. tetapi hanya dengan hati aku mencintaimu\"', '“Velyn…”\r\nHanya teriakan itu yang terakhir kudengar sebelum duniaku mendadak gelap. Aku tidak bisa mengingat apapun, bahkan saat aku kembali tersadar beberapa jam kemudian.\r\n“Ve, lo udah sadar?” Vanya berjalan menghampiriku dengan langkah cepat. Aku hanya tersenyum memandang wajah sahabatku.\r\n“Gue udah hubungi Mama dan Papa lo. Sebentar lagi mereka pasti datang,”\r\nDan pintu tiba-tiba terbuka. Mama menghampiriku dengan cemas. “Kamu tidak apa-apa kan, Sayang?”\r\n“Kata dokter, kamu terlalu banyak pikiran. Selama dua bulan terakhir ini kamu memang sering pingsan. Kenapa?”\r\nKenapa? Satu kata itu saja sudah membuat duniaku serasa runtuh. Satu kata yang walau kujawabpun mereka tak akan mengerti. Dan satu kata itu adalah sebuah kata yang jawabnya ku simpan sendiri dalam hatiku. Bukannya tak mau berbagi. Hanya saja terlalu sulit untuk mengulas peristiwa dalam kalimat lisan yang setiap katanya adalah hentakan yang keras.\r\nHelaan nafasku membuat mereka mengikuti jejakku. Menghela nafas. Itupun tak akan meringankan beban yang kutanggung.\r\nMama mengusap kepalaku pelan, membuatku merasa mengantuk karena terlalu lelah. Dan akupun kembali ke alam mimpiku.“Velyn…”\r\nHanya teriakan itu yang terakhir kudengar sebelum duniaku mendadak gelap. Aku tidak bisa mengingat apapun, bahkan saat aku kembali tersadar beberapa jam kemudian.\r\n“Ve, lo udah sadar?” Vanya berjalan menghampiriku dengan langkah cepat. Aku hanya tersenyum memandang wajah sahabatku.\r\n“Gue udah hubungi Mama dan Papa lo. Sebentar lagi mereka pasti datang,”\r\nDan pintu tiba-tiba terbuka. Mama menghampiriku dengan cemas. “Kamu tidak apa-apa kan, Sayang?”\r\n“Kata dokter, kamu terlalu banyak pikiran. Selama dua bulan terakhir ini kamu memang sering pingsan. Kenapa?”\r\nKenapa? Satu kata itu saja sudah membuat duniaku serasa runtuh. Satu kata yang walau kujawabpun mereka tak akan mengerti. Dan satu kata itu adalah sebuah kata yang jawabnya ku simpan sendiri dalam hatiku. Bukannya tak mau berbagi. Hanya saja terlalu sulit untuk mengulas peristiwa dalam kalimat lisan yang setiap katanya adalah hentakan yang keras.\r\nHelaan nafasku membuat mereka mengikuti jejakku. Menghela nafas. Itupun tak akan meringankan beban yang kutanggung.\r\nMama mengusap kepalaku pelan, membuatku merasa mengantuk karena terlalu lelah. Dan akupun kembali ke alam mimpiku.“Velyn…”\r\nHanya teriakan itu yang terakhir kudengar sebelum duniaku mendadak gelap. Aku tidak bisa mengingat apapun, bahkan saat aku kembali tersadar beberapa jam kemudian.\r\n“Ve, lo udah sadar?” Vanya berjalan menghampiriku dengan langkah cepat. Aku hanya tersenyum memandang wajah sahabatku.\r\n“Gue udah hubungi Mama dan Papa lo. Sebentar lagi mereka pasti datang,”\r\nDan pintu tiba-tiba terbuka. Mama menghampiriku dengan cemas. “Kamu tidak apa-apa kan, Sayang?”\r\n“Kata dokter, kamu terlalu banyak pikiran. Selama dua bulan terakhir ini kamu memang sering pingsan. Kenapa?”\r\nKenapa? Satu kata itu saja sudah membuat duniaku serasa runtuh. Satu kata yang walau kujawabpun mereka tak akan mengerti. Dan satu kata itu adalah sebuah kata yang jawabnya ku simpan sendiri dalam hatiku. Bukannya tak mau berbagi. Hanya saja terlalu sulit untuk mengulas peristiwa dalam kalimat lisan yang setiap katanya adalah hentakan yang keras.\r\nHelaan nafasku membuat mereka mengikuti jejakku. Menghela nafas. Itupun tak akan meringankan beban yang kutanggung.\r\nMama mengusap kepalaku pelan, membuatku merasa mengantuk karena terlalu lelah. Dan akupun kembali ke alam mimpiku.“Velyn…”\r\nHanya teriakan itu yang terakhir kudengar sebelum duniaku mendadak gelap. Aku tidak bisa mengingat apapun, bahkan saat aku kembali tersadar beberapa jam kemudian.\r\n“Ve, lo udah sadar?” Vanya berjalan menghampiriku dengan langkah cepat. Aku hanya tersenyum memandang wajah sahabatku.\r\n“Gue udah hubungi Mama dan Papa lo. Sebentar lagi mereka pasti datang,”\r\nDan pintu tiba-tiba terbuka. Mama menghampiriku dengan cemas. “Kamu tidak apa-apa kan, Sayang?”\r\n“Kata dokter, kamu terlalu banyak pikiran. Selama dua bulan terakhir ini kamu memang sering pingsan. Kenapa?”\r\nKenapa? Satu kata itu saja sudah membuat duniaku serasa runtuh. Satu kata yang walau kujawabpun mereka tak akan mengerti. Dan satu kata itu adalah sebuah kata yang jawabnya ku simpan sendiri dalam hatiku. Bukannya tak mau berbagi. Hanya saja terlalu sulit untuk mengulas peristiwa dalam kalimat lisan yang setiap katanya adalah hentakan yang keras.\r\nHelaan nafasku membuat mereka mengikuti jejakku. Menghela nafas. Itupun tak akan meringankan beban yang kutanggung.\r\nMama mengusap kepalaku pelan, membuatku merasa mengantuk karena terlalu lelah. Dan akupun kembali ke alam mimpiku.“Velyn…”\r\nHanya teriakan itu yang terakhir kudengar sebelum duniaku mendadak gelap. Aku tidak bisa mengingat apapun, bahkan saat aku kembali tersadar beberapa jam kemudian.\r\n“Ve, lo udah sadar?” Vanya berjalan menghampiriku dengan langkah cepat. Aku hanya tersenyum memandang wajah sahabatku.\r\n“Gue udah hubungi Mama dan Papa lo. Sebentar lagi mereka pasti datang,”\r\nDan pintu tiba-tiba terbuka. Mama menghampiriku dengan cemas. “Kamu tidak apa-apa kan, Sayang?”\r\n“Kata dokter, kamu terlalu banyak pikiran. Selama dua bulan terakhir ini kamu memang sering pingsan. Kenapa?”\r\nKenapa? Satu kata itu saja sudah membuat duniaku serasa runtuh. Satu kata yang walau kujawabpun mereka tak akan mengerti. Dan satu kata itu adalah sebuah kata yang jawabnya ku simpan sendiri dalam hatiku. Bukannya tak mau berbagi. Hanya saja terlalu sulit untuk mengulas peristiwa dalam kalimat lisan yang setiap katanya adalah hentakan yang keras.\r\nHelaan nafasku membuat mereka mengikuti jejakku. Menghela nafas. Itupun tak akan meringankan beban yang kutanggung.\r\nMama mengusap kepalaku pelan, membuatku merasa mengantuk karena terlalu lelah. Dan akupun kembali ke alam mimpiku.“Velyn…”\r\nHanya teriakan itu yang terakhir kudengar sebelum duniaku mendadak gelap. Aku tidak bisa mengingat apapun, bahkan saat aku kembali tersadar beberapa jam kemudian.\r\n“Ve, lo udah sadar?” Vanya berjalan menghampiriku dengan langkah cepat. Aku hanya tersenyum memandang wajah sahabatku.\r\n“Gue udah hubungi Mama dan Papa lo. Sebentar lagi mereka pasti datang,”\r\nDan pintu tiba-tiba terbuka. Mama menghampiriku dengan cemas. “Kamu tidak apa-apa kan, Sayang?”\r\n“Kata dokter, kamu terlalu banyak pikiran. Selama dua bulan terakhir ini kamu memang sering pingsan. Kenapa?”\r\nKenapa? Satu kata itu saja sudah membuat duniaku serasa runtuh. Satu kata yang walau kujawabpun mereka tak akan mengerti. Dan satu kata itu adalah sebuah kata yang jawabnya ku simpan sendiri dalam hatiku. Bukannya tak mau berbagi. Hanya saja terlalu sulit untuk mengulas peristiwa dalam kalimat lisan yang setiap katanya adalah hentakan yang keras.\r\nHelaan nafasku membuat mereka mengikuti jejakku. Menghela nafas. Itupun tak akan meringankan beban yang kutanggung.\r\nMama mengusap kepalaku pelan, membuatku merasa mengantuk karena terlalu lelah. Dan akupun kembali ke alam mimpiku.“Velyn…”\r\nHanya teriakan itu yang terakhir kudengar sebelum duniaku mendadak gelap. Aku tidak bisa mengingat apapun, bahkan saat aku kembali tersadar beberapa jam kemudian.\r\n“Ve, lo udah sadar?” Vanya berjalan menghampiriku dengan langkah cepat. Aku hanya tersenyum memandang wajah sahabatku.\r\n“Gue udah hubungi Mama dan Papa lo. Sebentar lagi mereka pasti datang,”\r\nDan pintu tiba-tiba terbuka. Mama menghampiriku dengan cemas. “Kamu tidak apa-apa kan, Sayang?”\r\n“Kata dokter, kamu terlalu banyak pikiran. Selama dua bulan terakhir ini kamu memang sering pingsan. Kenapa?”\r\nKenapa? Satu kata itu saja sudah membuat duniaku serasa runtuh. Satu kata yang walau kujawabpun mereka tak akan mengerti. Dan satu kata itu adalah sebuah kata yang jawabnya ku simpan sendiri dalam hatiku. Bukannya tak mau berbagi. Hanya saja terlalu sulit untuk mengulas peristiwa dalam kalimat lisan yang setiap katanya adalah hentakan yang keras.\r\nHelaan nafasku membuat mereka mengikuti jejakku. Menghela nafas. Itupun tak akan meringankan beban yang kutanggung.\r\nMama mengusap kepalaku pelan, membuatku merasa mengantuk karena terlalu lelah. Dan akupun kembali ke alam mimpiku.', 52);

-- --------------------------------------------------------

--
-- Struktur dari tabel `story`
--

CREATE TABLE `story` (
  `id` int(4) NOT NULL,
  `judul` varchar(30) NOT NULL,
  `penulis` varchar(30) NOT NULL,
  `sinopsis` text NOT NULL,
  `cerita` longtext NOT NULL,
  `file_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `story`
--

INSERT INTO `story` (`id`, `judul`, `penulis`, `sinopsis`, `cerita`, `file_id`) VALUES
(45, 'Aku yang sedang menunggu', 'Lnn', 'Saat sendiri, manusia akan mulai berpikir lebih banyak. Cendrung mengabaikan hal disekitar, yang tidak terjangkau oleh tangan. Untuk diriku, melihat ke arah dunia menjadi kebiasaanku.', 'Saat sendiri, manusia akan mulai berpikir lebih banyak. Cendrung mengabaikan hal disekitar, yang tidak terjangkau oleh tangan. Untuk diriku, melihat ke arah dunia menjadi kebiasaanku. Warna langit, awan yang terus bergerak, cahaya yang masuk ke mata. \"Ahh, indahnya dunia\". Tetapi bagaimana didalamnya? Kebanyakan orang sudah tau dengan phrasa \"Jangan nilai sesuatu dari sampulnya\". Penipuan, konflik, penindasan, tidakkah itu indah? Pengalaman diri terhadap kehidupan, umur, waktu, Kau akan melihat dunia untuk kedua kalinya. Jadi, saat ada yang bertanya \"Bukankah dunia begitu indah?\". Bagaimana kau akan menjawabnya?\r\n\r\nAbc', 33),
(47, 'Apel', 'me', 'Saat sendiri, manusia akan mulai berpikir lebih banyak. Cendrung mengabaikan hal disekitar, yang tidak terjangkau oleh tangan. Untuk diriku, melihat ke arah dunia menjadi kebiasaanku. Warna langit, awan yang terus bergerak, cahaya yang masuk ke mata. \"Ahh, indahnya dunia\". Tetapi bagaimana didalamnya? Kebanyakan orang sudah tau dengan phrasa \"Jangan nilai sesuatu dari sampulnya\". Penipuan, konflik, penindasan, tidakkah itu indah? Pengalaman diri terhadap kehidupan, umur, waktu, Kau akan melihat dunia untuk kedua kalinya. Jadi, saat ada yang bertanya \"Bukankah dunia begitu indah?\". Bagaimana kau akan menjawabnya?', 'Saat sendiri, manusia akan mulai berpikir lebih banyak. Cendrung mengabaikan hal disekitar, yang tidak terjangkau oleh tangan. Untuk diriku, melihat ke arah dunia menjadi kebiasaanku. Warna langit, awan yang terus bergerak, cahaya yang masuk ke mata. \"Ahh, indahnya dunia\". Tetapi bagaimana didalamnya? Kebanyakan orang sudah tau dengan phrasa \"Jangan nilai sesuatu dari sampulnya\". Penipuan, konflik, penindasan, tidakkah itu indah? Pengalaman diri terhadap kehidupan, umur, waktu, Kau akan melihat dunia untuk kedua kalinya. Jadi, saat ada yang bertanya \"Bukankah dunia begitu indah?\". Bagaimana kau akan menjawabnya?', 35),
(54, 'Ajari Aku Mencintainya', 'Musyarrafah jamil', 'Namanya Furqan. Dia adalah satu-satunya murid laki-laki di sekolah ini yang tidak terpesona padaku. Oke, karena tidak ada yang tidak terpesona padaku, maka kukatakan dia adalah satu-satunya murid laki-laki di sekolah ini yang BELUM terpesona padaku.', 'Namanya Furqan. Dia adalah satu-satunya murid laki-laki di sekolah ini yang tidak terpesona padaku. Oke, karena tidak ada yang tidak terpesona padaku, maka kukatakan dia adalah satu-satunya murid laki-laki di sekolah ini yang BELUM terpesona padaku.\r\nSebelumnya perkenalkan orang-orang memanggilku Honey. Itulah sebutanku di sekolah ini. Mungkin karena kecantikanku dan kemanisan wajahku ini. Bisa dibilang aku adalah murid tercantik dan terpopuler di antara semua murid cewek di sekolah ini bahkan senior kelas XII sekalipun. Dengan kepopuleran itu selama bersekolah hampir dua tahun di SMA ini, tidak ada murid laki-laki disekolah ini yang tidak mengakui kecantikanku. Mereka memuji kecantikanku,dan tentu saja terpesona padaku.\r\nSetiap hari lokerku dipenuhi coklat dan surat warna pink dari mereka yang menyukai ku dan berninat menjadikanku pacarnya. Tidak hanya coklat dan surat cinta, mereka yang nekat bahkan mengadakan semacam cara gila untuk menyatakan perasaannya padaku mulai dari aksi romantis ‘berlutut di depanku di depan umum’ sampai pakai acara mau bunuh diri. Dan kebanyakan dari mereka harus patah hati.\r\n\r\nAsal kalian tahu saja, aku juga menetapkan beberapa standar dan hanya sedikit orang yang bisa memenuhi standar itu. Pernah sekali aku berpacaran dengan Ketua Osis yang merupakan cowok terpopuler di sekolah. Pernah juga aku berpacaran dengan Ketua Tim Basket yang juga merupakan cowok terkeren di sekolah. Tidak ketinggalan cowok tercupu di sekolah ini pun tidak terlewatkan.', 46),
(55, 'IBU- AKU MENCINTAIMU', ' Agnes Davonar', 'Karena tidak ada kasih sayang yang sesungguhnya abadi dalam pikiran kita selain kasih sayang seorang ibu yang selalu kita ingat sampai kita berakhir nanti ” Agnes Davonar.', 'Dalam hidup, kita memiliki banyak kasih sayang. Kasih sayang yang mungkin bagi sebagian orang hanya sesaat tapi bagi yang lain menjadi abadi selamanya. Seperti kisah ini, kisah kasih sayang seorang ibu yang aku harapkan pernah terjadi dalam pada hidup kalian tapi tidak kalian sia-siakan. Ingatlah, Kasih sayang seorang ibu tidak akan pernah berhenti ia berikan dalam keadaan apapun. Semoga kisah ini menyadarkan kalian betapa penting arti ibu dalam hidup kalian.\r\nAku punya seorang ibu, dalam usia yang muda, ia melahirkanku karena pernikahannya yang muda. Ayah dan ibu hidup bahagia dan melahirkan aku yang manja dan serba hidup cukup. Sampai umurku 7 tahun, aku selalu mendapatkan apapun yang aku inginkan. Untungnya aku pintar sehingga selalu menjadi juara kelas. Kata guruku sih, aku ini jenius sehingga walaupun tanpa belajar pun nilai ujian di kelasku selalu mendapatkan nilai A.\r\nKebahagiaan yang aku rasakan dan kemewahan yang aku rasakan semua tiba-tiba menjadi sirna ketika ayah mengalami kecelakaan. Ia meninggal dan meninggalkan hutang yang begitu besar. Aku tidak pernah siap miskin tapi tidak dengan ibu. Kami kehilangan rumah dan harus tinggal dirumah susun murah yang hanya memiliki satu ruangan dengan satu kamar. Ibu tau, aku pintar dan tidak seharusnya berhenti sekolah, karena penikahan yang muda dan ditentang keluarga akhirnya ibu terusir dari keluarganya. Sedangkan orang tua ayah, sudah tak ada siapapun yang mau membantu kehidupan kami.\r\nSetelah menjual segala perhiasan yang ia miliki. Ibu memiliki ide untuk berjualan bakmi ayam. Saat itu umurku 13 tahun. Ia masih harus menanggung hutang-hutang ayah yang harus ia bayar.\r\n“ ibu akan berjualan bakmi untuk membantu kehidupan kita. Angel bantu-bantu.. ibu ya?”\r\nAku terdiam dan rasanya tidak menyukai ide ibu.\r\n“ ibu akan jualan bakmi dimana? Memangnya ibu bisa buat bakmi?” tanyaku.\r\n“ Loh dulu nenek ibu kan dagang bakmi, jadi ibu tau resepnya. lalu mungkin ibu berdagang di depan jalan besar depan komplek. Disitu banyak orang yang kerja di pasar. Kali-kali saja laris. Sehingga kamu bisa tetap sekolah.”\r\n“ aku gak mau.. aku malu. Ibu saja yang jualan, aku gak mau bantu..”\r\n“ iya nak, kamu gak usah bantu ibu, kamu cukup belajar yang giat dan ibu yang nantinya akan bekerja..besok ibu akan pergi ke sekolah kamu untuk mencoba meminta beasiswa..”\r\nAku senang ibu tidak mengharapkan aku berjualan bersamanya. Apa jadinya kata orang tentangku. Ibu memiliki gerobak bakmi yang ia beli bekas dan setiap pagi ia akan mendorong gerobak itu ke lapak tempatnya berjualan lalu sepagi mungkin sebelum matahari terbit ia sudah tidak ada di rumah ketika aku bangun. Ia tidak pernah memintaku untuk berjualan tapi terkadang aku membantunya untuk sekedar memotong bawang putih dan hanya tugas-tugas mudah di dalam rumah yang terpenting aku tidak sudi ikut berdagang dengan ibu.', 47),
(56, 'Aku Ingin Seperti Laki-Laki ', ' Dirgita Devina', '“Ninda..., sebaiknya kita pergi.” Aku mencoba melerai. Orang­orang sudah mulai memperhatikan kami dan aku takut rahasiaku akan bocor lebih awal.\r\n“Yap, pergi saja dengan setengah wanita itu!”\r\nDeg! Jiwa laki­lakiku terpanggil. Aku maju ke depan. “Kau ingin merasakan pukulanku?”\r\n“Aku yakin, pukulanmu selembut belaian tangan bayi.”\r\nGiliran Ninda mencoba menarikku untuk menjauh. Ia sudah sadar dengan situasi yang akan kami hadapi.\r\n“A… Lihat Selengkapnya\r\n21\r\n', '“Ninda..., sebaiknya kita pergi.” Aku mencoba melerai. Orang­orang sudah mulai memperhatikan kami dan aku takut rahasiaku akan bocor lebih awal.\r\n“Yap, pergi saja dengan setengah wanita itu!”\r\nDeg! Jiwa laki­lakiku terpanggil. Aku maju ke depan. “Kau ingin merasakan pukulanku?”\r\n“Aku yakin, pukulanmu selembut belaian tangan bayi.”\r\nGiliran Ninda mencoba menarikku untuk menjauh. Ia sudah sadar dengan situasi yang akan kami hadapi.', 50),
(57, 'The Bridesmaid’s Story', 'Irena Tjiunata', 'Jadi bridesmaid memang bikin sport jantung! Bridesmaid harus siap membantu mempersiapkan pernikahan, siap menerima curahan hati calon mempelai wanita yang stres berat, dan semua itu harus dilakukan Kesya Artyadevi di sela-sela kesibukannya merancang perhiasan pesanan klien, melayani klien yang heboh dan gila perhiasan, serta mengikuti pameran perhiasan bertaraf internasional.', 'Jadi bridesmaid memang bikin sport jantung! Bridesmaid harus siap membantu mempersiapkan pernikahan, siap menerima curahan hati calon mempelai wanita yang stres berat, dan semua itu harus dilakukan Kesya Artyadevi di sela-sela kesibukannya merancang perhiasan pesanan klien, melayani klien yang heboh dan gila perhiasan, serta mengikuti pameran perhiasan bertaraf internasional.\r\n\r\nTapi itu belum seberapa!\r\n\r\nTambahkan kerepotan itu dengan:\r\n1. Cecilia Almira Saraswati, si calon pengantin wanita yang drama queen dan supersibuk.\r\n2. Finna Salsabila, sepupu Cecil yang ribet dan selalu ikut campur dengan gayanya yang ajaib.\r\n3. Tante Jessica Lionel Andersen, calon mertua Cecil yang tidak menyukai Cecil dan tidak menginginkan pernikahan terjadi.\r\n4. R.A Sekar Ningrum, mantan pacar calon suami Cecil yang ingin merebut kembali sang calon pengantin laki-laki!!!\r\n\r\nSemua itu membuat Kesya double repot!!!\r\n\r\nHmmm.... tapi tentu ada sesuatu yang dapat menghapus semua kerepotan yang dialami Kesya.', 51),
(58, 'How Much You Mean To Me', 'chan-chan', '\"Tidak perlu dengan kata aku mencintaimu. tetapi hanya dengan hati aku mencintaimu\"', '“Velyn…”\r\nHanya teriakan itu yang terakhir kudengar sebelum duniaku mendadak gelap. Aku tidak bisa mengingat apapun, bahkan saat aku kembali tersadar beberapa jam kemudian.\r\n“Ve, lo udah sadar?” Vanya berjalan menghampiriku dengan langkah cepat. Aku hanya tersenyum memandang wajah sahabatku.\r\n“Gue udah hubungi Mama dan Papa lo. Sebentar lagi mereka pasti datang,”\r\nDan pintu tiba-tiba terbuka. Mama menghampiriku dengan cemas. “Kamu tidak apa-apa kan, Sayang?”\r\n“Kata dokter, kamu terlalu banyak pikiran. Selama dua bulan terakhir ini kamu memang sering pingsan. Kenapa?”\r\nKenapa? Satu kata itu saja sudah membuat duniaku serasa runtuh. Satu kata yang walau kujawabpun mereka tak akan mengerti. Dan satu kata itu adalah sebuah kata yang jawabnya ku simpan sendiri dalam hatiku. Bukannya tak mau berbagi. Hanya saja terlalu sulit untuk mengulas peristiwa dalam kalimat lisan yang setiap katanya adalah hentakan yang keras.\r\nHelaan nafasku membuat mereka mengikuti jejakku. Menghela nafas. Itupun tak akan meringankan beban yang kutanggung.\r\nMama mengusap kepalaku pelan, membuatku merasa mengantuk karena terlalu lelah. Dan akupun kembali ke alam mimpiku.“Velyn…”\r\nHanya teriakan itu yang terakhir kudengar sebelum duniaku mendadak gelap. Aku tidak bisa mengingat apapun, bahkan saat aku kembali tersadar beberapa jam kemudian.\r\n“Ve, lo udah sadar?” Vanya berjalan menghampiriku dengan langkah cepat. Aku hanya tersenyum memandang wajah sahabatku.\r\n“Gue udah hubungi Mama dan Papa lo. Sebentar lagi mereka pasti datang,”\r\nDan pintu tiba-tiba terbuka. Mama menghampiriku dengan cemas. “Kamu tidak apa-apa kan, Sayang?”\r\n“Kata dokter, kamu terlalu banyak pikiran. Selama dua bulan terakhir ini kamu memang sering pingsan. Kenapa?”\r\nKenapa? Satu kata itu saja sudah membuat duniaku serasa runtuh. Satu kata yang walau kujawabpun mereka tak akan mengerti. Dan satu kata itu adalah sebuah kata yang jawabnya ku simpan sendiri dalam hatiku. Bukannya tak mau berbagi. Hanya saja terlalu sulit untuk mengulas peristiwa dalam kalimat lisan yang setiap katanya adalah hentakan yang keras.\r\nHelaan nafasku membuat mereka mengikuti jejakku. Menghela nafas. Itupun tak akan meringankan beban yang kutanggung.\r\nMama mengusap kepalaku pelan, membuatku merasa mengantuk karena terlalu lelah. Dan akupun kembali ke alam mimpiku.“Velyn…”\r\nHanya teriakan itu yang terakhir kudengar sebelum duniaku mendadak gelap. Aku tidak bisa mengingat apapun, bahkan saat aku kembali tersadar beberapa jam kemudian.\r\n“Ve, lo udah sadar?” Vanya berjalan menghampiriku dengan langkah cepat. Aku hanya tersenyum memandang wajah sahabatku.\r\n“Gue udah hubungi Mama dan Papa lo. Sebentar lagi mereka pasti datang,”\r\nDan pintu tiba-tiba terbuka. Mama menghampiriku dengan cemas. “Kamu tidak apa-apa kan, Sayang?”\r\n“Kata dokter, kamu terlalu banyak pikiran. Selama dua bulan terakhir ini kamu memang sering pingsan. Kenapa?”\r\nKenapa? Satu kata itu saja sudah membuat duniaku serasa runtuh. Satu kata yang walau kujawabpun mereka tak akan mengerti. Dan satu kata itu adalah sebuah kata yang jawabnya ku simpan sendiri dalam hatiku. Bukannya tak mau berbagi. Hanya saja terlalu sulit untuk mengulas peristiwa dalam kalimat lisan yang setiap katanya adalah hentakan yang keras.\r\nHelaan nafasku membuat mereka mengikuti jejakku. Menghela nafas. Itupun tak akan meringankan beban yang kutanggung.\r\nMama mengusap kepalaku pelan, membuatku merasa mengantuk karena terlalu lelah. Dan akupun kembali ke alam mimpiku.“Velyn…”\r\nHanya teriakan itu yang terakhir kudengar sebelum duniaku mendadak gelap. Aku tidak bisa mengingat apapun, bahkan saat aku kembali tersadar beberapa jam kemudian.\r\n“Ve, lo udah sadar?” Vanya berjalan menghampiriku dengan langkah cepat. Aku hanya tersenyum memandang wajah sahabatku.\r\n“Gue udah hubungi Mama dan Papa lo. Sebentar lagi mereka pasti datang,”\r\nDan pintu tiba-tiba terbuka. Mama menghampiriku dengan cemas. “Kamu tidak apa-apa kan, Sayang?”\r\n“Kata dokter, kamu terlalu banyak pikiran. Selama dua bulan terakhir ini kamu memang sering pingsan. Kenapa?”\r\nKenapa? Satu kata itu saja sudah membuat duniaku serasa runtuh. Satu kata yang walau kujawabpun mereka tak akan mengerti. Dan satu kata itu adalah sebuah kata yang jawabnya ku simpan sendiri dalam hatiku. Bukannya tak mau berbagi. Hanya saja terlalu sulit untuk mengulas peristiwa dalam kalimat lisan yang setiap katanya adalah hentakan yang keras.\r\nHelaan nafasku membuat mereka mengikuti jejakku. Menghela nafas. Itupun tak akan meringankan beban yang kutanggung.\r\nMama mengusap kepalaku pelan, membuatku merasa mengantuk karena terlalu lelah. Dan akupun kembali ke alam mimpiku.“Velyn…”\r\nHanya teriakan itu yang terakhir kudengar sebelum duniaku mendadak gelap. Aku tidak bisa mengingat apapun, bahkan saat aku kembali tersadar beberapa jam kemudian.\r\n“Ve, lo udah sadar?” Vanya berjalan menghampiriku dengan langkah cepat. Aku hanya tersenyum memandang wajah sahabatku.\r\n“Gue udah hubungi Mama dan Papa lo. Sebentar lagi mereka pasti datang,”\r\nDan pintu tiba-tiba terbuka. Mama menghampiriku dengan cemas. “Kamu tidak apa-apa kan, Sayang?”\r\n“Kata dokter, kamu terlalu banyak pikiran. Selama dua bulan terakhir ini kamu memang sering pingsan. Kenapa?”\r\nKenapa? Satu kata itu saja sudah membuat duniaku serasa runtuh. Satu kata yang walau kujawabpun mereka tak akan mengerti. Dan satu kata itu adalah sebuah kata yang jawabnya ku simpan sendiri dalam hatiku. Bukannya tak mau berbagi. Hanya saja terlalu sulit untuk mengulas peristiwa dalam kalimat lisan yang setiap katanya adalah hentakan yang keras.\r\nHelaan nafasku membuat mereka mengikuti jejakku. Menghela nafas. Itupun tak akan meringankan beban yang kutanggung.\r\nMama mengusap kepalaku pelan, membuatku merasa mengantuk karena terlalu lelah. Dan akupun kembali ke alam mimpiku.“Velyn…”\r\nHanya teriakan itu yang terakhir kudengar sebelum duniaku mendadak gelap. Aku tidak bisa mengingat apapun, bahkan saat aku kembali tersadar beberapa jam kemudian.\r\n“Ve, lo udah sadar?” Vanya berjalan menghampiriku dengan langkah cepat. Aku hanya tersenyum memandang wajah sahabatku.\r\n“Gue udah hubungi Mama dan Papa lo. Sebentar lagi mereka pasti datang,”\r\nDan pintu tiba-tiba terbuka. Mama menghampiriku dengan cemas. “Kamu tidak apa-apa kan, Sayang?”\r\n“Kata dokter, kamu terlalu banyak pikiran. Selama dua bulan terakhir ini kamu memang sering pingsan. Kenapa?”\r\nKenapa? Satu kata itu saja sudah membuat duniaku serasa runtuh. Satu kata yang walau kujawabpun mereka tak akan mengerti. Dan satu kata itu adalah sebuah kata yang jawabnya ku simpan sendiri dalam hatiku. Bukannya tak mau berbagi. Hanya saja terlalu sulit untuk mengulas peristiwa dalam kalimat lisan yang setiap katanya adalah hentakan yang keras.\r\nHelaan nafasku membuat mereka mengikuti jejakku. Menghela nafas. Itupun tak akan meringankan beban yang kutanggung.\r\nMama mengusap kepalaku pelan, membuatku merasa mengantuk karena terlalu lelah. Dan akupun kembali ke alam mimpiku.“Velyn…”\r\nHanya teriakan itu yang terakhir kudengar sebelum duniaku mendadak gelap. Aku tidak bisa mengingat apapun, bahkan saat aku kembali tersadar beberapa jam kemudian.\r\n“Ve, lo udah sadar?” Vanya berjalan menghampiriku dengan langkah cepat. Aku hanya tersenyum memandang wajah sahabatku.\r\n“Gue udah hubungi Mama dan Papa lo. Sebentar lagi mereka pasti datang,”\r\nDan pintu tiba-tiba terbuka. Mama menghampiriku dengan cemas. “Kamu tidak apa-apa kan, Sayang?”\r\n“Kata dokter, kamu terlalu banyak pikiran. Selama dua bulan terakhir ini kamu memang sering pingsan. Kenapa?”\r\nKenapa? Satu kata itu saja sudah membuat duniaku serasa runtuh. Satu kata yang walau kujawabpun mereka tak akan mengerti. Dan satu kata itu adalah sebuah kata yang jawabnya ku simpan sendiri dalam hatiku. Bukannya tak mau berbagi. Hanya saja terlalu sulit untuk mengulas peristiwa dalam kalimat lisan yang setiap katanya adalah hentakan yang keras.\r\nHelaan nafasku membuat mereka mengikuti jejakku. Menghela nafas. Itupun tak akan meringankan beban yang kutanggung.\r\nMama mengusap kepalaku pelan, membuatku merasa mengantuk karena terlalu lelah. Dan akupun kembali ke alam mimpiku.', 52),
(59, 'Cinta Tak Semudah Kata C.I.N.T', 'Azizah Attamimi', 'Saat aku tak mengenali bagaimana aku diizinkan untuk benar –benar\r\nmenyimpan perasaan itu di hati hingga mati…\r\nHingga semuanya terjadi, dan itulah yang tak semudah diucapkan\r\nTAKDIR…', 'Saat aku tak mengenali bagaimana aku diizinkan untuk benar –benar menyimpan perasaan itu di hati hingga mati…\r\nHingga semuanya terjadi, dan itulah yang tak semudah diucapkan.\r\nTAKDIR\r\n\r\nSATU\r\n\r\nSitubondo, 4 Agustus 2011\r\nAku heran kenapa kata CINTA selalu dijadikan prioritas utama dalam kisah hidup setiap manusia. Seperti tidak ada hal lain saja yang lebih penting dari sekedar kisah romantis antara sepasang manusia laki –laki dan perempuan. Bukanlah karier,\r\ncita -cita masa depan yang diperjuangkan, melainkan restu CINTA yang diperjuangkan hingga mencapai bingkai pelaminan. Setelah semua itu, barulah kembali mengingat karier tujuan semula. Aku hanya bisa tersenyum saja, apalagi saat aku merasakannya.\r\nAku benar –benar mengerti kenapa kata CINTA selalu jadi menu utama dalam daftar cobaan hidup. Sedih, susah, senang, itu sudah biasa, bahkan wajib untuk dirasakan hidup dalam mengiringi kisah cinta.\r\nSecuil kisah cintaku dimasa lalu…\r\nAwalnya aku memang ‘masa bodoh’ dengan urusan cinta. Tapi, ketika hati kecilku ini telah memandang seseorang yang biasa dengan sebuah ketulusan dan kasih sayang, rasanya aku tidak mau memperdulikan lainnya lagi. Hanya dia yang terpandang dalam hidupku.\r\nYa, aku jatuh cinta padanya…\r\nKata orang anak SMP itu baru belajar apa yang namanya cinta tapi masih tahap monyet, alias cinta monyet. Dan mengenali Cinta yang sesungguhnya saat SMA. Begitu juga denganku. Semua berawal sejak dia selalu mencuri pandanganku. Saat itu sedang kegiatan classmeeting pertandingan final antara kelasku, 1a dan kakak kelas 3b.\r\nPertandingan voli yang sangat seru dan cukup menegangkan, karena kedua tim sama – sama kuat. Saking serunya, tak ada satu orang guru maupun murid yang beranjak dari tempat penonton. Semua bagian luar lapangan terpenuhi oleh orang –orang itu. Jika kamu terlambat maka kamu tidak akan mendapatkan satu tempat untuk berdiri sekalipun.\r\n“Ami! Semangat!!” Teriak kawan –kawan menyemangati aku. Satu sekolahpun tahu kalau aku pentolan pemain voli nomor satu di sekolah. Sekejap memejamkan mata, mengingat akan Tuhan sang pencipta. Aku lempar bola ke atas dan SmaaSh! Permainan di mulai. Ribuan pasang mata tak henti –hentinya mengikuti lari bola kesana –kemari. Aku sangat menikmati permainan ini, dibawah terik matahari yang mulai meninggi hampir tepat keatas kepala. Lompat sana, pukul sini, dan Goal! Tim ku unggul telak dalam dua babak. Dan sekarang babak terakhir.\r\nBabak penentuan siapa pemenang yang sesungguhnya.\r\nPertandingan semakin sengit, mereka mengatur kembali strategi baru yang cukup membuatku lebih lelah lagi. Kini mataku mulai terasa panas, sejenak aku alihkan pandangan pada kerumunan penonton. Satu hal menarik di pandangan mataku, di\r\njauh sana di tengah –tengah gerombolan manusia ada satu orang lelaki yang tidak rapih, bajunya keluar, dasinya miring, dan penampilannya agak acak –acakan. Dia melontarkan senyum padaku. O’oww, sontak jantungku berdebar kencang sekali. Aku takut ini akan membuyarkan konsentrasiku. Lekas aku Tarik nafas dan menghembuskannya lagi dan kembali focus pada bola kuning biru itu. Aku kembali\r\nbermain, tapi perasaanku masih gugup. Aku rasa aku mulai merasa Ge-er dengan satu\r\npasang mata yang sejak tadi mengintai setiap gerak tubuhku. Kembali aku menolehi\r\narah kerumunan penonton itu, lelaki itu tetap tersenyum padaku. Ya Tuhan! Aku mulai\r\nhilang kendali, konsentrasiku mengoyah, aku tak bisa bermain seperti ini.', 53);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rekomendasi`
--
ALTER TABLE `rekomendasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `story`
--
ALTER TABLE `story`
  ADD PRIMARY KEY (`id`),
  ADD KEY `file_id` (`file_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `akun`
--
ALTER TABLE `akun`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `files`
--
ALTER TABLE `files`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT untuk tabel `rekomendasi`
--
ALTER TABLE `rekomendasi`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `story`
--
ALTER TABLE `story`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `story`
--
ALTER TABLE `story`
  ADD CONSTRAINT `story_ibfk_1` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
