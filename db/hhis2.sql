-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2018 at 03:59 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hhis2`
--

-- --------------------------------------------------------

--
-- Table structure for table `action`
--

CREATE TABLE `action` (
  `id` int(11) NOT NULL,
  `menu` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `action`
--

INSERT INTO `action` (`id`, `menu`, `action`, `role`) VALUES
(112, 8, 'index', 1),
(113, 8, 'view', 1),
(114, 8, 'create', 1),
(115, 8, 'update', 1),
(116, 8, 'delete', 1),
(183, 2, 'index', 1),
(184, 2, 'view', 1),
(185, 2, 'create', 1),
(186, 2, 'update', 1),
(187, 2, 'delete', 1),
(188, 3, 'index', 1),
(189, 3, 'view', 1),
(190, 3, 'create', 1),
(191, 3, 'update', 1),
(192, 3, 'delete', 1),
(193, 3, 'setting', 1),
(194, 4, 'index', 1),
(195, 4, 'view', 1),
(196, 4, 'create', 1),
(197, 4, 'update', 1),
(198, 4, 'delete', 1),
(199, 7, 'index', 1),
(200, 7, 'view', 1),
(201, 7, 'create', 1),
(202, 7, 'update', 1),
(203, 7, 'delete', 1),
(452, 17, 'approve', 4),
(451, 17, 'delete', 4),
(450, 17, 'update', 4),
(449, 17, 'create', 4),
(448, 17, 'view', 4),
(447, 17, 'index', 4),
(446, 15, 'delete', 4),
(445, 15, 'update', 4),
(444, 15, 'create', 4),
(443, 15, 'view', 4),
(442, 15, 'index', 4),
(441, 14, 'delete', 4),
(440, 14, 'update', 4),
(439, 14, 'create', 4),
(438, 14, 'view', 4),
(437, 14, 'index', 4),
(422, 14, 'index', 5),
(423, 14, 'view', 5),
(424, 14, 'create', 5),
(425, 14, 'update', 5),
(426, 14, 'delete', 5),
(427, 15, 'index', 5),
(428, 15, 'view', 5),
(429, 15, 'create', 5),
(430, 15, 'update', 5),
(431, 15, 'delete', 5),
(432, 17, 'index', 5),
(433, 17, 'view', 5),
(434, 17, 'create', 5),
(435, 17, 'update', 5),
(436, 17, 'delete', 5),
(747, 4, 'delete', 6),
(746, 4, 'update', 6),
(745, 4, 'create', 6),
(744, 4, 'view', 6),
(743, 4, 'index', 6),
(757, 34, 'delete', 7),
(756, 34, 'update', 7),
(755, 34, 'create', 7),
(754, 34, 'view', 7),
(753, 34, 'index', 7),
(752, 34, 'delete', 8),
(751, 34, 'update', 8),
(750, 34, 'create', 8),
(749, 34, 'view', 8),
(748, 34, 'index', 8);

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `judul` text,
  `deskripsi` text,
  `image` varchar(255) DEFAULT NULL,
  `abstrak` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul`, `deskripsi`, `image`, `abstrak`) VALUES
(5, 'PENTINGNYA ASI UNTUK KESEHATAN BAYI', '<p><strong>Berikut ini terdapat 10 alasan mengapa ASI sangat bermanfaat bagi bayi Anda:</strong></p>\r\n<p><strong>1. Asi kaya akan zat penting yang dibutuhkan oleh bayi</strong><br />Bila dibandingkan ASI dengan produk susu kalengan atau formula untuk sang buah hati, ASI tetap terunggul dan tak terkalahkan. Karena ASI memiliki semua kandungan zat penting yang dibutuhkan oleh sang bayi seperti; DHA, AA, Omega 6, laktosa, taurin, protein, laktobasius, vitamin A, kolostrum, lemak, zat besi, laktoferin and lisozim yang semuanya dalam takaran dan komposisi yang pas untuk bayi, oleh karenanya ASI jauh lebih unggul dibandingkan dengan susu apapun.</p>\r\n<p><strong>2. Asi sebagai sarana untuk mendekatkan sang ibu dengan buah hatinya</strong><br />ASI, menjadi makanan utama sang buah hati, selain karena kegunaannya sebagai makanan utama ASI juga berperan dalam mendekatkan kedekatan jiwa antara sang ibu dan sang anak. Sudah bukan menjadi rahasia umum lagi kalau anak yang mendapatkan ASI eklusif dari sang ibu akan cenderung mempunyai kedekatan dan hubungan yang lebih baik dibandingkan dengan bayi yang tidak mendapatkan asupan ASI.</p>\r\n<p><strong>3. Asi memberikan kekebalan yang optimal untuk bayi</strong><br />Karena ASI memiliki banyak keunggulan kandugan zat-zat penting yang terkandung didalamnya yang membuat bayi berkembang dengan optimal. ASI juga mempunyai keunggulan lain untuk pembentukan sistim Imun sang bayi. Sistem imum merupakan sistim yang sangat krusial untuk sang bayi, semakin baik sistim imun anak maka akan membuat anak jarang sakit. Dibandingkan bayi yang tidak mendapatkan asupan ASI, bayi yang mendapatkan asupan ASI mempunyai sistim imun atau sistim kekebalan tubuh yang jauh lebih baik.</p>\r\n<p><strong>4. Asi tidak basi dan selalu segar</strong><br />Tidak seperti susu yang lain, ASI tidak akan basi, karena ASI langsung dihasilkan dipayudara sang ibu tanpa campur tangan bahan kimia, yang terpenting selama asupan makanan yang dikonsumsi oleh ibu bergizi seimbang dan tepat , maka ASI yang dihasilkanpun memiliki kualitas yang baik.</p>\r\n<div>\r\n<div><span class="ctaText">Baca Juga:</span>&nbsp; <span class="postTitle">Tangani Diare Anak dengan Cepat dan Tepat</span></div>\r\n</div>\r\n<p><strong>5. Asi lebih higenis dibandingkan dengan susu lain</strong><br />Karena ASI langsung diberikan melaui puting sang ibu dengan ASI yang tersimpan dipayudara ibu akan menjaga keadaan ASI steril dan dengan suhu yang tepat sesuai untuk kebutuhan sang buah hati. Bila dibandingkan dengan susu formula atau susu kaleng, keduannya memerlukan alat bantu berupa botol dot agar bisa dikonsumsi oleh sang bayi. Kesterilan dari susu seperti ini perlu dipikirkan lagi, karena dalam proses pembuatan susu dan memasukan ke dalam botol ada banyak kemungkinan bahwa susu tersebut tercemar dengan senyawa lain, entah dari susunya sendiri sudah tercemar, air yang digunakan belum tentu streril dan yang penting botol dot yang digunakan untuk minum sang bayi juga belum tentu bebas dari kuman.</p>\r\n<p><strong>6. Asi menjadi pelindung yang baik</strong><br />ASI menjadi pelindung yang baik untuk sang bayi dari berbagai penyakit atau insiden seperti kematian bayi secara mendadak, gangguan pencernaan, <a href="http://doktersehat.com/diare/" target="_blank">diare</a>, infeksi telinga dan lain-lain.</p>\r\n<p><strong>7. Asi akan berubah sesuai kebutuhan bayi</strong><br />ASI memiliki sistematika cara kerja yang sangat unik, karena dengan sendirinya komponen ASI akan berubah sesuai dengan kebutuhan dan usia sang bayi.</p>\r\n<p><strong>8. Asi merupakan pelindung dari berbagai alergi makanan</strong><br />ASI juga mampu memberi rangsangan kepada sang bayi agar kebal terhadap berbagai bahan makanan, perlu diingat untuk hal ini keragaman dan ke-berimbagan makanan yang dikonsumsi oleh sang ibu akan turut menentukan.</p>\r\n<p><strong>9. Asi makanan yang tepat untuk bayi</strong><br />ASI sangat penting keberadaanya khususnya untuk bayi usia 0-6 bulan, karena di usia ini ASI merupakan makanan wajib bagi sang buah hati.</p>\r\n<p><strong>10. Bermanfaat untuk ibu dan bayi</strong><br />Manfaat ASI bukan hanya untuk sang bayi akan tetapi juga untuk sang ibu , karena dengan menyusui sang ibu dapat melepaskan ketegangan yang ada pada payudaranya, selain itu memperkecil resiko sang ibu terkena kanker ovarium, dibanding dengan wanita yang tidak memberikan ASI.</p>\r\n<p><br /><br /></p>', 'uploads/asi.jpg', 'Mungkin anda masih ingat bagaimana gencarnya pemerintah dalam menggalakkan pemberian Air Susu Ibu ASI bagi bayi, memang keputusan untuk memberi ASI merupakan sesuatu yang bersifat personal tetapi para ahli kesehatan mendukung pembirian ASI dan mereka pun menyampaikan banyak pesan bahwa ASI memberikan nutrisi yang lengkap dan kekebalan pada bayi serta keuntungan psikologi untuk kesehatan bayi.\r\n'),
(7, 'Segudang Bahaya Merokok Terhadap Tubuh', '<p>Salah satu konsekuensi utama yang bisa Anda dapatkan dari rokok adalah menderita penyakit jantung. Diperkirakan, sebanyak 20% kematian akibat penyakit jantung terkait langsung dengan kebiasaan merokok. Kenapa rokok begitu berbahaya? Apa saja efek negatif lainnya dari rokok?</p>\r\n<p>Lihat saja kandungan yang terdapat pada sebatang rokok. Lebih dari 4000 bahan kimia terdapat di dalamnya. Ratusan di antaranya zat beracun dan sekitar 70 bahan di dalamnya bersifat kanker. Bahan-bahan berbahaya pada sebatang rokok, antara lain:</p>\r\n<ul>\r\n<li><strong>Karbon monoksida.</strong>&nbsp;Zat yang kerap ditemukan pada asap knalpot mobil ini bisa mengikat diri pada hemoglobin dalam darah secara permanen sehingga menghalang penyediaan oksigen ke tubuh. Hal tersebut membuat Anda cepat lelah.</li>\r\n<li><strong>Tar.</strong>&nbsp;Ketika merokok, kandungan tar di dalam rokok akan ikut terisap. Zat ini akan mengendap di paru-paru Anda dan berdampak negatif pada kinerja rambut kecil yang melapisi paru-paru. Padahal rambut tersebut bertugas untuk membersihkan kuman dan hal lainnya keluar dari paru-paru Anda.</li>\r\n<li><strong>Gas oksidan.</strong>&nbsp;Gas ini bisa bereaksi dengan oksigen. Keberadaannya pada tubuh lebih meningkatkan risiko stroke dan serangan jantung akibat penggumpalan darah.</li>\r\n<li><strong>Benzene.</strong>&nbsp;Zat yang ditambahkan ke dalam bahan bakar minyak ini bisa merusak sel pada tingkat genetik. Zat ini juga dikaitkan dengan berbagai jenis kanker seperti&nbsp;<a href="http://www.alodokter.com/kanker-ginjal" target="_blank">kanker ginjal</a>&nbsp;dan leukimia.</li>\r\n</ul>\r\n<p>Selain bahan-bahan di atas, masih banyak kandungan beracun pada sebatang rokok seperti&nbsp;<em>arsenic</em>&nbsp;(digunakan dalam&nbsp;<a href="http://www.alodokter.com/sedekat-inilah-pestisida-dengan-kita" target="_blank">pestisida)</a>,&nbsp;<em>toluene</em>&nbsp;(ditemukan pada pengencer cat),&nbsp;<em>formaldehyde</em>&nbsp;(digunakan untuk mengawetkan mayat),&nbsp;<em>hydrogen cyanide</em>&nbsp;(digunakan untuk membuat senjata kimia), dan&nbsp;<em>cadmium</em>&nbsp;(digunakan untuk membuat baterai).</p>\r\n<p>&nbsp;</p>\r\n<p>Ketika Anda merokok, Anda akan lebih mungkin terkena serangan jantung. Perokok berisiko dua hingga empat kali lebih tinggi menderita penyakit jantung. Risiko lebih tinggi lagi jika Anda perokok wanita yang sedang&nbsp;<a href="http://www.alodokter.com/ingin-tahu-efek-samping-pil-kb" target="_blank">mengonsumsi pil KB</a>.</p>\r\n<p>Saat merokok, Anda akan turut memasukkan zat-zat berbahaya yang bisa berdampak buruk tubuh, khususnya jantung. Contohnya zat nikotin. Ketika nikotin masuk ke tubuh, zat itu bisa mengurangi kadar oksigen yang akan masuk ke darah. Zat yang bersifat candu ini juga bisa mempercepat detak jantung, menaikkan tekanan darah, merusak&nbsp;<a href="http://www.alodokter.com/Ini-Serius-Jaga-Baik-baik-Kesehatan-Pembuluh-Darah" target="_blank">pembuluh darah&nbsp;</a>dalam jantung, dan mempercepat pembekuan darah yang bisa memicu serangan jantung. Begitu juga dengan akibat-akibat buruk terhadap organ tubuh yang lainnya.</p>\r\n<p><strong>Otak</strong></p>\r\n<p>Merokok bisa meningkatkan risiko terkena stroke sebesar 50 persen. Hal tersebut bisa menyebabkan kerusakan otak dan kematian. Merokok juga dapat meningkatkan risiko mengalami aneurisma otak. Aneurisma otak adalah pembengkakan pembuluh darah yang terjadi akibat melemahnya dinding pembuluh darah. Sewaktu-waktu bisa pecah dan mengakibatkan pendarahan di otak.</p>\r\n<p><strong>Mulut dan tenggorokan</strong></p>\r\n<p><a href="http://www.alodokter.com/bahaya-merokok-bagi-kesehatan-mulut" target="_blank">Bau mulut dan gigi bernoda merupakan efek yang akan timbul akibat merokok</a>. Penyakit gusi dan kerusakan indera perasa pun dapat timbul. Masalah serius yang akan hinggap pada mulut dan tenggorokan adalah meningkatnya risiko kanker pada lidah, tenggorokan, bibir, dan pita suara.</p>\r\n<p><strong>Paru-paru</strong></p>\r\n<p>Salah satu efek paling berbahaya akibat merokok adalah kanker paru-paru. Bahan-bahan kimia pada rokok berpotensi merusak sel-sel pada paru-paru yang bisa membentuk sel kanker. Penyakit serius lainnya yang bisa Anda alami adalah bronkitis, pneumonia, dan emfisema.</p>\r\n<p><strong>Lambung</strong></p>\r\n<p>Merokok bisa melemahkan otot yang mengontrol bagian bawah kerongkongan Anda. Hal tersebut memungkinkan asam dari lambung bergerak ke arah yang salah, yaitu ke kerongkongan. Kondisi tersebut dinamakan penyakit asam lambung. Beberapa risiko penyakit yang akan dihadapi oleh seorang perokok adalah ulkus atau tukak dan&nbsp;<a href="http://www.alodokter.com/hiperemsis-gravidarum" target="_blank">kanker lambung.</a></p>\r\n<p><strong>Tulang</strong></p>\r\n<p>Racun pada rokok bisa merusak tulang dengan cara menghentikan kerja sel-sel konstruksi. Oleh sebab itu, perokok lebih berisiko mengalami tulang rapuh atau osteoporosis. Racun rokok juga bisa mengganggu keseimbangan hormon-hormon yang bertugas menjaga tulang tetap kuat, seperti hormon estrogen.</p>\r\n<p><strong>Kulit</strong></p>\r\n<p>Perokok akan terlihat lebih tua ketimbang yang bukan perokok karena kurangnya asupan oksigen ke kulit. Penuaan dini akan dirasakan, seperti kemunculan&nbsp;<a href="http://www.alodokter.com/wajah-berkerut-inilah-prosedur-untuk-mengatasinya" target="_blank">kerutan</a>di sekitar mata dan mulut. Racun rokok juga bisa menyebabkan selulit pada kulit.</p>\r\n<p><strong>Organ reproduksi</strong></p>\r\n<p>Merokok bisa mengganggu sistem reproduksi dan kesuburan Anda. Pada pria, merokok bisa menyebabkan impotensi, mengurangi produksi sperma, dan&nbsp;<a href="http://www.alodokter.com/kanker-testis" target="_blank">kanker testis</a>.&nbsp;<a href="http://www.alodokter.com/penyebab-infertilitas-wanita-yang-perlu-diketahui" target="_blank">Sementara pada wanita, merokok dapat mengurangi kesuburan</a>. Selain itu, risiko terkena kanker serviks pun lebih tinggi karena rokok mengurangi kemampuan alami tubuh dalam melawan infeksi&nbsp;<em>human papillomavirus</em>&nbsp;atau HPV.</p>\r\n<p>Selain penyakit pada fisik, perokok juga mengalami tingkat stres yang lebih tinggi dibandingkan mereka yang tidak merokok. Selama ini mungkin Anda mengira merokok bisa membuat lebih rileks. Anda menganggap kandungan nikotin bisa menenangkan pikiran Anda, tapi ternyata itu salah. Yang membuat perokok gelisah dan cemas adalah gejala putus obat terhadap nikotin. Dengan merokok, kecanduan terhadap nikotin akan terpenuhi dan perokok merasa seperti rokok tersebut menurunkan stres.</p>\r\n<p>&nbsp;</p>\r\n<p>Memang tidak semua perokok akan meninggal karena penyakit jantung, kanker paru-paru, atau stroke, namun kebiasaan merokok bisa sangat mengganggu dan mengurangi kualitas hidup Anda sehari-hari. Efek rokok yang bisa Anda rasakan sehari-hari adalah batuk-batuk, sesak napas, lebih mudah lelah, lebih rentan terhadap infeksi, atau mengalami&nbsp;<a href="http://www.alodokter.com/gangguan-tidur" target="_blank">gangguan tidur</a>&nbsp;yang ditandai dengan sulit bernapas pada malam hari kemudian merasa kelelahan di pagi hari.</p>\r\n<p>Mungkin Anda sudah terbiasa mendengar bahaya merokok terhadap tubuh, namun Anda tetap tidak menghentikan kebiasaan mengisap rokok karena merasa saat ini kesehatan Anda masih baik-baik saja.</p>\r\n<p>Perlu diingat, merokok sama saja seperti menabung racun pada tubuh yang sedikit demi sedikit bisa menumpuk jika dilakukan terus-menerus. Dengan begitu, risiko menderita penyakit pun akan lebih tinggi pada masa tua.&nbsp;<a href="http://www.alodokter.com/bahaya-menjadi-perokok-pasif" target="_blank">Tidak hanya Anda, orang-orang terdekat pun akan merasakan efeknya karena menghirup asap rokok yang beracun.</a></p>', 'uploads/rokoko.jpg', 'Pasti Anda sudah tidak asing lagi dengan peringatan dilarang merokok. Dua kata itu bisa dengan mudahnya dijumpai di mana saja. Sepertinya tidak mengherankan jika mengingat dampak-dampak negatif yang ditimbulkan akibat merokok pada tubuh Anda.'),
(8, '5 Cara Mengatasi Wajah Berminyak dalam 30 Menit Saja', '<p><span style="font-style: inherit; font-weight: inherit;">Apa yang kamu lakukan ketika mengetahui muka berminyak? Mengambil tisu kah, mengusapnya dengan tangan, atau malah pergi ke kamar mandi lalu menggunakan facial foam?&nbsp;Semua itu salah besar. Kali&nbsp;ini saya akan&nbsp;bagikan cara paling ampuh agarwajah berminyak tak menghantuimu lagi.</span></p>\r\n<p><span style="font-style: inherit; font-weight: inherit;">Sebenarnya wajah berminyak itu tidak selamanya buruk. Dengan adanya minyak di wajah, maka kulit akan menjadi lebih lembab. Kondisi lembab inilah yang dapat membantu mencegah penuaan dini. Dengan demikian, seseorang yang memiliki muka berminyak, mereka cenderung lebih&nbsp;<strong><strong style="font-style: inherit;"><a style="font-style: inherit; font-weight: inherit;" href="http://www.cantikitu.com/2015/07/11-tips-sederhana-agar-anda-selalu-awet.html">awet muda</a></strong></strong>.<br /></span></p>\r\n<p><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">&nbsp;</span></span></strong></strong></p>\r\n<p><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Penyebab Muka Berminyak</span></span></span></strong></strong></p>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">&nbsp;</span></span></p>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Minyak muncul di wajah itu sangatlah wajah. Adanya minyak ini akan membantu mencegah kekeringan di kulit. Akan tetapi apabila berlebihan, minyak tersebut justru akan berpotensi menyebabkan masalah seperti jerawat, muka mengkilap, penyumbatan pori, komedo, dll. Berikut beberapa penyebab wajah berminyak:</span></span></p>\r\n<ul style="font-style: inherit; font-weight: inherit;">\r\n<li style="font-style: inherit; font-weight: inherit;"><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Kondisi hormon seseorang</span></span></strong></strong></li>\r\n</ul>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Biasanya para wanita yang sedang menstruasi akan cenderung mengalami produksi minyak berlebih pada bagian wajah. Munculnya kondisi ini dapat disebabkan karena hormon dalam tubuh sedang tidak stabil. Selain pada wanita yang mengalami mens, kamu yang sedang masa puber juga akan mengalami hal yang sama.</span></span></p>\r\n<ul style="font-style: inherit; font-weight: inherit;">\r\n<li style="font-style: inherit; font-weight: inherit;"><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Stres</span></span></strong></strong></li>\r\n</ul>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Stres mendorong hormon kartisol yang merupakan penunjang produksi minyak di wajah. Oleh karenanya, kebanyakan orang yang stres mereka lebih cenderung memiliki minyak berlebih pada wajahnya. Bahkan jika stres tersebut berlebihan, wajah kamu juga akan sangat mudah terserang jerawat.</span></span></p>\r\n<ul style="font-style: inherit; font-weight: inherit;">\r\n<li style="font-style: inherit; font-weight: inherit;"><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Cuaca panas</span></span></strong></strong></li>\r\n</ul>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Cuaca panas dapat mengakibatkan tubuh kita lebih mudah berkeringat. Sambil mengeluarkan keringat, sebenarnya dalam cuaca panas tubuh juga memproduksi banyak minyak pada kulit. Apabila keringat dan minyak tidak segera dibersihkan, maka akan menyebabkan muculnya&nbsp;<strong><strong style="font-style: inherit;"><a style="font-style: inherit; font-weight: inherit;" href="http://www.cantikitu.com/2015/09/16-cara-menghilangkan-bau-badan.html">bau badan</a></strong></strong>.</span></span></p>\r\n<ul style="font-style: inherit; font-weight: inherit;">\r\n<li style="font-style: inherit; font-weight: inherit;"><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Kosmetika yang tidak cocok</span></span></strong></strong></li>\r\n</ul>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Apakah kamu suka menggunakan pelembab wajah? Pelembab wajah sebenarnya hanya direkomendasikan kepada pemilik kulit kering, bukannya berminyak. Nah apabila kulitmu berminyak, cobalah untuk menghindari kosmetik dalam bentuk pelembab, cream, lotion, dll.</span></span></p>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">&nbsp;</span></span></p>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Beberapa penyebab diatas bisa kamu hindari sebisa mungkin supaya keluarnya minyak dapat diminimalisir. Langsung saja berikut beberapa cara mengatasi wajah berminyak secara alami hanya dalam 30 menit saja.</span></span></p>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><strong>1. Masker jeruk nipis</strong><br /></span></span></p>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">&nbsp;</span></span></p>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Jeruk nipis termasuk buah yang memiliki rasa masam cukup tinggi. Rasa masamnya inilah yang bertindak untuk mengurangi minyak di wajah kamu. Selain itu, kandungan vitamin C yang cukup tinggi juga dapat membuat kulitmu nampak lebih cerah dan bebas dari jerawat.</span></span></p>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">&nbsp;</span></span></p>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Namun jangan kaget, biasanya penggunaan masker jeruk nipis akan menyebabkan rasa gatal dan bahkan perih. Apalagi jika wajah kamu berjerawat. Rasa gatal tersebut akan hilang sendirinya seiring dengan perawatan rutin.</span></span></p>\r\n<p><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">&nbsp;</span></span></strong></strong></p>\r\n<p><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Cara menghilangkan minyak di wajah dengan jeruk nipis:</span></span></strong></strong></p>\r\n<ul>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Siapkan buah jeruk nipis sebanyak 1 butir saja</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Belah jeruk nipis menjadi 2 bagian, lalu peras dalam wadah</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Gunakan bantuan kapas untuk mengoleskan masker jeruk nipis tersebut</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Diamkan sekitar 30 menitan, kemudian bilas dengan air hangat</span></span></li>\r\n</ul>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;">Catatan:</span></strong></strong>&nbsp;apabila tidak ada jeruk nipis, kamu bisa menggantinya dengan lemon.<span style="font-style: inherit; font-weight: inherit;">Keduanya memiliki manfaat yang sam<span style="font-style: inherit; font-weight: inherit;">a kok.</span></span></span></span></p>\r\n<p><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">&nbsp;</span></span></strong></strong></p>\r\n<ol start="2">\r\n<li><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"> Gunakan buah apel dan madu</span></span></strong></strong></li>\r\n</ol>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">&nbsp;</span></span></p>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Apel merupakan buah yang mengandung senyawa anti-lemak. Sifat anti-lemaknya inilah yang dapat membantu mengatasi wajah berminyak. Kamu bisa menggunakan apel jenis apapun, mulai dari apel&nbsp;<span style="font-style: inherit; font-weight: inherit;">hijau</span>&nbsp;<span style="font-style: inherit; font-weight: inherit;">atau merah.</span></span></span></p>\r\n<p><span style="font-style: inherit; font-weight: inherit;">Kelebihan cara ini ialah tak menyebabkan rasa gatal atau perih. Sehingga sangat cocok untuk kulitmu yang sekaligus jerawatan.</span></p>\r\n<p><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">&nbsp;</span></span></strong></strong></p>\r\n<p><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Cara mengatasi wajah berminyak dengan apel:</span></span></strong></strong></p>\r\n<ul>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Siapkan 1 buah apel segar dan 3 sendok makan madu</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Haluskan apel dengan blender (tanpa dikupas)</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Campur dengan madu sampai merata, lalu masukan kedalam kulkas</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Setelah dingin, oleskan masker apel secara merata keseluruh bagian wajah</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Agar bekerja maksimal beri pijatan lembut 5 menit dan diamkan 25 menit</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Apabila sudah, bilas dengan menggunakan air dingin.</span></span></li>\r\n</ul>\r\n<p><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">&nbsp;</span></span></strong></strong></p>\r\n<ol start="3">\r\n<li><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"> Tomat</span></span></strong></strong></li>\r\n</ol>\r\n<p><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">&nbsp;</span></span></strong></strong></p>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Manfaat tomat</span><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;">&nbsp;</span></strong></strong><span style="font-style: inherit; font-weight: inherit;">ada banyak sekali, mulai dari meningkatkan imun tubuh sampai dengan perawatan kecantikan. Salah satu manfaat untuk kecantikan adalah dapat membantu mengurangi minyak di wajah secara alami.</span></span></p>\r\n<p><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">&nbsp;</span></span></strong></strong></p>\r\n<p><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Cara mengatasi muka berminyak dengan tomat:</span></span></strong></strong></p>\r\n<ul>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Haluskan buah tomat segar, lalu campur dengan madu (bila ada)</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Aplikasikan masker tomat tersebut secara merata keseluruh bagian wajah</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Pijat lembut selama kurang lebih 15 menit, dan diamkan 15 menit</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Setelah itu, bilas dengan menggunakan air hangat sampai bersih</span></span></li>\r\n</ul>\r\n<p><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">&nbsp;</span></span></strong></strong></p>\r\n<ol start="4">\r\n<li><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"> Mentimun</span></span></strong></strong></li>\r\n</ol>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">&nbsp;</span></span></p>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Timun atau mentimun, merupakan buah yang mengandung banyak air di dalamnya. Kandungan tersebut memiliki sifat antibakterial, anti-inflamasi, dan kaya akan mineral alami yang baik untuk kesehatan kulit.</span></span></p>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">&nbsp;</span></span></p>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Perawatan dengan masker timun rutin sangat baik untuk mengatasi jerawat, mencegah peradangan, menghilangkan minyak di wajah, dan lain sebagainya.</span></span></p>\r\n<p><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">&nbsp;</span></span></strong></strong></p>\r\n<p><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Cara mengatasi wajah berminyak dengan mentimun:</span></span></strong></strong></p>\r\n<ul>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Siapkan timun segar secukupnya saja</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Haluskan timun tersebut dengan menggunakan blender (tanpa dikupas)</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Setelah halus, diamkan sejenak dalam kulkas</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Selanjutnya oleskan masker timun secara merata keseluruh bagian wajah</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Diamkan selama 30 menit, lalu bilas dengan menggunakan air hangat.</span></span></li>\r\n</ul>\r\n<p><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">&nbsp;</span></span></strong></strong></p>\r\n<ol start="5">\r\n<li><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"> Masker semangka</span></span></strong></strong></li>\r\n</ol>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">&nbsp;</span></span></p>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Semangkat mengandung kalium yang cukup tingg, menurut para ahli kandungan kalium tersebut bisa menurunkan tekanan darah tinggi, mencegah diabetes, stroke, penyumbatan pembuluh darah, dan bahkan serangan jantung.</span></span></p>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">&nbsp;</span></span></p>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Selain kalium, semangka dipercaya juga mengandung vitamin E dan C yang dapat membantu mengontrol minyak di wajah. Bahkan beberapa mineral alaminya juga cukup baik untuk mengecilkan pori wajah secara alami</span></span></p>\r\n<p><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">&nbsp;</span></span></strong></strong></p>\r\n<p><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Cara mengatasi wajah berminyak dengan semangka:</span></span></strong></strong></p>\r\n<ul>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Haluskan daging buah semangka segar (bisa ditumbuk atau diblender)</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Bila ada, tambahkan sedikit yoghurt tawar atau susu</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Setelah selesai mandi, aplikasikan masker semangka secara merata keseluruh bagian wajah</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Diamkan sekiranya 30 menit, apabila sudah terasa kaku bilas dengan air dingin sampai bersih. Selesai.</span></span></li>\r\n</ul>\r\n<h3 style="font-style: inherit;"><strong><strong style="font-style: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Cara Merawat Wajah Berminyak dengan Baik dan Benar</span></span></span></strong></strong></h3>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Setelah minyak di wajah hilang, bukan berarti kamu membiarkannya begitu saja tanpa melakukan perawatan lagi. Sebab kondisi alamiah wajah mau tidak mau akan menyebabkan munculnya minyak kembali. Berikut beberapa tips merawat muka berminyak yang bisa kamu terapkan:</span></span></p>\r\n<ul>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Bersihkan wajah secara rutin minimal 2x sehari (bisa setiap kali mandi)</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Setelah selesai beraktivitas olahraga, usahakan membersihkan sisa keringat dan minyak</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Hindari menggunakan kosmetik berlebihan, termasuk cream pelembab</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Hindari makanan gorengan, mie instan, dan makanan berminyak lainnya</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Jangan membersihkan muka berminyak dengan tangan kotor, tisu, ataupun sabun muka yang tidak cocok dengan jenis kulit</span></span></li>\r\n<li style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Perbanyak konsumsi buah dan sayur yang kaya akan serat, dll.</span></span></li>\r\n</ul>\r\n<p><span style="font-style: inherit; font-weight: inherit;"><span style="font-style: inherit; font-weight: inherit;">Itulah beberapa cara&nbsp;<span style="font-style: inherit; font-weight: inherit;">atasi</span>&nbsp;wajah berminyak secara alami dalam 30 menit.&nbsp;<span style="font-style: inherit; font-weight: inherit;">Pilih salah satu saja kemudian coba terapkan selama sebulan. Jika tak ada perubahan kamu bisa berkonsultasi ke dokter agar mendapatkan saran terbaik.</span></span></span></p>', 'uploads/cara-mengatasi-muka-berminyak.gif', 'Apa yang kamu lakukan ketika mengetahui muka berminyak? Mengambil tisu kah, mengusapnya dengan tangan, atau malah pergi ke kamar mandi lalu menggunakan facial foam? Semua itu salah besar. Kali ini saya akan bagikan cara paling ampuh agar wajah berminyak tak menghantuimu lagi.\r\n'),
(9, 'Waspadai 7 Penyakit Tanpa Gejala Ini', '<p><strong>1. Hipertensi dan Kolesterol Tinggi</strong></p>\r\n<p>Dua masalah ini sangat populer di tengah masyarakat. Hipertensi dan kolesterol yang tinggi pada dasarnya tidak memberikan keluhan apapun bagi penderitanya. Idealnya tekanan darah normal untuk dewasa ialah &le;120/80 mmHg, dan disebut hipertensi grade I apabila tensi &ge;140/90 serta hipertensi grade II bila tensi &ge;160/100. Tekanan darah yang melebihi 180/120 disebut juga hipertensi krisis (berbahaya).</p>\r\n<p><br />Namun ironisnya, hipertensi hingga &ge; 200/120 pun kadang tidak memberikan gejala apapun! Atau pada kebanyakan kasus, orang tersebut hanya mengeluh pusing-pusing ringan dan pegal-pegal ringan. Tak heran, banyak orang yang menyepelakan dan tidak mau berobat karena tidak ada keluhan. Itu adalah persepsi yang keliru. Disadari atau tidak, dampak hipertensi sebenarnya telah terjadi apabila tekanan &ge; 120/80; efek kerusakan akan terakumulasi hingga bertahun-tahun kemudian baru menimbulkan penyakit jantung dan pembuluh darah. Khusus untuk hipertensi krisis, bahaya stroke, penyakit jantung, serta pecah pembuluh darah dapat mengancam setiap saat.</p>\r\n<p>Serupa halnya dengan kolesterol tinggi. Kadar kolesterol yang tinggi ibarat bom waktu yang akan terakumulasi di pembuluh darah atau jaringan hati (<em>fatty liver</em>) dan berakibat fatal. Padahal, obatnya sangat sederhana dan relatif murah.</p>\r\n<p><strong>2. Penyakit Ginjal Kronis</strong></p>\r\n<p>Fungsi utama ginjal ialah menyaring darah dan membuang sisa-sisa metabolisme melalui urin. Namun, penyakit ginjal tidak selalu ditandai dengan masalah pada urin atau berkemih. Dalam pengalaman penulis, gejala baru disadari saat penyakit sudah memasuki stadium III atau IV, bahkan ada yang harus langsung menjalani cuci darah (hemodialisis). Sedih rasanya melihat kondisi tersebut.</p>\r\n<p>Disebut penyakit ginjal kronis (<em>chronic kidney disease</em>/CKD) apabila fungsi ginjal telah menurun secara progresif. Hal yang dikhawatirkan pasien dari CKD ini ialah tindakan pengganti ginjal (cuci darah rutin atau transplantasi ginjal), apabila sudah stadium terminal (<em>stage</em>&nbsp;V). CKD stage IV tidak akan kembali menjadi stage III atau II lagi, demikian seterusnya, sehingga fokus terapi ialah mencegah penurunan fungsi ginjal lebih lanjut.</p>\r\n<p>Apa penyebab penyakit ginjal kronis ini? Nomor satu ialah&nbsp;<a class="inner-link" href="http://indeks.kompas.com/tag/diabetes" target="_blank">diabetes</a>melitus yang tidak terkontrol (gula darah terus tinggi), dan berikutnya ialah hipertensi yang tidak terkontrol.</p>\r\n<p><strong>3.&nbsp;<a class="inner-link" href="http://indeks.kompas.com/tag/diabetes" target="_blank">Diabetes</a>&nbsp;Melitus (DM)</strong></p>\r\n<p>Terutama di Indonesia, penyakit kencing manis atau diabetes melitus masih banyak yang tak terdeteksi. Pasien kadang baru datang berobat setelah ada penyakit jantung, ginjal, luka yang tak kunjung sembuh, hingga luka yang telah membusuk sekalipun. Padahal penyebabnya sederhana: kadar gula darah yang tinggi.</p>\r\n<p>Patut diakui, para dokter sulit menentukan dengan tepat kapan sebenarnya penyakit ini dimulai. Ada literatur yang mengatakan, apabila kadar HbA1C &ge; 6,5 (ini adalah patokan angka diagnosis DM) sesungguhnya sudah terjadi kerusakan pembuluh darah mikro di retina mata akibat kadar gula yang tinggi (retinopati).</p>\r\n<p>Beberapa pasien pada awalnya mengeluhkan gejala 3P: poliuria (sering berkemih), polidipsi (sering haus), dan polifagia (sering lapar), serta penurunan berat badan tanpa sebab. Itu adalah gejala klasik DM. Walaupun telah muncul, gejala tersebut kadang terabaikan atau dianggap bukan yang penting. Padahal, keluhan tersebut dapat membuka pintu untuk deteksi DM secara dini dan tepat.</p>\r\n<p><strong>4. Osteoporosis</strong></p>\r\n<p>Siapa yang tak kenal penyakit ini? Meski familiar, namun Anda dan saya tidak tahu apakah sedang mengalami pengeroposan tulang atau tidak. Osteoporosis tidak memiliki gejala atau keluhan apapun, seringkali pasien datang sudah dengan nyeri akibat patah tulang (fraktur) atau kejadian jatuh akibat tulang yang rapuh. Angka tertinggi osteoporosis terjadi pada wanita yang menopause, terutama yang memiliki berat badan rendah.</p>\r\n<p>Cara pasti untuk mendeteksi secara dini ialah dengan pemeriksaan kepadatan tulang (<em>bone densitometry</em>), atau pada kasus-kasus awal dapat dilakukan dengan pemeriksaan radiologi. Namun sayangnya, pemeriksaan tersebut belum rutin dilakukan pada orang sehat.</p>\r\n<p><strong>5. Penyakit Jantung Koroner (PJK)</strong></p>\r\n<p>Masihkan ingatkah Anda sesosok artis dan politisi muda dengan porsi tubuh ideal dan rutin berolahraga, namun meninggal mendadak akibat satu kali serangan jantung? Ya, tak heran PJK disebut sebagai pembunuh nomor satu. Dalam ilmu kedokteran, jenis kelamin laki-laki dan usia &ge; 45 tahun saja (belum ditambah faktor lain) sudah termasuk sebagai faktor risiko PJK.</p>\r\n<p>PJK biasa muncul sebagai nyeri dada sebelah kiri, seperti ditekan benda berat, yang kadang menjalar ke lengan, rahang bawah, serta pundak. Artinya, ada sumbatan di pembuluh darah koroner. Namun faktanya, PJK bisa muncul tanpa gejala apapun! Pasien dapat tiba-tiba jatuh tergeletak tanpa diketahui sebabnya. Setelah diperiksa rekam jantung, barulah diketahui bahwa pasien mengalami PJK.</p>\r\n<p><strong>6. Infeksi Menular (HIV dan Hepatitis)</strong></p>\r\n<p>Penyakit ini boleh dibilang berbeda golongan dari lima yang telah dibahas sebelumnya. Namun, infeksi menular seperti HIV dan hepatitis dapat muncul tanpa gejala sedikitpun. Selain tidak menimbulkan gejala, penyakit ini mudah menular bila tidak berhati-hati!<br />Pada kasus HIV, butuh bertahun-tahun sejak virus masuk ke dalam darah hingga muncul sebagai gejala.</p>\r\n<p>Banyak pasien yang baru diketahui mengalami HIV setelah dirinya terjangkit berbagai infeksi sekunder lainnya. Seperti yang diketahui, pasien HIV memiliki imunitas yang rendah sehingga rentan terkena infeksi. Dengan kata lain, virus HIV tidak membunuh pasien secara langsung, melainkan melalui infeksi-infeksi sekunder tersebut. Pasien HIV paling sering meninggal akibat tuberkulosis atau hepatitis C.</p>\r\n<p>Untungnya, pemeriksaan HIV dan hepatitis telah rutin dilakukan pada orang sehat, misalnya saat melamar kerja. Penulis sering menemukan, seseorang baru mengetahui dirinya mengidap hepatitis B kronis saat pemeriksaan rutin sewaktu melamar kerja. Tiba-tiba saja hasil laboratorium menunjukkan nilai HbsAg posititf (penanda hepatitis B). Ia tidak tahu dari mana sumbernya, dan mengaku tidak menggunakan obat-obatan suntik, seks bebas, atau transfusi darah. Dan tidak ada keluhan kesehatan selama ini; murni hanya hasil lab saja yang bermasalah.</p>\r\n<p>Itulah kesulitan dari hepatitis B. Di Indonesia, mayoritas kasus hepatitis B kronis terjadi akibat infeksi melalui plasenta sewaktu dalam kandungan. Misalnya seorang ibu hamil dengan hepatitis B positif, sang bayi memiliki risiko yang sangat besar untuk mengidap hepatitis juga, namun dengan sifat penyakit kronis: tidak ada gejala pada tahun-tahun awal.</p>\r\n<p><strong>7. Sirosis hepar (penciutan hati)</strong></p>\r\n<p>Seperti halnya penyakit ginjal kronis, masalah kronis pada hati juga dapat mengakibatkan perubahan struktur dan penurunan fungsi. Disebut sirosis hati, apabila sel-sel normal telah mati, digantikan oleh serabut-serabut fibrosa, ukurannya menciut, dan tidak bisa dipulihkan lagi. Lazimnya kondisi ini diketahui melalui USG hati.</p>\r\n<p>Namun, ceritanya agak berbeda dengan penyakit-penyakit di atas. Biasanya pasien memiliki riwayat penyakit hati yang berangsur-angsur dan tidak diobati hingga terjadilah sirosis. Penyebab tersering ialah hepatitis kronis yang disepelekan karena tidak ada gejala. Sampai suatu ketika, barulah pasien mengalami muntah darah atau bengkak yang menandakan telah terjadi sirosis.</p>\r\n<p>Sejatinya, tak semua penyakit menimbulkan gejala pada awalnya. Keluhan yang muncul malah menandakan bahwa penyakit telah memasuki tahap lanjut, bahkan terminal. Di sinilah pentingnya bagi kita semua untuk waspada dan mau periksa kesehatan. Periksa tekanan darah, kadar gula darah, serta waspada terhadap semua faktor risiko adalah hal sederhana nan esensial mencegah tujuh penyakit di atas. Mengutip pepatah tua, mencegah akan selalu lebih baik daripada mengobati. Itupun kalau penyakitnya bisa diobati&hellip;</p>', 'uploads/Waspadai penyakit stroke.jpg', '“Dok, kok saya dibilang sakit padahal tidak ada keluhan apapun?”\r\n“Dok, kok hasil laboratoriumnya tidak normal padahal saya merasa sehat saja?”\r\n\r\nMungkin sebagian besar dari kita pernah bertanya begitu ketika divonis mengalami suatu penyakit, padahal jasmani kita merasa sehat. '),
(10, 'Anjuran Penting untuk Perawatan Bayi', '<p>.</p>\r\n<ol>\r\n<li><strong>Anda akan membuat anak Anda manja jika sering menggendong mereka.&nbsp;</strong>Bayi yang baru lahir biasanya menangis karena mereka memerlukan sesuatu. Apakah mereka perlu diganti popoknya, lapar atau hanya ingin dipeluk, menenangkan bayi Anda akan sangat membantu mereka merasa aman dan dicintai. Bayi tidak akan bisa menjadi manja. Bahkan makin konsisten Anda memenuhi kebutuhan mereka sebelum mereka berumur 6 bulan, bayi Anda akan menjadi makin jarang menuntut ke depannya.</li>\r\n<li><strong>Jaga ketenangan saat bayi Anda tidur.&nbsp;</strong>Ternyata bayi Anda sebenarnya sering mendengar suara bising ketika mereka masih berada di dalam rahim. Cobalah menyalakan penyedot debu ketika mereka sedang tidur siang. Dengungan mesin bisa saja membuat bayi Anda tidur lebih pulas dan Anda juga bisa sekalian membersihkan rumah.</li>\r\n<li><strong>Berikan bayi Anda jadwal makan yang ketat.&nbsp;</strong>Sebelumnya sering dianjurkan untuk memberi makan bayi setiap empat jam setelah mereka dibawa pulang dari rumah sakit. Kepercayaan bahwa memberi makan bayi hanya ketika mereka lapar akan menganggu kesehatan bayi dan bahkan bisa meningkatkan risiko infeksi usus. Namun sekarang banyak dokter yang menyarankan untuk memberi makan bayi ketika mereka mulai merasa lapar.</li>\r\n</ol>\r\n<p>Anjuran perawatan bayi telah berubah dari waktu ke waktu, akan tetapi satu hal tentang pengasuhan anak yang tetap pasti: Keinginan untuk membuat bayi Anda tetap senang dan sehat. Dan ingatlah: Anda pasti tahu yang paling baik untuk bayi Anda !</p>', 'uploads/newborn-baby-advice.jpg', 'Walaupun keluarga dan teman Anda peduli dan mempunyai niat baik dengan memberi nasihat, akan tetapi bisa saja nasihat mereka bisa menyesatkan. Berikut ini adalah tiga nasihat orang tua yang sudah ketinggalan zaman yang bisa Anda abaikan.'),
(11, 'SISTEM BILANGAN DAN OPERASI PADA KOMPUTER', '<p>SISTEM BILANGAN</p>\r\n<p>System bilangan (number system) adalah&nbsp; suatu cara untuk mewakili besaran dari suatu item fisik. Sistem bilanan yang banyak dipergunakan oleh manusia adalah system biilangan desimal, yaitu sisitem bilangan yang menggunakan 10 macam symbol untuk mewakili suatu besaran.Sistem ini banyak digunakan karena manusia mempunyai sepuluh jari untuk dapat membantu perhitungan. Lain halnya dengan komputer, logika di komputer diwakili oleh bentuk elemen dua keadaan yaitu <em>off</em> (tidak ada arus) dan <em>on </em>(ada arus). Konsep inilah yang dipakai dalam sistem bilangan binary yang mempunyai dua macam nilai&nbsp; untuk mewakili suatu besaran nilai.</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Selain system bilangan biner, komputer juga menggunakan system bilangan octal dan hexadesimal.</p>', 'uploads/8.jpg', 'System bilangan (number system) adalah  suatu cara untuk mewakili besaran dari suatu item fisik. Sistem bilanan yang banyak dipergunakan oleh manusia adalah system biilangan desimal, yaitu sisitem bilangan yang menggunakan 10 macam symbol untuk mewakili suatu besaran.Sistem ini banyak digunakan karena manusia mempunyai sepuluh jari untuk dapat membantu perhitungan.');

-- --------------------------------------------------------

--
-- Table structure for table `daftar_penyakit`
--

CREATE TABLE `daftar_penyakit` (
  `nama_penyakit` varchar(100) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar_penyakit`
--

INSERT INTO `daftar_penyakit` (`nama_penyakit`, `id`) VALUES
('lainnya', 1),
('Kejang demam', 4),
('Tetanus', 5),
('HIV AIDS tanpa komplikasi', 6),
('Tension headache', 7),
('Migren', 8),
('Bells’ palsy', 9),
('Vertigo (Benign paroxysmal positional vertigo)', 10),
('Gangguan somatoform', 11),
('Insomnia', 12),
('Benda asing di konjungtiva', 13),
('Konjungtivitis', 14),
('Perdarahan subkonjungtiva', 15),
('Mata kering', 16),
('Blefaritis', 17),
('Hordeolum', 18),
('Trikiasis', 19),
('Episkleritis', 20),
('Hipermetropia ringan', 21),
('Miopia ringan', 22),
('Astigmatism ringan', 23),
('Presbiopia', 24),
('Buta senja', 25),
('Otitis eksterna', 26),
('Otitis media akut', 27),
('Serumen prop', 28),
('Mabuk perjalanan', 29),
('Furunkel pada hidung', 30),
('Rhinitis akut', 31),
('Rhinitis vasomotor', 32),
('Rhinitis alergika', 33),
('Benda asing', 34),
('Epistaksis', 35),
('Influenza', 36),
('Pertusis', 37),
('Faringitis', 38),
('Tonsilitis', 39),
('Laringitis', 40),
('Asma bronkial', 41),
('Bronkitis akut', 42),
('Pneumonia, bronkopneumonia', 43),
('Tuberkulosis paru tanpa komplikasi', 44),
('Hipertensi esensial', 45),
('Kandidiasis mulut', 46),
('Ulkus mulut (aptosa, herpes)', 47),
('Parotitis', 48),
('Infeksi pada umbilikus', 49),
('Gastritis', 50),
('Gastroenteritis (termasuk kolera, giardiasis)', 51),
('Refluks gastroesofagus', 52),
('Demam tifoid', 53),
('Intoleransi makanan', 54),
('Alergi makanan', 55),
('Keracunan makanan', 56),
('Penyakit cacing tambang', 57),
('Strongiloidiasis', 58),
('Askariasis', 59),
('Skistosomiasis', 60),
('Taeniasis', 61),
('Hepatitis A', 62),
('Disentri basiler, disentri amuba', 63),
('Hemoroid grade 1/2', 64),
('Infeksi saluran kemih', 65),
('Gonore', 66),
('Pielonefritis tanpa komplikasi', 67),
('Fimosis', 68),
('Parafimosis', 69),
('Sindrom duh (discharge) genital (gonore dan nongonore)     ', 70),
('Infeksi saluran kemih bagian bawah', 71),
('Vulvitis', 72),
('Vaginitis', 73),
('Vaginosis bakterialis', 74),
('Salpingitis', 75),
('Kehamilan normal', 76),
('Aborsi spontan komplit', 77),
('Anemia defisiensi besi pada kehamilan', 78),
('Ruptur perineum tingkat 1/2', 79),
('Abses folikel rambut atau kelenjar sebasea', 80),
('Mastitis', 81),
('Cracked nipple', 82),
('Inverted nipple', 83),
('Diabetes melitus tipe 1', 84),
('Diabetes melitus tipe 2', 85),
('Hipoglikemia ringan', 86),
('Malnutrisi energi-protein', 87),
('Defisiensi vitamin', 88),
('Defisiensi mineral', 89),
('Dislipidemia', 90),
('Hiperurisemia', 91),
('Obesitas', 92),
('Anemia defisiensi besi', 93),
('Limfadenitis', 94),
('Demam dengue, DHF', 95),
('Malaria', 96),
('Leptospirosis (tanpa komplikasi)', 97),
('Reaksi anafilaktik', 98),
('Ulkus pada tungkai', 99),
('Lipoma', 100),
('Veruka vulgaris', 101),
('Moluskum kontagiosum', 102),
('Herpes zoster tanpa komplikasi', 103),
('Morbili tanpa komplikasi', 104),
('Varisela tanpa komplikasi', 105),
('Herpes simpleks tanpa komplikasi', 106),
('Impetigo', 107),
('Impetigo ulseratif (ektima)', 108),
('Folikulitis superfisialis', 109),
('Furunkel, karbunkel', 110),
('Eritrasma', 111),
('Erisipelas', 112),
('Skrofuloderma', 113),
('Lepra', 114),
('Sifilis stadium 1 dan 2', 115),
('Tinea kapitis', 116),
('Tinea barbe', 117),
('Tinea fasialis', 118),
('Tinea korporis', 119),
('Tinea manus', 120),
('Tinea unguium', 121),
('Tinea kruris', 122),
('Tinea pedis', 123),
('Pitiriasis vesikolor', 124),
('Kandidosis mukokutan ringan', 125),
('Cutaneus larva migran', 126),
('Filariasis', 127),
('Pedikulosis kapitis', 128),
('Pedikulosis pubis', 129),
('Skabies', 130),
('Reaksi gigitan serangga', 131),
('Dermatitis kontak iritan', 132),
('Dermatitis atopik (kecuali recalcitrant)', 133),
('Dermatitis numularis', 134),
('Napkin eczema', 135),
('Dermatitis seboroik', 136),
('Pitiriasis rosea', 137),
('Akne vulgaris ringan', 138),
('Hidradenitis supuratif', 139),
('Dermatitis perioral', 140),
('Miliaria', 141),
('Urtikaria akut', 142),
('Exanthematous drug eruption, fixed drug eruption', 143),
('Vulnus laseratum, punctum', 144),
('Luka bakar derajat 1 dan 2', 145),
('Kekerasan tumpul', 146),
('Kekerasan tajam', 147);

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `id_dokter` int(11) NOT NULL,
  `id_no_izin` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `alamat_rumah` varchar(255) DEFAULT NULL,
  `alamat_praktik` varchar(255) DEFAULT NULL,
  `nama_dokter` varchar(255) DEFAULT NULL,
  `no_telp` varchar(15) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `id_kota` int(11) NOT NULL,
  `id_provinsi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`id_dokter`, `id_no_izin`, `email`, `alamat_rumah`, `alamat_praktik`, `nama_dokter`, `no_telp`, `password`, `id_kota`, `id_provinsi`, `id_user`, `image`) VALUES
(1, 2, 'faruqfadhil7@gmail.com', 'DSN JADDIH BARAT II SOCAH BKL', 'JL SOEKARNO HATTA BKL', 'sherly', '085859953545', 'frq03051997', 1105, 12, 47, 'uploads/dokter/vsvs.jpg'),
(3, 3, 'dokter2@gmail.com', 'socah', 'bangkalan', 'ainun', '098736372', 'ainun03051997', 3526, 35, 60, ''),
(4, 5, 'edi@gmail.com', 'pangeranan asri bangkalan', 'pangeranan asri', 'edi supratmo', '085859953545', 'frq03051997', 3526, 35, 72, 'uploads/dokter/def_dokter.png'),
(5, 6, 'cp.ubiku@gmail.com', 'keputih gang 3 c sukolilo', 'keputih gang 3 c sukolilo', 'faruq fadhil', '085859953545', 'frq03051997', 3578, 35, 74, 'uploads/dokter/def_dokter.png');

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE `jenis` (
  `id_jenis` int(11) NOT NULL,
  `nama` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`id_jenis`, `nama`) VALUES
(1, 'kabupaten'),
(2, 'kota'),
(3, 'kelurahan'),
(4, 'desa');

-- --------------------------------------------------------

--
-- Table structure for table `kabupaten`
--

CREATE TABLE `kabupaten` (
  `id_kab` int(11) NOT NULL,
  `id_prov` int(11) NOT NULL,
  `nama` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kabupaten`
--

INSERT INTO `kabupaten` (`id_kab`, `id_prov`, `nama`) VALUES
(1101, 11, 'KAB. ACEH SELATAN'),
(1102, 11, 'KAB. ACEH TENGGARA'),
(1103, 11, 'KAB. ACEH TIMUR'),
(1104, 11, 'KAB. ACEH TENGAH'),
(1105, 11, 'KAB. ACEH BARAT'),
(1106, 11, 'KAB. ACEH BESAR'),
(1107, 11, 'KAB. PIDIE'),
(1108, 11, 'KAB. ACEH UTARA'),
(1109, 11, 'KAB. SIMEULUE'),
(1110, 11, 'KAB. ACEH SINGKIL'),
(1111, 11, 'KAB. BIREUEN'),
(1112, 11, 'KAB. ACEH BARAT DAYA'),
(1113, 11, 'KAB. GAYO LUES'),
(1114, 11, 'KAB. ACEH JAYA'),
(1115, 11, 'KAB. NAGAN RAYA'),
(1116, 11, 'KAB. ACEH TAMIANG'),
(1117, 11, 'KAB. BENER MERIAH'),
(1118, 11, 'KAB. PIDIE JAYA'),
(1171, 11, 'KOTA BANDA ACEH'),
(1172, 11, 'KOTA SABANG'),
(1173, 11, 'KOTA LHOKSEUMAWE'),
(1174, 11, 'KOTA LANGSA'),
(1175, 11, 'KOTA SUBULUSSALAM'),
(1201, 12, 'KAB. TAPANULI TENGAH'),
(1202, 12, 'KAB. TAPANULI UTARA'),
(1203, 12, 'KAB. TAPANULI SELATAN'),
(1204, 12, 'KAB. NIAS'),
(1205, 12, 'KAB. LANGKAT'),
(1206, 12, 'KAB. KARO'),
(1207, 12, 'KAB. DELI SERDANG'),
(1208, 12, 'KAB. SIMALUNGUN'),
(1209, 12, 'KAB. ASAHAN'),
(1210, 12, 'KAB. LABUHANBATU'),
(1211, 12, 'KAB. DAIRI'),
(1212, 12, 'KAB. TOBA SAMOSIR'),
(1213, 12, 'KAB. MANDAILING NATAL'),
(1214, 12, 'KAB. NIAS SELATAN'),
(1215, 12, 'KAB. PAKPAK BHARAT'),
(1216, 12, 'KAB. HUMBANG HASUNDUTAN'),
(1217, 12, 'KAB. SAMOSIR'),
(1218, 12, 'KAB. SERDANG BEDAGAI'),
(1219, 12, 'KAB. BATU BARA'),
(1220, 12, 'KAB. PADANG LAWAS UTARA'),
(1221, 12, 'KAB. PADANG LAWAS'),
(1222, 12, 'KAB. LABUHANBATU SELATAN'),
(1223, 12, 'KAB. LABUHANBATU UTARA'),
(1224, 12, 'KAB. NIAS UTARA'),
(1225, 12, 'KAB. NIAS BARAT'),
(1271, 12, 'KOTA MEDAN'),
(1272, 12, 'KOTA PEMATANG SIANTAR'),
(1273, 12, 'KOTA SIBOLGA'),
(1274, 12, 'KOTA TANJUNG BALAI'),
(1275, 12, 'KOTA BINJAI'),
(1276, 12, 'KOTA TEBING TINGGI'),
(1277, 12, 'KOTA PADANGSIDIMPUAN'),
(1278, 12, 'KOTA GUNUNGSITOLI'),
(1301, 13, 'KAB. PESISIR SELATAN'),
(1302, 13, 'KAB. SOLOK'),
(1303, 13, 'KAB. SIJUNJUNG'),
(1304, 13, 'KAB. TANAH DATAR'),
(1305, 13, 'KAB. PADANG PARIAMAN'),
(1306, 13, 'KAB. AGAM'),
(1307, 13, 'KAB. LIMA PULUH KOTA'),
(1308, 13, 'KAB. PASAMAN'),
(1309, 13, 'KAB. KEPULAUAN MENTAWAI'),
(1310, 13, 'KAB. DHARMASRAYA'),
(1311, 13, 'KAB. SOLOK SELATAN'),
(1312, 13, 'KAB. PASAMAN BARAT'),
(1371, 13, 'KOTA PADANG'),
(1372, 13, 'KOTA SOLOK'),
(1373, 13, 'KOTA SAWAHLUNTO'),
(1374, 13, 'KOTA PADANG PANJANG'),
(1375, 13, 'KOTA BUKITTINGGI'),
(1376, 13, 'KOTA PAYAKUMBUH'),
(1377, 13, 'KOTA PARIAMAN'),
(1401, 14, 'KAB. KAMPAR'),
(1402, 14, 'KAB. INDRAGIRI HULU'),
(1403, 14, 'KAB. BENGKALIS'),
(1404, 14, 'KAB. INDRAGIRI HILIR'),
(1405, 14, 'KAB. PELALAWAN'),
(1406, 14, 'KAB. ROKAN HULU'),
(1407, 14, 'KAB. ROKAN HILIR'),
(1408, 14, 'KAB. SIAK'),
(1409, 14, 'KAB. KUANTAN SINGINGI'),
(1410, 14, 'KAB. KEPULAUAN MERANTI'),
(1471, 14, 'KOTA PEKANBARU'),
(1472, 14, 'KOTA DUMAI'),
(1501, 15, 'KAB. KERINCI'),
(1502, 15, 'KAB. MERANGIN'),
(1503, 15, 'KAB. SAROLANGUN'),
(1504, 15, 'KAB. BATANGHARI'),
(1505, 15, 'KAB. MUARO JAMBI'),
(1506, 15, 'KAB. TANJUNG JABUNG BARAT'),
(1507, 15, 'KAB. TANJUNG JABUNG TIMUR'),
(1508, 15, 'KAB. BUNGO'),
(1509, 15, 'KAB. TEBO'),
(1571, 15, 'KOTA JAMBI'),
(1572, 15, 'KOTA SUNGAI PENUH'),
(1601, 16, 'KAB. OGAN KOMERING ULU'),
(1602, 16, 'KAB. OGAN KOMERING ILIR'),
(1603, 16, 'KAB. MUARA ENIM'),
(1604, 16, 'KAB. LAHAT'),
(1605, 16, 'KAB. MUSI RAWAS'),
(1606, 16, 'KAB. MUSI BANYUASIN'),
(1607, 16, 'KAB. BANYUASIN'),
(1608, 16, 'KAB. OGAN KOMERING ULU TIMUR'),
(1609, 16, 'KAB. OGAN KOMERING ULU SELATAN'),
(1610, 16, 'KAB. OGAN ILIR'),
(1611, 16, 'KAB. EMPAT LAWANG'),
(1612, 16, 'KAB. PENUKAL ABAB LEMATANG ILIR'),
(1613, 16, 'KAB. MUSI RAWAS UTARA'),
(1671, 16, 'KOTA PALEMBANG'),
(1672, 16, 'KOTA PAGAR ALAM'),
(1673, 16, 'KOTA LUBUK LINGGAU'),
(1674, 16, 'KOTA PRABUMULIH'),
(1701, 17, 'KAB. BENGKULU SELATAN'),
(1702, 17, 'KAB. REJANG LEBONG'),
(1703, 17, 'KAB. BENGKULU UTARA'),
(1704, 17, 'KAB. KAUR'),
(1705, 17, 'KAB. SELUMA'),
(1706, 17, 'KAB. MUKO MUKO'),
(1707, 17, 'KAB. LEBONG'),
(1708, 17, 'KAB. KEPAHIANG'),
(1709, 17, 'KAB. BENGKULU TENGAH'),
(1771, 17, 'KOTA BENGKULU'),
(1801, 18, 'KAB. LAMPUNG SELATAN'),
(1802, 18, 'KAB. LAMPUNG TENGAH'),
(1803, 18, 'KAB. LAMPUNG UTARA'),
(1804, 18, 'KAB. LAMPUNG BARAT'),
(1805, 18, 'KAB. TULANG BAWANG'),
(1806, 18, 'KAB. TANGGAMUS'),
(1807, 18, 'KAB. LAMPUNG TIMUR'),
(1808, 18, 'KAB. WAY KANAN'),
(1809, 18, 'KAB. PESAWARAN'),
(1810, 18, 'KAB. PRINGSEWU'),
(1811, 18, 'KAB. MESUJI'),
(1812, 18, 'KAB. TULANG BAWANG BARAT'),
(1813, 18, 'KAB. PESISIR BARAT'),
(1871, 18, 'KOTA BANDAR LAMPUNG'),
(1872, 18, 'KOTA METRO'),
(1901, 19, 'KAB. BANGKA'),
(1902, 19, 'KAB. BELITUNG'),
(1903, 19, 'KAB. BANGKA SELATAN'),
(1904, 19, 'KAB. BANGKA TENGAH'),
(1905, 19, 'KAB. BANGKA BARAT'),
(1906, 19, 'KAB. BELITUNG TIMUR'),
(1971, 19, 'KOTA PANGKAL PINANG'),
(2101, 21, 'KAB. BINTAN'),
(2102, 21, 'KAB. KARIMUN'),
(2103, 21, 'KAB. NATUNA'),
(2104, 21, 'KAB. LINGGA'),
(2105, 21, 'KAB. KEPULAUAN ANAMBAS'),
(2171, 21, 'KOTA BATAM'),
(2172, 21, 'KOTA TANJUNG PINANG'),
(3101, 31, 'KAB. ADM. KEP. SERIBU'),
(3171, 31, 'KOTA ADM. JAKARTA PUSAT'),
(3172, 31, 'KOTA ADM. JAKARTA UTARA'),
(3173, 31, 'KOTA ADM. JAKARTA BARAT'),
(3174, 31, 'KOTA ADM. JAKARTA SELATAN'),
(3175, 31, 'KOTA ADM. JAKARTA TIMUR'),
(3201, 32, 'KAB. BOGOR'),
(3202, 32, 'KAB. SUKABUMI'),
(3203, 32, 'KAB. CIANJUR'),
(3204, 32, 'KAB. BANDUNG'),
(3205, 32, 'KAB. GARUT'),
(3206, 32, 'KAB. TASIKMALAYA'),
(3207, 32, 'KAB. CIAMIS'),
(3208, 32, 'KAB. KUNINGAN'),
(3209, 32, 'KAB. CIREBON'),
(3210, 32, 'KAB. MAJALENGKA'),
(3211, 32, 'KAB. SUMEDANG'),
(3212, 32, 'KAB. INDRAMAYU'),
(3213, 32, 'KAB. SUBANG'),
(3214, 32, 'KAB. PURWAKARTA'),
(3215, 32, 'KAB. KARAWANG'),
(3216, 32, 'KAB. BEKASI'),
(3217, 32, 'KAB. BANDUNG BARAT'),
(3218, 32, 'KAB. PANGANDARAN'),
(3271, 32, 'KOTA BOGOR'),
(3272, 32, 'KOTA SUKABUMI'),
(3273, 32, 'KOTA BANDUNG'),
(3274, 32, 'KOTA CIREBON'),
(3275, 32, 'KOTA BEKASI'),
(3276, 32, 'KOTA DEPOK'),
(3277, 32, 'KOTA CIMAHI'),
(3278, 32, 'KOTA TASIKMALAYA'),
(3279, 32, 'KOTA BANJAR'),
(3301, 33, 'KAB. CILACAP'),
(3302, 33, 'KAB. BANYUMAS'),
(3303, 33, 'KAB. PURBALINGGA'),
(3304, 33, 'KAB. BANJARNEGARA'),
(3305, 33, 'KAB. KEBUMEN'),
(3306, 33, 'KAB. PURWOREJO'),
(3307, 33, 'KAB. WONOSOBO'),
(3308, 33, 'KAB. MAGELANG'),
(3309, 33, 'KAB. BOYOLALI'),
(3310, 33, 'KAB. KLATEN'),
(3311, 33, 'KAB. SUKOHARJO'),
(3312, 33, 'KAB. WONOGIRI'),
(3313, 33, 'KAB. KARANGANYAR'),
(3314, 33, 'KAB. SRAGEN'),
(3315, 33, 'KAB. GROBOGAN'),
(3316, 33, 'KAB. BLORA'),
(3317, 33, 'KAB. REMBANG'),
(3318, 33, 'KAB. PATI'),
(3319, 33, 'KAB. KUDUS'),
(3320, 33, 'KAB. JEPARA'),
(3321, 33, 'KAB. DEMAK'),
(3322, 33, 'KAB. SEMARANG'),
(3323, 33, 'KAB. TEMANGGUNG'),
(3324, 33, 'KAB. KENDAL'),
(3325, 33, 'KAB. BATANG'),
(3326, 33, 'KAB. PEKALONGAN'),
(3327, 33, 'KAB. PEMALANG'),
(3328, 33, 'KAB. TEGAL'),
(3329, 33, 'KAB. BREBES'),
(3371, 33, 'KOTA MAGELANG'),
(3372, 33, 'KOTA SURAKARTA'),
(3373, 33, 'KOTA SALATIGA'),
(3374, 33, 'KOTA SEMARANG'),
(3375, 33, 'KOTA PEKALONGAN'),
(3376, 33, 'KOTA TEGAL'),
(3401, 34, 'KAB. KULON PROGO'),
(3402, 34, 'KAB. BANTUL'),
(3403, 34, 'KAB. GUNUNG KIDUL'),
(3404, 34, 'KAB. SLEMAN'),
(3471, 34, 'KOTA YOGYAKARTA'),
(3501, 35, 'KAB. PACITAN'),
(3502, 35, 'KAB. PONOROGO'),
(3503, 35, 'KAB. TRENGGALEK'),
(3504, 35, 'KAB. TULUNGAGUNG'),
(3505, 35, 'KAB. BLITAR'),
(3506, 35, 'KAB. KEDIRI'),
(3507, 35, 'KAB. MALANG'),
(3508, 35, 'KAB. LUMAJANG'),
(3509, 35, 'KAB. JEMBER'),
(3510, 35, 'KAB. BANYUWANGI'),
(3511, 35, 'KAB. BONDOWOSO'),
(3512, 35, 'KAB. SITUBONDO'),
(3513, 35, 'KAB. PROBOLINGGO'),
(3514, 35, 'KAB. PASURUAN'),
(3515, 35, 'KAB. SIDOARJO'),
(3516, 35, 'KAB. MOJOKERTO'),
(3517, 35, 'KAB. JOMBANG'),
(3518, 35, 'KAB. NGANJUK'),
(3519, 35, 'KAB. MADIUN'),
(3520, 35, 'KAB. MAGETAN'),
(3521, 35, 'KAB. NGAWI'),
(3522, 35, 'KAB. BOJONEGORO'),
(3523, 35, 'KAB. TUBAN'),
(3524, 35, 'KAB. LAMONGAN'),
(3525, 35, 'KAB. GRESIK'),
(3526, 35, 'KAB. BANGKALAN'),
(3527, 35, 'KAB. SAMPANG'),
(3528, 35, 'KAB. PAMEKASAN'),
(3529, 35, 'KAB. SUMENEP'),
(3571, 35, 'KOTA KEDIRI'),
(3572, 35, 'KOTA BLITAR'),
(3573, 35, 'KOTA MALANG'),
(3574, 35, 'KOTA PROBOLINGGO'),
(3575, 35, 'KOTA PASURUAN'),
(3576, 35, 'KOTA MOJOKERTO'),
(3577, 35, 'KOTA MADIUN'),
(3578, 35, 'KOTA SURABAYA'),
(3579, 35, 'KOTA BATU'),
(3601, 36, 'KAB. PANDEGLANG'),
(3602, 36, 'KAB. LEBAK'),
(3603, 36, 'KAB. TANGERANG'),
(3604, 36, 'KAB. SERANG'),
(3671, 36, 'KOTA TANGERANG'),
(3672, 36, 'KOTA CILEGON'),
(3673, 36, 'KOTA SERANG'),
(3674, 36, 'KOTA TANGERANG SELATAN'),
(5101, 51, 'KAB. JEMBRANA'),
(5102, 51, 'KAB. TABANAN'),
(5103, 51, 'KAB. BADUNG'),
(5104, 51, 'KAB. GIANYAR'),
(5105, 51, 'KAB. KLUNGKUNG'),
(5106, 51, 'KAB. BANGLI'),
(5107, 51, 'KAB. KARANGASEM'),
(5108, 51, 'KAB. BULELENG'),
(5171, 51, 'KOTA DENPASAR'),
(5201, 52, 'KAB. LOMBOK BARAT'),
(5202, 52, 'KAB. LOMBOK TENGAH'),
(5203, 52, 'KAB. LOMBOK TIMUR'),
(5204, 52, 'KAB. SUMBAWA'),
(5205, 52, 'KAB. DOMPU'),
(5206, 52, 'KAB. BIMA'),
(5207, 52, 'KAB. SUMBAWA BARAT'),
(5208, 52, 'KAB. LOMBOK UTARA'),
(5271, 52, 'KOTA MATARAM'),
(5272, 52, 'KOTA BIMA'),
(5301, 53, 'KAB. KUPANG'),
(5302, 53, 'KAB TIMOR TENGAH SELATAN'),
(5303, 53, 'KAB. TIMOR TENGAH UTARA'),
(5304, 53, 'KAB. BELU'),
(5305, 53, 'KAB. ALOR'),
(5306, 53, 'KAB. FLORES TIMUR'),
(5307, 53, 'KAB. SIKKA'),
(5308, 53, 'KAB. ENDE'),
(5309, 53, 'KAB. NGADA'),
(5310, 53, 'KAB. MANGGARAI'),
(5311, 53, 'KAB. SUMBA TIMUR'),
(5312, 53, 'KAB. SUMBA BARAT'),
(5313, 53, 'KAB. LEMBATA'),
(5314, 53, 'KAB. ROTE NDAO'),
(5315, 53, 'KAB. MANGGARAI BARAT'),
(5316, 53, 'KAB. NAGEKEO'),
(5317, 53, 'KAB. SUMBA TENGAH'),
(5318, 53, 'KAB. SUMBA BARAT DAYA'),
(5319, 53, 'KAB. MANGGARAI TIMUR'),
(5320, 53, 'KAB. SABU RAIJUA'),
(5321, 53, 'KAB. MALAKA'),
(5371, 53, 'KOTA KUPANG'),
(6101, 61, 'KAB. SAMBAS'),
(6102, 61, 'KAB. MEMPAWAH'),
(6103, 61, 'KAB. SANGGAU'),
(6104, 61, 'KAB. KETAPANG'),
(6105, 61, 'KAB. SINTANG'),
(6106, 61, 'KAB. KAPUAS HULU'),
(6107, 61, 'KAB. BENGKAYANG'),
(6108, 61, 'KAB. LANDAK'),
(6109, 61, 'KAB. SEKADAU'),
(6110, 61, 'KAB. MELAWI'),
(6111, 61, 'KAB. KAYONG UTARA'),
(6112, 61, 'KAB. KUBU RAYA'),
(6171, 61, 'KOTA PONTIANAK'),
(6172, 61, 'KOTA SINGKAWANG'),
(6201, 62, 'KAB. KOTAWARINGIN BARAT'),
(6202, 62, 'KAB. KOTAWARINGIN TIMUR'),
(6203, 62, 'KAB. KAPUAS'),
(6204, 62, 'KAB. BARITO SELATAN'),
(6205, 62, 'KAB. BARITO UTARA'),
(6206, 62, 'KAB. KATINGAN'),
(6207, 62, 'KAB. SERUYAN'),
(6208, 62, 'KAB. SUKAMARA'),
(6209, 62, 'KAB. LAMANDAU'),
(6210, 62, 'KAB. GUNUNG MAS'),
(6211, 62, 'KAB. PULANG PISAU'),
(6212, 62, 'KAB. MURUNG RAYA'),
(6213, 62, 'KAB. BARITO TIMUR'),
(6271, 62, 'KOTA PALANGKARAYA'),
(6301, 63, 'KAB. TANAH LAUT'),
(6302, 63, 'KAB. KOTABARU'),
(6303, 63, 'KAB. BANJAR'),
(6304, 63, 'KAB. BARITO KUALA'),
(6305, 63, 'KAB. TAPIN'),
(6306, 63, 'KAB. HULU SUNGAI SELATAN'),
(6307, 63, 'KAB. HULU SUNGAI TENGAH'),
(6308, 63, 'KAB. HULU SUNGAI UTARA'),
(6309, 63, 'KAB. TABALONG'),
(6310, 63, 'KAB. TANAH BUMBU'),
(6311, 63, 'KAB. BALANGAN'),
(6371, 63, 'KOTA BANJARMASIN'),
(6372, 63, 'KOTA BANJARBARU'),
(6401, 64, 'KAB. PASER'),
(6402, 64, 'KAB. KUTAI KARTANEGARA'),
(6403, 64, 'KAB. BERAU'),
(6407, 64, 'KAB. KUTAI BARAT'),
(6408, 64, 'KAB. KUTAI TIMUR'),
(6409, 64, 'KAB. PENAJAM PASER UTARA'),
(6411, 64, 'KAB. MAHAKAM ULU'),
(6471, 64, 'KOTA BALIKPAPAN'),
(6472, 64, 'KOTA SAMARINDA'),
(6474, 64, 'KOTA BONTANG'),
(6501, 65, 'KAB. BULUNGAN'),
(6502, 65, 'KAB. MALINAU'),
(6503, 65, 'KAB. NUNUKAN'),
(6504, 65, 'KAB. TANA TIDUNG'),
(6571, 65, 'KOTA TARAKAN'),
(7101, 71, 'KAB. BOLAANG MONGONDOW'),
(7102, 71, 'KAB. MINAHASA'),
(7103, 71, 'KAB. KEPULAUAN SANGIHE'),
(7104, 71, 'KAB. KEPULAUAN TALAUD'),
(7105, 71, 'KAB. MINAHASA SELATAN'),
(7106, 71, 'KAB. MINAHASA UTARA'),
(7107, 71, 'KAB. MINAHASA TENGGARA'),
(7108, 71, 'KAB. BOLAANG MONGONDOW UTARA'),
(7109, 71, 'KAB. KEP. SIAU TAGULANDANG BIARO'),
(7110, 71, 'KAB. BOLAANG MONGONDOW TIMUR'),
(7111, 71, 'KAB. BOLAANG MONGONDOW SELATAN'),
(7171, 71, 'KOTA MANADO'),
(7172, 71, 'KOTA BITUNG'),
(7173, 71, 'KOTA TOMOHON'),
(7174, 71, 'KOTA KOTAMOBAGU'),
(7201, 72, 'KAB. BANGGAI'),
(7202, 72, 'KAB. POSO'),
(7203, 72, 'KAB. DONGGALA'),
(7204, 72, 'KAB. TOLI TOLI'),
(7205, 72, 'KAB. BUOL'),
(7206, 72, 'KAB. MOROWALI'),
(7207, 72, 'KAB. BANGGAI KEPULAUAN'),
(7208, 72, 'KAB. PARIGI MOUTONG'),
(7209, 72, 'KAB. TOJO UNA UNA'),
(7210, 72, 'KAB. SIGI'),
(7211, 72, 'KAB. BANGGAI LAUT'),
(7212, 72, 'KAB. MOROWALI UTARA'),
(7271, 72, 'KOTA PALU'),
(7301, 73, 'KAB. KEPULAUAN SELAYAR'),
(7302, 73, 'KAB. BULUKUMBA'),
(7303, 73, 'KAB. BANTAENG'),
(7304, 73, 'KAB. JENEPONTO'),
(7305, 73, 'KAB. TAKALAR'),
(7306, 73, 'KAB. GOWA'),
(7307, 73, 'KAB. SINJAI'),
(7308, 73, 'KAB. BONE'),
(7309, 73, 'KAB. MAROS'),
(7310, 73, 'KAB. PANGKAJENE KEPULAUAN'),
(7311, 73, 'KAB. BARRU'),
(7312, 73, 'KAB. SOPPENG'),
(7313, 73, 'KAB. WAJO'),
(7314, 73, 'KAB. SIDENRENG RAPPANG'),
(7315, 73, 'KAB. PINRANG'),
(7316, 73, 'KAB. ENREKANG'),
(7317, 73, 'KAB. LUWU'),
(7318, 73, 'KAB. TANA TORAJA'),
(7322, 73, 'KAB. LUWU UTARA'),
(7324, 73, 'KAB. LUWU TIMUR'),
(7326, 73, 'KAB. TORAJA UTARA'),
(7371, 73, 'KOTA MAKASSAR'),
(7372, 73, 'KOTA PARE PARE'),
(7373, 73, 'KOTA PALOPO'),
(7401, 74, 'KAB. KOLAKA'),
(7402, 74, 'KAB. KONAWE'),
(7403, 74, 'KAB. MUNA'),
(7404, 74, 'KAB. BUTON'),
(7405, 74, 'KAB. KONAWE SELATAN'),
(7406, 74, 'KAB. BOMBANA'),
(7407, 74, 'KAB. WAKATOBI'),
(7408, 74, 'KAB. KOLAKA UTARA'),
(7409, 74, 'KAB. KONAWE UTARA'),
(7410, 74, 'KAB. BUTON UTARA'),
(7411, 74, 'KAB. KOLAKA TIMUR'),
(7412, 74, 'KAB. KONAWE KEPULAUAN'),
(7413, 74, 'KAB. MUNA BARAT'),
(7414, 74, 'KAB. BUTON TENGAH'),
(7415, 74, 'KAB. BUTON SELATAN'),
(7471, 74, 'KOTA KENDARI'),
(7472, 74, 'KOTA BAU BAU'),
(7501, 75, 'KAB. GORONTALO'),
(7502, 75, 'KAB. BOALEMO'),
(7503, 75, 'KAB. BONE BOLANGO'),
(7504, 75, 'KAB. PAHUWATO'),
(7505, 75, 'KAB. GORONTALO UTARA'),
(7571, 75, 'KOTA GORONTALO'),
(7601, 76, 'KAB. MAMUJU UTARA'),
(7602, 76, 'KAB. MAMUJU'),
(7603, 76, 'KAB. MAMASA'),
(7604, 76, 'KAB. POLEWALI MANDAR'),
(7605, 76, 'KAB. MAJENE'),
(7606, 76, 'KAB. MAMUJU TENGAH'),
(8101, 81, 'KAB. MALUKU TENGAH'),
(8102, 81, 'KAB. MALUKU TENGGARA'),
(8103, 81, 'KAB MALUKU TENGGARA BARAT'),
(8104, 81, 'KAB. BURU'),
(8105, 81, 'KAB. SERAM BAGIAN TIMUR'),
(8106, 81, 'KAB. SERAM BAGIAN BARAT'),
(8107, 81, 'KAB. KEPULAUAN ARU'),
(8108, 81, 'KAB. MALUKU BARAT DAYA'),
(8109, 81, 'KAB. BURU SELATAN'),
(8171, 81, 'KOTA AMBON'),
(8172, 81, 'KOTA TUAL'),
(8201, 82, 'KAB. HALMAHERA BARAT'),
(8202, 82, 'KAB. HALMAHERA TENGAH'),
(8203, 82, 'KAB. HALMAHERA UTARA'),
(8204, 82, 'KAB. HALMAHERA SELATAN'),
(8205, 82, 'KAB. KEPULAUAN SULA'),
(8206, 82, 'KAB. HALMAHERA TIMUR'),
(8207, 82, 'KAB. PULAU MOROTAI'),
(8208, 82, 'KAB. PULAU TALIABU'),
(8271, 82, 'KOTA TERNATE'),
(8272, 82, 'KOTA TIDORE KEPULAUAN'),
(9101, 91, 'KAB. MERAUKE'),
(9102, 91, 'KAB. JAYAWIJAYA'),
(9103, 91, 'KAB. JAYAPURA'),
(9104, 91, 'KAB. NABIRE'),
(9105, 91, 'KAB. KEPULAUAN YAPEN'),
(9106, 91, 'KAB. BIAK NUMFOR'),
(9107, 91, 'KAB. PUNCAK JAYA'),
(9108, 91, 'KAB. PANIAI'),
(9109, 91, 'KAB. MIMIKA'),
(9110, 91, 'KAB. SARMI'),
(9111, 91, 'KAB. KEEROM'),
(9112, 91, 'KAB PEGUNUNGAN BINTANG'),
(9113, 91, 'KAB. YAHUKIMO'),
(9114, 91, 'KAB. TOLIKARA'),
(9115, 91, 'KAB. WAROPEN'),
(9116, 91, 'KAB. BOVEN DIGOEL'),
(9117, 91, 'KAB. MAPPI'),
(9118, 91, 'KAB. ASMAT'),
(9119, 91, 'KAB. SUPIORI'),
(9120, 91, 'KAB. MAMBERAMO RAYA'),
(9121, 91, 'KAB. MAMBERAMO TENGAH'),
(9122, 91, 'KAB. YALIMO'),
(9123, 91, 'KAB. LANNY JAYA'),
(9124, 91, 'KAB. NDUGA'),
(9125, 91, 'KAB. PUNCAK'),
(9126, 91, 'KAB. DOGIYAI'),
(9127, 91, 'KAB. INTAN JAYA'),
(9128, 91, 'KAB. DEIYAI'),
(9171, 91, 'KOTA JAYAPURA'),
(9201, 92, 'KAB. SORONG'),
(9202, 92, 'KAB. MANOKWARI'),
(9203, 92, 'KAB. FAK FAK'),
(9204, 92, 'KAB. SORONG SELATAN'),
(9205, 92, 'KAB. RAJA AMPAT'),
(9206, 92, 'KAB. TELUK BINTUNI'),
(9207, 92, 'KAB. TELUK WONDAMA'),
(9208, 92, 'KAB. KAIMANA'),
(9209, 92, 'KAB. TAMBRAUW'),
(9210, 92, 'KAB. MAYBRAT'),
(9211, 92, 'KAB. MANOKWARI SELATAN'),
(9212, 92, 'KAB. PEGUNUNGAN ARFAK'),
(9271, 92, 'KOTA SORONG');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(100) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `parent` varchar(100) NOT NULL,
  `module` varchar(100) NOT NULL,
  `controller` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `menu`, `icon`, `parent`, `module`, `controller`) VALUES
(1, 'Setting', 'fa fa-gear', '', '2', ''),
(2, 'User', 'fa fa-user', '', '2', 'user'),
(3, 'Role', 'fa fa-exchange', '1', '2', 'role'),
(4, 'Menu', 'fa fa-navicon', '1', '2', 'menu'),
(5, 'Developer Tools', 'fa fa-plug', '', '2', ''),
(6, 'Gii', 'fa fa-glass', '5', '2', 'gii'),
(7, 'Module', 'fa fa-archive', '5', '2', 'module'),
(8, 'Alumni', 'fa fa-user', '', '2', ''),
(9, 'Fakultas', 'fa fa-bookmark', '', '2', 'fakultas'),
(10, 'Jurusan', 'fa fa-bank', '', '2', 'jurusan'),
(11, 'Mata Kuliah', 'fa fa-briefcase', '', '2', 'mata-kuliah'),
(12, 'Data Alumni', 'fa fa-users', '8', '2', 'mahasiswa'),
(13, 'Nilai Mahasiswa', 'fa fa-edit', '8', '2', 'nilai'),
(14, 'Berita', 'fa fa-newspaper-o', '16', '2', 'berita'),
(15, 'Event', 'fa fa-bell', '16', '2', 'event'),
(16, 'Informasi', 'fa fa-newspaper-o', '', '2', ''),
(17, 'Donasi', 'fa fa-hand-paper-o', '', '2', ''),
(18, 'Donasi Rutin', 'fa fa-calendar', '17', '2', 'donasi-rutin'),
(19, 'Donasi Event', 'fa fa-calendar-check-o', '17', '2', 'donasi-event'),
(20, 'Donasi Seminar', 'fa fa-calendar-times-o', '17', '2', 'donasi-seminar'),
(21, 'Kerjasama', 'fa fa-briefcase', '', '2', ''),
(22, 'Kontrak', 'fa fa-book', '21', '2', 'kontrak'),
(23, 'Kegiatan', 'fa fa-calendar', '21', '2', 'kegiatan'),
(24, 'Mitra', 'fa fa-group', '21', '2', 'mitra'),
(25, 'Tahun Ajaran', 'fa fa-calendar-check-o', '21', '2', 'tahun-ajar'),
(26, 'jenis kegiatan', 'fa fa-list-ul', '21', '2', 'jenis-kegiatan'),
(27, 'Beasiswa', 'fa fa-flag-checkered', '21', '2', 'skenario1'),
(29, 'SIP', 'fa fa-align-justify', '', '2', ''),
(30, 'Cari SIP', 'fa fa-search', '29', '2', 'izin-dokter'),
(31, 'Kelola Artikel', 'fa fa-book', '', '2', ''),
(32, 'Tamba Artikel', 'fa fa-plus-circle', '31', '2', 'artikel/create'),
(33, 'Daftar Artikel', 'fa fa-th-list', '31', '2', 'artikel'),
(34, 'Riwayat', 'fa fa-search', '', '2', 'pasien'),
(35, 'Cari Pasien', 'fa fa-search', '34', '2', 'pasien'),
(36, 'Kesehatanku', 'fa fa-heartbeat', '', '2', ''),
(37, 'Grafik', 'fa fa-pie-chart', '36', '2', 'riwayat/grafik');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1479231545),
('m140506_102106_rbac_init', 1479231864);

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `id` int(11) NOT NULL,
  `module` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`id`, `module`) VALUES
(1, 'frontend'),
(2, 'backend');

-- --------------------------------------------------------

--
-- Table structure for table `no_izin_dokter`
--

CREATE TABLE `no_izin_dokter` (
  `id_no_izin` int(11) NOT NULL,
  `no_izin` varchar(25) NOT NULL,
  `keahlian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `no_izin_dokter`
--

INSERT INTO `no_izin_dokter` (`id_no_izin`, `no_izin`, `keahlian`) VALUES
(2, 'D001', 1),
(3, 'D002', 5),
(4, 'D003', 3),
(5, 'D004', 5),
(6, 'D005', 5);

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id_pasien` int(11) NOT NULL,
  `nama_pasien` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_telp_pasien` varchar(15) DEFAULT NULL,
  `gol_darah` varchar(2) DEFAULT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL,
  `nik` bigint(20) NOT NULL,
  `id_kota` int(11) NOT NULL,
  `id_provinsi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id_pasien`, `nama_pasien`, `alamat`, `no_telp_pasien`, `gol_darah`, `jenis_kelamin`, `nik`, `id_kota`, `id_provinsi`, `id_user`, `email`, `password`, `image`) VALUES
(1, 'faruq', 'bangkalan', '085859953545', 'A', 'PRIA', 3526020305970005, 1105, 12, 48, 'ristekbempens@gmail.com', 'frq03051997', 'uploads/pasien/IMG_1183.jpg'),
(2, 'Adhisma', 'tegal mulyorejo', '086756726322', 'O', 'PRIA', 3526020305971235, 1102, 13, 55, 'adhisma@gmail.com', 'adhisma', ''),
(3, 'wahyu abied', 'sidoarjo', '085859953545', 'O', 'PRIA', 3374723832738393, 3515, 35, 73, 'wahyu@gmail.com', 'frq03051997', 'uploads/pasien/def_patient.png'),
(5, 'reza pahlevi', 'bangkalan ', '085859953545', 'O', 'PRIA', 325242635727262, 3526, 35, 78, 'levi@gmail.com', 'frq03051997', 'uploads/pasien/def_patient.png');

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE `provinsi` (
  `id_prov` int(11) NOT NULL,
  `nama` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`id_prov`, `nama`) VALUES
(11, 'Aceh'),
(12, 'Sumatera Utara'),
(13, 'Sumatera Barat'),
(14, 'Riau'),
(15, 'Jambi'),
(16, 'Sumatera Selatan'),
(17, 'Bengkulu'),
(18, 'Lampung'),
(19, 'Kepulauan Bangka Belitung'),
(21, 'Kepulauan Riau'),
(31, 'DKI Jakarta'),
(32, 'Jawa Barat'),
(33, 'Jawa Tengah'),
(34, 'DI Yogyakarta'),
(35, 'Jawa Timur'),
(36, 'Banten'),
(51, 'Bali'),
(52, 'Nusa Tenggara Barat'),
(53, 'Nusa Tenggara Timur'),
(61, 'Kalimantan Barat'),
(62, 'Kalimantan Tengah'),
(63, 'Kalimantan Selatan'),
(64, 'Kalimantan Timur'),
(65, 'Kalimantan Utara'),
(71, 'Sulawesi Utara'),
(72, 'Sulawesi Tengah'),
(73, 'Sulawesi Selatan'),
(74, 'Sulawesi Tenggara'),
(75, 'Gorontalo'),
(76, 'Sulawesi Barat'),
(81, 'Maluku'),
(82, 'Maluku Utara'),
(91, 'Papua Barat'),
(92, 'Papua');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat`
--

CREATE TABLE `riwayat` (
  `id_riwayat` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `id_dokter` int(11) NOT NULL,
  `umur` int(11) DEFAULT NULL,
  `berat_badan` int(11) DEFAULT NULL,
  `tinggi_badan` int(11) DEFAULT NULL,
  `riwayat_kesehatan_keluarga` text,
  `keluhan_utama` text,
  `diagnosa` int(11) NOT NULL,
  `diagnosa_text` text,
  `larangan` text,
  `pemeriksa_penunjang` text,
  `tgl_periksa` date DEFAULT NULL,
  `perawatan` varchar(25) NOT NULL,
  `advis` text NOT NULL,
  `head` text NOT NULL,
  `neck` text NOT NULL,
  `thorax` text NOT NULL,
  `abdomen` text NOT NULL,
  `ekstremitas` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `riwayat`
--

INSERT INTO `riwayat` (`id_riwayat`, `id_pasien`, `id_dokter`, `umur`, `berat_badan`, `tinggi_badan`, `riwayat_kesehatan_keluarga`, `keluhan_utama`, `diagnosa`, `diagnosa_text`, `larangan`, `pemeriksa_penunjang`, `tgl_periksa`, `perawatan`, `advis`, `head`, `neck`, `thorax`, `abdomen`, `ekstremitas`) VALUES
(1, 1, 1, 32, 123, 123, 'tidak ada', 'pusing', 26, '', 'kurangi minum es', 'tidak ada', '2016-11-10', 'rumah', '', '', '', '', '', ''),
(2, 1, 1, 23, 23, 123, 'tidak ada', 'sakit perut', 37, '', 'tidak boleh merokok', 'tidak ada', '2017-10-11', 'rumah', '', '', '', '', '', ''),
(3, 1, 1, 33, 123, 123, 'tidak ada', 'sakit nyeri', 16, '', 'tidak boleh karbohidrat', 'tidak ada', '2017-10-12', 'rumah', '', '', '', '', '', ''),
(4, 1, 1, 22, 123, 123, 'tidak ada', 'mules', 46, '', 'tidak boleh konsumsi gula', 'tidak ada', '2017-11-13', 'rumah', '', '', '', '', '', ''),
(5, 1, 1, 31, 123, 123, 'tidak ada', 'nyeri tulang', 56, '', 'tidak boleh memakan nasi', 'tidak ada', '2017-11-11', 'rumah', '', '', '', '', '', ''),
(6, 1, 1, 44, 123, 123, 'tidak ada', 'mual,panas', 66, '', 'tidak boleh konsumsi lemak', 'tidak ada', '2017-12-14', 'rumah', '', '', '', '', '', ''),
(7, 1, 1, 34, 123, 123, 'tidak ada', 'panas,batuk berdahak', 16, '', 'tidak boleh konsumsi junk food', 'tidak ada', '2017-10-16', 'rumah', '', '', '', '', '', ''),
(8, 1, 1, 23, 123, 123, 'tidak ada', 'panas,batuk', 76, '', 'tidak boleh konsumsi gula', 'tidak ada', '2017-01-15', 'rumah', '', '', '', '', '', ''),
(9, 1, 1, 23, 123, 123, 'tidak ada', 'rahang nyeri', 16, '', 'tidak boleh karbohidrat', 'tidak ada', '2017-02-17', 'rumah', '', '', '', '', '', ''),
(10, 1, 1, 23, 123, 123, 'tidak ada', 'kepala sakit sebelah', 16, '', 'kurangi bergadang', 'tidak ada', '2017-03-18', 'rumah', '', '', '', '', '', ''),
(11, 1, 1, 23, 123, 123, 'tidak ada', 'rasa nyeri di dada', 36, '', 'tidak boleh memakan nasi', 'tidak ada', '2017-02-19', 'rumah', '', '', '', '', '', ''),
(12, 1, 1, 23, 123, 123, 'tidak ada', 'mata memerah', 16, '', 'tidak boleh konsumsi gula', 'tidak ada', '2017-10-20', 'rumah', '', '', '', '', '', ''),
(13, 1, 1, 23, 123, 123, 'tidak ada', 'sakit kepala sebelah', 26, '', 'tidak boleh karbohidrat', 'tidak ada', '2017-10-21', 'rumah', '', '', '', '', '', ''),
(14, 1, 1, 23, 123, 123, 'tidak ada', 'badan nyeri semua', 56, '', 'tidak boleh memakan nasi', 'tidak ada', '2017-10-22', 'rumah', '', '', '', '', '', ''),
(15, 1, 1, 23, 123, 123, 'tidak ada', 'perut kembung', 76, '', 'kurangi bergadang', 'tidak ada', '2017-11-10', 'rumah', '', '', '', '', '', ''),
(16, 1, 1, 23, 123, 123, 'tidak ada', 'demam,batuk berdahak', 66, '', 'tidak boleh karbohidrat', 'tidak ada', '2017-12-10', 'rumah', '', '', '', '', '', ''),
(17, 1, 1, 23, 123, 123, 'tidak ada', 'mual dan demam', 86, '', 'tidak boleh konsumsi gula', 'tidak ada', '2017-05-10', 'rumah', '', '', '', '', '', ''),
(18, 1, 1, 23, 123, 123, 'tidak ada', 'muntah muntah', 36, '', 'tidak boleh memakan nasi', 'tidak ada', '2017-06-10', 'rumah', '', '', '', '', '', ''),
(19, 1, 1, 23, 123, 123, 'tidak ada', 'mual dan muntah', 86, '', 'tidak boleh karbohidrat', 'tidak ada', '2017-01-10', 'rumah', '', '', '', '', '', ''),
(20, 1, 1, 23, 123, 123, 'tidak ada', 'rambut rontok', 16, '', 'kurangi bergadang', 'tidak ada', '2017-02-02', 'rumah', '', '', '', '', '', ''),
(21, 1, 1, 23, 123, 123, 'tidak ada', 'panas dan demam', 36, '', 'tidak boleh karbohidrat', 'tidak ada', '2017-02-03', 'rumah', '', '', '', '', '', ''),
(22, 1, 1, 23, 123, 123, 'tidak ada', 'demam tinggi', 56, '', 'tidak boleh memakan nasi', 'tidak ada', '2017-02-14', 'rumah', '', '', '', '', '', ''),
(23, 1, 1, 23, 123, 123, 'tidak ada', 'demam tinggi', 16, '', 'tidak boleh karbohidrat', 'tidak ada', '2017-11-16', 'rumah', '', '', '', '', '', ''),
(24, 1, 1, 23, 123, 123, 'tidak ada', 'menggigil', 86, '', 'tidak boleh konsumsi gula', 'tidak ada', '2017-04-17', 'rumah', '', '', '', '', '', ''),
(25, 1, 1, 23, 123, 123, 'tidak ada', 'demam dan menggigil', 26, '', 'tidak boleh memakan nasi', 'tidak ada', '2017-10-06', 'rumah', '', '', '', '', '', ''),
(26, 1, 1, 23, 123, 123, 'tidak ada', 'pusing kepala sebelah', 56, '', 'kurangi bergadang', 'tidak ada', '2017-10-07', 'rumah', '', '', '', '', '', ''),
(27, 1, 1, 23, 123, 123, 'tidak ada', 'pusing seluruh kepala', 76, '', 'tidak boleh konsumsi gula', 'tidak ada', '2017-10-09', 'rumah', '', '', '', '', '', ''),
(28, 1, 1, 23, 123, 123, 'tidak ada', 'demam', 66, '', 'tidak boleh memakan nasi', 'tidak ada', '2017-10-30', 'rumah', '', '', '', '', '', ''),
(29, 1, 1, 23, 123, 123, 'tidak ada', 'sakit perut', 67, '', 'tidak boleh karbohidrat', 'tidak ada', '2017-10-27', 'rumah', '', '', '', '', '', ''),
(30, 1, 1, 23, 123, 123, 'tidak ada', 'rambut rontok', 68, '', 'kurangi bergadang', 'tidak ada', '2017-01-15', 'rumah', '', '', '', '', '', ''),
(31, 1, 1, 23, 123, 123, 'tidak ada', 'demam', 68, '', 'tidak boleh konsumsi gula', 'tidak ada', '2017-04-27', 'rumah', '', '', '', '', '', ''),
(32, 1, 1, 23, 123, 123, 'tidak ada', 'rambut rontok', 63, '', 'kurangi bergadang', 'tidak ada', '2017-06-23', 'rumah', '', '', '', '', '', ''),
(33, 1, 1, 23, 123, 123, 'tidak ada', 'demam', 61, '', 'tidak boleh konsumsi gula', 'tidak ada', '2017-08-26', 'rumah', '', '', '', '', '', ''),
(34, 1, 1, 23, 123, 123, 'tidak ada', 'sakit perut', 64, '', 'tidak boleh memakan nasi', 'tidak ada', '2017-10-27', 'rumah', '', '', '', '', '', ''),
(35, 1, 1, 23, 123, 123, 'tidak ada', 'rasa nyeri di dada', 46, '', 'tidak boleh karbohidrat', 'tidak ada', '2017-10-29', 'rumah', '', '', '', '', '', ''),
(36, 1, 1, 23, 123, 123, 'tidak ada', 'demam', 36, '', 'tidak boleh memakan nasi', 'tidak ada', '2017-10-25', 'rumah', '', '', '', '', '', ''),
(37, 1, 1, 23, 123, 123, 'tidak ada', 'rambut rontok', 26, '', 'kurangi bergadang', 'tidak ada', '2017-07-18', 'rumah', '', '', '', '', '', ''),
(38, 1, 1, 23, 123, 123, 'tidak ada', 'rasa nyeri di dada', 16, '', 'kurangi minum es', 'tidak ada', '2017-06-19', 'rumah', '', '', '', '', '', ''),
(39, 1, 1, 23, 123, 123, 'tidak ada', 'demam', 67, '', 'tidak boleh konsumsi gula', 'tidak ada', '2017-05-20', 'rumah', '', '', '', '', '', ''),
(40, 1, 1, 23, 123, 123, 'tidak ada', 'rambut rontok', 66, '', 'kurangi bergadang', 'tidak ada', '2017-04-20', 'rumah', '', '', '', '', '', ''),
(41, 1, 1, 23, 123, 123, 'tidak ada', 'rasa nyeri di dada', 65, '', 'kurangi minum es', 'tidak ada', '2017-03-21', 'rumah', '', '', '', '', '', ''),
(42, 1, 1, 23, 123, 123, 'tidak ada', 'demam', 64, '', 'tidak boleh memakan nasi', 'tidak ada', '2017-02-22', 'rumah', '', '', '', '', '', ''),
(43, 1, 1, 23, 123, 123, 'tidak ada', 'sakit perut', 6, '', 'tidak boleh konsumsi gula', 'tidak ada', '2017-10-23', 'rumah', '', '', '', '', '', ''),
(44, 1, 1, 23, 123, 123, 'tidak ada', 'demam', 26, '', 'kurangi minum es', 'tidak ada', '2017-11-24', 'rumah', '', '', '', '', '', ''),
(45, 1, 1, 23, 123, 123, 'tidak ada', 'rasa nyeri di dada', 16, '', 'tidak boleh memakan nasi', 'tidak ada', '2017-10-26', 'rumah', '', '', '', '', '', ''),
(46, 1, 1, 23, 123, 123, 'tidak ada', 'demam', 36, '', 'kurangi bergadang', 'tidak ada', '2018-10-29', 'rumah', '', '', '', '', '', ''),
(47, 1, 1, 23, 123, 123, 'tidak ada', 'rasa nyeri di dada', 26, '', 'kurangi minum es', 'tidak ada', '2017-10-30', 'rumah', '', '', '', '', '', ''),
(48, 1, 1, 23, 123, 123, 'tidak ada', 'demam', 16, '', 'tidak boleh memakan nasi', 'tidak ada', '2018-10-12', 'rumah', '', '', '', '', '', ''),
(49, 1, 1, 23, 123, 123, 'tidak ada', 'rasa nyeri di dada', 65, '', 'tidak boleh karbohidrat', 'tidak ada', '2017-10-12', 'rumah', '', '', '', '', '', ''),
(50, 1, 1, 23, 123, 123, 'tidak ada', 'sakit perut', 6, '', 'tidak boleh konsumsi gula', 'tidak ada', '2017-10-27', 'rumah', '', '', '', '', '', ''),
(51, 1, 1, 23, 123, 123, 'tidak ada', 'demam', 63, '', 'tidak boleh memakan nasi', 'tidak ada', '2018-10-29', 'rumah', '', '', '', '', '', ''),
(52, 1, 1, 23, 123, 123, 'tidak ada', 'rasa nyeri di dada', 62, '', 'kurangi minum es', 'tidak ada', '2017-10-26', 'rumah', '', '', '', '', '', ''),
(53, 1, 1, 23, 123, 123, 'tidak ada', 'demam', 61, '', 'kurangi bergadang', 'tidak ada', '2017-10-26', 'rumah', '', '', '', '', '', ''),
(54, 1, 1, 23, 123, 123, 'tidak ada', 'rasa nyeri di dada', 96, '', 'tidak boleh karbohidrat', 'tidak ada', '2017-10-25', 'rumah', '', '', '', '', '', ''),
(55, 1, 1, 23, 123, 123, 'tidak ada', 'demam', 86, '', 'tidak boleh memakan nasi', 'tidak ada', '2018-10-28', 'rumah', '', '', '', '', '', ''),
(56, 1, 1, 23, 123, 123, 'tidak ada', 'rasa nyeri di dada', 76, '', 'tidak boleh karbohidrat', 'tidak ada', '2017-10-20', 'rumah', '', '', '', '', '', ''),
(57, 1, 1, 23, 123, 123, 'tidak ada', 'demam', 66, '', 'kurangi bergadang', 'tidak ada', '2017-10-21', 'rumah', '', '', '', '', '', ''),
(58, 1, 1, 23, 123, 123, 'tidak ada', 'sakit perut', 6, '', 'tidak boleh karbohidrat', 'tidak ada', '2018-10-22', 'rumah', '', '', '', '', '', ''),
(59, 1, 1, 23, 123, 123, 'tidak ada', 'demam', 56, '', 'tidak boleh memakan nasi', 'tidak ada', '2017-10-23', 'rumah', '', '', '', '', '', ''),
(60, 1, 1, 23, 123, 123, 'tidak ada', 'rasa nyeri di dada', 16, '', 'kurangi minum es', 'tidak ada', '2017-10-22', 'rumah', '', '', '', '', '', ''),
(61, 1, 1, 23, 123, 123, 'tidak ada', 'demam', 56, '', 'tidak boleh konsumsi gula', 'tidak ada', '2018-10-21', 'rumah', '', '', '', '', '', ''),
(62, 1, 1, 23, 123, 123, 'tidak ada', 'rasa nyeri di dada', 46, '', 'kurangi bergadang', 'tidak ada', '2018-10-23', 'rumah', '', '', '', '', '', ''),
(63, 1, 1, 23, 123, 123, 'tidak ada', 'demam', 36, '', 'tidak boleh memakan nasi', 'tidak ada', '2018-10-27', 'rumah', '', '', '', '', '', ''),
(64, 1, 1, 23, 123, 123, 'tidak ada', 'sakit perut', 6, '', 'kurangi bergadang', 'tidak ada', '2017-10-20', 'rumah', '', '', '', '', '', ''),
(65, 1, 1, 23, 123, 123, 'tidak ada', 'rasa nyeri di dada', 16, '', 'tidak boleh memakan nasi', 'tidak ada', '2018-10-29', 'rumah', '', '', '', '', '', ''),
(66, 1, 1, 13, 90, 140, 'tidak ada', 'sakit kepala, pusng', 8, '', 'perbanyak istirahat', 'tidak ada', '2017-12-10', 'dirwayat dirumah', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada'),
(67, 1, 1, 13, 90, 140, 'tidak ada', 'sakit kepala, pusng', 8, '', 'perbanyak istirahat', 'tidak ada', '2017-12-10', 'dirwayat dirumah', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada'),
(68, 1, 1, 33, 180, 120, 'tidak ada', 'pusing sakit kepala', 8, '', 'perbanyak istirahat', 'tidak ada', '2017-12-10', 'rumah', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada'),
(69, 1, 1, 33, 100, 111, 'tidak ada', 'sakit kepala', 7, '', 'istirahat', 'tidak ada', '2017-12-10', 'rumah', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada'),
(70, 1, 1, 22, 130, 140, 'tidak ada', 'sakit perut', 9, '', 'tidak boleh memakan lemak', 'lab scan', '2017-12-10', 'rumah sakit rujukan', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada'),
(71, 1, 1, 23, 111, 123, 'tidak ada', 'sakit perut', 56, '', 'minum air degan', 'tidak ada', '2017-12-10', 'rujukan', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada'),
(72, 1, 1, 23, 111, 123, 'tidak ada', 'sakit perut', 56, '', 'minum air degan', 'tidak ada', '2017-12-10', 'rujukan', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada'),
(73, 1, 1, 33, 130, 122, 'tidak ada', 'sakit perut', 16, '', 'istirahat yang cukup', 'lab', '2017-12-10', 'rumah', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada'),
(74, 1, 1, 23, 33, 130, 'tidak ada', 'kelapa pusing', 10, '', 'istirahat yang cukup', 'tidak ada', '2017-12-10', 'rujukan rs', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada'),
(75, 1, 1, 23, 33, 1111, 'tidak ada', 'sakit kepala', 8, '', 'istirahat', 'hasil lab', '2017-12-10', 'rujuk rs', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada'),
(76, 1, 1, 23, 33, 111, 'tidak ada', 'sakit kepala', 8, '', 'Rawat inap', 'tidak ada', '2017-12-10', 'menuju rs', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada'),
(77, 1, 1, 22, 65, 77, 'tidak ada', 'sakit perut', 5, NULL, 'istirahat', 'labs', '2017-12-12', 'rumah', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada'),
(78, 1, 1, 122, 23, 33, 'gula', 'pusing,mual', 1, NULL, 'istirahat', 'hasil lab', '2017-12-12', 'rujukan rs', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada'),
(79, 2, 1, 120, 30, 100, 'tidak ada', 'sakit kepala', 1, 'sakit perut biasa', 'istirahat saja', 'labs', '2017-12-12', 'rujukan rs', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada'),
(80, 2, 1, 20, 30, 177, 'mag', 'sakit perut akut', 56, '', 'minum degan ijo', 'labs', '2017-12-12', 'istirahat dirumah', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada'),
(81, 5, 4, 20, 80, 165, 'tidak ada', 'sakit perut, mual, badan meriang', 56, '', 'meminum air putih yang banyak', 'tidak ada', '2017-12-19', 'istirahat dirumah', 'tidak ada gejala', 'tidak ada gejala', 'tidak ada gejala', 'tidak ada gejala', 'tidak ada gejala', 'tidak ada gejala'),
(82, 5, 4, 20, 80, 165, 'tidak ada', 'sakit perut, mual', 56, '', 'meminum air putih yang banyak', 'tidak ada', '2017-12-19', 'istirahat dirumah', 'tidak ada gejala', 'tidak ada gejala', 'tidak ada gejala', 'tidak ada gejala', 'tidak ada gejala', 'tidak ada gejala'),
(83, 1, 1, 20, 60, 170, 'tidak ada', 'sakit kepala,meriang', 8, '', 'istirahat yang cukup', 'tidak ada', '2017-12-19', 'istirahat dirumah', 'tidak ada', 'tidak ada kendala', 'tidak ada kendala', 'tidak ada kendala', 'tidak ada kendala', 'tidak ada kendala'),
(84, 1, 1, 32, 78, 120, 'tidak ada', 'pusing', 8, '', 'istirahat yg cukup', 'lab ronsen', '2018-01-15', 'rujukan rs', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada'),
(85, 1, 1, 55, 89, 87, 'tidak ada', 'sakit perut', 4, '', 'istirahat', 'lab', '2018-01-15', 'rumah sakit rujukan', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada', 'tidak ada');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'developer'),
(2, 'administrator'),
(3, 'user'),
(7, 'pasien'),
(8, 'dokter');

-- --------------------------------------------------------

--
-- Table structure for table `role_menu`
--

CREATE TABLE `role_menu` (
  `id` int(11) NOT NULL,
  `role` int(11) NOT NULL,
  `menu` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_menu`
--

INSERT INTO `role_menu` (`id`, `role`, `menu`) VALUES
(267, 1, 1),
(268, 1, 2),
(269, 1, 3),
(270, 1, 4),
(271, 1, 5),
(272, 1, 6),
(273, 1, 7),
(533, 7, 37),
(532, 7, 36),
(531, 7, 34),
(530, 8, 35),
(529, 8, 34),
(371, 4, 19),
(370, 4, 18),
(369, 4, 17),
(368, 4, 16),
(367, 4, 15),
(366, 4, 14),
(365, 4, 12),
(364, 4, 8),
(355, 5, 8),
(356, 5, 12),
(357, 5, 14),
(358, 5, 15),
(359, 5, 16),
(360, 5, 17),
(361, 5, 18),
(362, 5, 19),
(363, 5, 20),
(372, 4, 20),
(520, 6, 27),
(519, 6, 23),
(518, 6, 22),
(517, 6, 21),
(516, 6, 4),
(528, 8, 33),
(527, 8, 32),
(526, 8, 31),
(525, 2, 33),
(524, 2, 32),
(523, 2, 31),
(522, 2, 30),
(521, 2, 29);

-- --------------------------------------------------------

--
-- Table structure for table `spesialis`
--

CREATE TABLE `spesialis` (
  `spesialis` varchar(70) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spesialis`
--

INSERT INTO `spesialis` (`spesialis`, `id`) VALUES
('Anestesiolog', 1),
('Dokter bedah Cardiovascular', 2),
('Dokter spesialis jantung', 3),
('Spesialis perawatan kritis', 4),
('Dokter kulit', 5),
('Electrophysiologist Atau jalur konduksi jantung', 6),
('Endokrinologi atau sistem kelenjar', 7),
('Darurat dan ahli bedah Trauma', 8),
('Spesialis THT', 9),
('Ahli patologi forensik', 10),
('Ginekolog', 11),
('Ahli pencernaan', 12),
('Geriatrician', 13),
('Ahli genetika', 14),
('Hepatologi', 15),
('Hematologi', 16),
('Dokter Hiperbarik', 17),
('Imunologi', 18),
('Ahli jantung intervensi', 19),
('Spesialis penyakit internal', 20),
('Spesialis penyakit infeksi', 21),
('Spesialis pengobatan', 22),
('Nephrologist', 23),
('Ahli bedah saraf', 24),
('Konsultan neonatologis.', 25),
('Onkologi', 26),
('Dokter kandungan', 27),
('Dokter mata', 28),
('Dokter bedah ortopedi', 29),
('Bedah mulut', 30),
('Pediatri', 31),
('Psikiater', 32),
('Ahli patologi', 33),
('Psikiater', 34),
('Bedah plastik', 35),
('Ahli Radiologi', 36),
('Spesialis radiasi', 37),
('Ahli endokrinologi reproduksi', 38),
('Rheumatologist Atau pengobatan arthritis', 39),
('Dokter bedah umum', 40),
('Dokter spesialis kedokteran olahraga', 41),
('Spesialis saraf tulang belakang', 42),
('Spesialis gangguan tidur', 43),
('Urologi atau sistem reproduksi laki-laki', 44),
('Ahli bedah vaskuler', 45);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `role`) VALUES
(1, 'developer', 'hX2iXXGf-6-jNoAidotAxlhUBZxhgNdS', '$2y$13$0N.Ruj8ZRE8GifJVTvAhyefdXX2qHMYhhlGih1O5Avy/z5WJGugI.', NULL, 'developer@mail.com', 10, 1477197448, 1479234102, 1),
(6, 'admin2', '', '$2y$13$4524Sg22U2WONHguFrL1jOa46Ewu141tTePywQFeQE9sEB47rt8Mu', NULL, 'admin2@its.ac.id', 10, 1502774176, 1502776687, 2),
(46, 'hhis_dokter', '', '$2y$13$nhPuLPza9KqYlxH85yJmue36mHmQUSOmdbLNT/2B8LDh4PL24r1C6', NULL, 'hhis@gmail.com', 10, 1507000611, 1507000611, 8),
(47, 'faruqfadhil7@gmail.com', 'apydnEJfGibjtXyaeKvqDCf_PVASXDcN', '$2y$13$LO6uiP7734OAS/hRfQ.Q7u7VYzoGc3dd8ZW7R9kefBQOmiMtHJEOW', NULL, 'faruqfadhil7@gmail.com', 10, 1507129608, 1507129608, 8),
(48, 'ristekbempens@gmail.com', 'uwroUmK8ho9E0VffCrEwHEk4MKEeuo4J', '$2y$13$o8IlNVxpIKfLKPsft.pg6.c5uFNluyOFVbNLH4J1bFR/7UMaRChe6', NULL, 'ristekbempens@gmail.com', 10, 1507309719, 1507309719, 7),
(55, 'adhisma@gmail.com', 'm4al26mcWB8RqBw-hNDTWxB_Bno0OjZK', '$2y$13$apAAUP2jSFG9TyT95Y.0JeOaJQ4mxr29YkQEaBPsE7Ry5c1kNhqcG', NULL, 'adhisma@gmail.com', 10, 1507653835, 1507653835, 7),
(60, 'dokter2@gmail.com', '2NQdcLuVdbohlgVWZosCCloDQRZ7_Js_', '$2y$13$nEI5Gh6JG/CHTDzOYLW0POoWkAkE4qFmmm17/9ZCJLtjyvaaVv4ey', NULL, 'dokter2@gmail.com', 10, 1507876227, 1507876227, 8),
(72, 'edi@gmail.com', 'ub0AmbtuylgSE8QobfEJPBFnS7zKwg9D', '$2y$13$w9D30a8zhOPfYRhkumU1rebAz6HuzGjQdJ4n3nJdxbmz5RMmQJfPC', NULL, 'edi@gmail.com', 10, 1513578916, 1513578916, 8),
(73, 'wahyu@gmail.com', 'hw8VtG072LI2rsjTm63YcTvjNVOv39hy', '$2y$13$Qxsjj9Nd1aas/Z8DPbakku8VogLXEUUYns/tJL/zeTNi/4dGrV54a', NULL, 'wahyu@gmail.com', 10, 1513579398, 1513579398, 7),
(74, 'cp.ubiku@gmail.com', '79TkNOwzj2D7R10xISjmSvbCpinC60jM', '$2y$13$c3dwR4EC1D6.6PV.x6s0suvCrv54MBjQHSjU5A5RGNVcaZ94RNni2', NULL, 'cp.ubiku@gmail.com', 10, 1513603542, 1513603542, 8),
(78, 'levi@gmail.com', 'rag7wIQrP5BUFRxvBRYOvJ9YjwLyfZPa', '$2y$13$EXTzkvpRB/zr/Y3eEVIs5e33l145QvFt4q0kdFY9Kwom2LlqazopS', NULL, 'levi@gmail.com', 10, 1513617085, 1513617085, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `action`
--
ALTER TABLE `action`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`),
  ADD KEY `menu` (`menu`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indexes for table `daftar_penyakit`
--
ALTER TABLE `daftar_penyakit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id_dokter`),
  ADD KEY `id_no_izin` (`id_no_izin`);

--
-- Indexes for table `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`id_kab`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module` (`module`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `no_izin_dokter`
--
ALTER TABLE `no_izin_dokter`
  ADD PRIMARY KEY (`id_no_izin`),
  ADD UNIQUE KEY `no_izin` (`no_izin`),
  ADD KEY `keahlian` (`keahlian`),
  ADD KEY `keahlian_2` (`keahlian`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`id_prov`);

--
-- Indexes for table `riwayat`
--
ALTER TABLE `riwayat`
  ADD PRIMARY KEY (`id_riwayat`),
  ADD KEY `id_pasien` (`id_pasien`),
  ADD KEY `id_dokter` (`id_dokter`),
  ADD KEY `diagnosa` (`diagnosa`),
  ADD KEY `diagnosa_2` (`diagnosa`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_menu`
--
ALTER TABLE `role_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`),
  ADD KEY `menu` (`menu`);

--
-- Indexes for table `spesialis`
--
ALTER TABLE `spesialis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`),
  ADD KEY `id_3` (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`),
  ADD KEY `role` (`role`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `action`
--
ALTER TABLE `action`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=758;
--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `daftar_penyakit`
--
ALTER TABLE `daftar_penyakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;
--
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
  MODIFY `id_dokter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `no_izin_dokter`
--
ALTER TABLE `no_izin_dokter`
  MODIFY `id_no_izin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id_pasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `riwayat`
--
ALTER TABLE `riwayat`
  MODIFY `id_riwayat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `role_menu`
--
ALTER TABLE `role_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=534;
--
-- AUTO_INCREMENT for table `spesialis`
--
ALTER TABLE `spesialis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `dokter`
--
ALTER TABLE `dokter`
  ADD CONSTRAINT `dokter_ibfk_1` FOREIGN KEY (`id_no_izin`) REFERENCES `no_izin_dokter` (`id_no_izin`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `no_izin_dokter`
--
ALTER TABLE `no_izin_dokter`
  ADD CONSTRAINT `no_izin_dokter_ibfk_1` FOREIGN KEY (`keahlian`) REFERENCES `spesialis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `riwayat`
--
ALTER TABLE `riwayat`
  ADD CONSTRAINT `riwayat_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `riwayat_ibfk_2` FOREIGN KEY (`id_dokter`) REFERENCES `dokter` (`id_dokter`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `riwayat_ibfk_3` FOREIGN KEY (`diagnosa`) REFERENCES `daftar_penyakit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
