class BeveragesData {
  final int id;
  final String name;
  final String desc;
  final String bahan1;
  final String bahan2;
  final String bahan3;
  final String bahan4;
  final String titleBahan1;
  final String titleBahan2;
  final String titleBahan3;
  final String titleBahan4;
  final String titleCara;
  final String cara;
  final String imgUrl;

  const BeveragesData(
      {required this.id,
      required this.name,
      required this.desc,
      required this.bahan1,
      required this.bahan2,
      required this.bahan3,
      required this.bahan4,
      required this.titleBahan1,
      required this.titleBahan2,
      required this.titleBahan3,
      required this.titleBahan4,
      required this.titleCara,
      required this.cara,
      required this.imgUrl});
}

const List<BeveragesData> beveragesData = <BeveragesData>[
  BeveragesData(
      id: 1,
      name: "Es Cendol",
      desc:
          "Minuman satu ini sangat populer dan terkenal di seluruh penjuru Indonesia. Es ini dibuat dari tepung beras dan hunkwe. Lalu biasanya ditambah pewarna makanan hijau yang membuat tampilannya lebih menarik. Penyajiannya dicampur dengan santan yang sudah dicampur daun pandan, gula merah cair, dan es batu.",
      bahan1:
          "• 30 gr tepung beras (asli 70 gr)\n• 60 gr tepung tapioka\n• 90 gr tepung hunkwe (asli 40 gr)\n• Sejumput garam\n• 700 ml air (asli campur jus pandan)\n• Essens pandan",
      bahan2:
          "• 200 gr gula merah\n• 3 sdm gula pasir\n• 200 ml air\n• Daun pandan",
      bahan3:
          "• 200 ml santan kara\n• 300 ml air\n• Sejumput garam\n• Daun pandan",
      bahan4: "",
      titleBahan1: "Bahan",
      titleBahan2: "Kuah Gula Merah",
      titleBahan3: "Kuah Santan",
      titleBahan4: "",
      titleCara: "Cara Membuat",
      cara:
          "1. Membuat cendol: campur tepung dan garam aduk, masukkan air sedikit demi sedikit lalu tambahkan essens pandan, saring agar tekstur tidak kasar.\n2. Masak adonan hingga kental dan matang, siapkan air dalam mangkuk dan beri es batu. Tuang adonan pada cetakan dan tekan di atas air es, hingga habis.\n3. Membuat kuah gula merah: masak semua bahan hingga mencair dan sedikit kental, angkat sisihkan.\n4. Membuat kuah santan: campur semua bahan aduk hingga mendidih. Jangan sampai santan pecah, jika sudah mendidih matikan.\n5. Penyajian: ambil gelas beri air gula, masukkan cendol dan beri kuah, tambahkan es, sajikan.",
      imgUrl:
          "https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2021/09/15/3214084099.jpg"),
  BeveragesData(
      id: 2,
      name: "Es Pisang Ijo",
      desc:
          "Tidak perlu jauh-jauh ke Makassar untuk mendapatkan resep minuman segar tradisional Indonesia yang satu ini, karena Moms sudah bisa membuatnya sendiri di rumah. Terbuat dari pisang raja yang dibalut dengan adonan tepung terigu dan sagu, serta rebusan air pandan yang membuat warnanya menjadi hijau. Penyajiannya tinggal ditambahkan es serut dan sirup manis berwarna merah. Segar!",
      bahan1: "• 14 buah pisang raja kecil",
      bahan2:
          "• 130 gr tepung beras \n• 160 gr terigu \n• 1 sdm tapioka \n• 1 bungkus santan instan 65 ml\n• 3 sdm minyak sayur atau margarin\n• 550 ml air\n• 50 gr gula pasir\n• 1/2 sdt garam\n• Secukupnya pasta pandan",
      bahan3:
          "• 130 gr tepung beras\n• 1000 ml air santan\n• Sekitar 1 sdt gula pasir\n• Sekitar 1 sdt penuh garam\n• Daun pandan",
      bahan4: "",
      titleBahan1: "Bahan",
      titleBahan2: "Bahan Kulit",
      titleBahan3: "Bahan Bubur Bubur Sum Sum",
      titleBahan4: "",
      titleCara: "Cara Membuat",
      cara:
          "1. Kukus pisang sekitar 10 menit, biarkan sebentar, baru buka tutupnya. Tunggu hingga dingin baru kupas kulitnya.\n 2. Campur tepung, gula, garam, aduk rata. Tambahkan air, santan, pasta pandan, dan aduk rata. Saring agar adonan halus.\n 3. Tambahkan minyak sayur atau margarin agar lebih enak. Lalu, aduk-aduk di atas kompor hingga adonan mengental dan kalis. Biarkan hingga hangat-hangat kuku lalu bagi jadi beberapa bagian sesuai banyaknya pisang.\n 4. Ambil 1 bagian adonan kulit. Pipihkan dengan lambaran plastik yang sudah dioles sedikit minyak sayur.\n 5. Ambil pisangnya, bungkus rapat dan rapikan. Lakukan untuk semua pisangnya.\n 6. Setelah itu, bungkus masing-masing pisang dengan daun pisang. Jika tidak ada, bisa juga dengan plastik anti panas.\n 7. Kukus sekitar 20 menit dengan api sedang cenderung kecil.\n 8. Untuk bubur sumsum, campur tepung, air santan, gula dan garam serta beri daun pandan yg diikat agar wangi. Aduk rata agar tidak ada gumpalan, lalu nyalakan kompor dengan api agak kecil.\n 9. Aduk-aduk hingga mengental. Kemudian tes rasa. Biarkan beberapa saat aduk-aduk terus meski sudah mengental.\n 10. Lalu angkat dan tempatkan di wadah agar tidak mudah mencair.\n 11. Beri bubur sum-sum di wadah, tata pisang ijo, beri es batu lalu tuangi sirup pisang ambon atau cocopandan.",
      imgUrl:
          "https://img-global.cpcdn.com/recipes/3ecbd56825c59e49/1200x630cq70/photo.jpg"),
  BeveragesData(
      id: 3,
      name: "Es Kolak Pisang",
      desc:
          "Kolak pisang sangat mudah ditemui di berbagai wilayah di Indonesia menjelang waktu berbuka puasa. Selain itu, resep minuman segar yang satu ini mudah dibuat. Es kolak pisang terdiri dari campuran pisang, ubi, singkong, kolang-kaling, tape, dan lainnya.Dengan campuran santan, sedikit tepung maizena, dan gula merah akan membuatnya semakin nikmat disantap.",
      bahan1: "",
      bahan2: "",
      bahan3: "",
      bahan4: "",
      titleBahan1: "",
      titleBahan2: "",
      titleBahan3: "",
      titleBahan4: "",
      titleCara: "",
      cara: "",
      imgUrl:
          "https://assets.promediateknologi.com/crop/0x0:0x0/x/photo/2021/12/12/417122756.jpg"),
  BeveragesData(
      id: 4,
      name: "Es Selendang Mayang",
      desc:
          "Minuman berbuka puasa satu ini terbuat dari tepung hunkwe yang dibentuk menjadi sebuah adonan cantik. Kemudian disajikan dengan santan yang direbus dengan daun pandan dan gula merah. Nikmat!",
      bahan1: "",
      bahan2: "",
      bahan3: "",
      bahan4: "",
      titleBahan1: "",
      titleBahan2: "",
      titleBahan3: "",
      titleBahan4: "",
      titleCara: "",
      cara: "",
      imgUrl:
          "https://cdn-cas.orami.co.id/parenting/images/resep-es-selendang-mayang_KWElLVn.width-800.jpg"),
  BeveragesData(
      id: 5,
      name: "Es Timun Suri",
      desc:
          "Timun suri adalah buah musiman yang selalu ada di bulan Ramadan. Rasanya yang mirip buah blewah sangat cocok dijadikan minuman berbuka puasa. Terkadang, timun suri juga dijadikan campuran dari sop buah. Timun suri juga bermanfaat bagi kesehatan seperti mengobati panas dalam.",
      bahan1: "",
      bahan2: "",
      bahan3: "",
      bahan4: "",
      titleBahan1: "",
      titleBahan2: "",
      titleBahan3: "",
      titleBahan4: "",
      titleCara: "",
      cara: "",
      imgUrl:
          "https://cdn-cas.orami.co.id/parenting/images/2308552d-landscape.width-800.png"),
  BeveragesData(
      id: 6,
      name: "Es Oyen",
      desc:
          "Resep minuman segar untuk berbuka puasa khas Bandung ini terdiri dari berbagai aneka campuran buah, mulai dari alpukat, hingga durian.",
      bahan1: "",
      bahan2: "",
      bahan3: "",
      bahan4: "",
      titleBahan1: "",
      titleBahan2: "",
      titleBahan3: "",
      titleBahan4: "",
      titleCara: "",
      cara: "",
      imgUrl:
          "http://topwisata.info/wp-content/uploads/2021/04/Es2BOyen2BMinuman2BKhas2BBandung2B252812529.jpg"),
  BeveragesData(
      id: 7,
      name: "Es Kacang Merah",
      desc:
          "Resep minuman segar untuk berbuka puasa yang satu ini khas dari Kota Palembang dan Manado. Namun, keduanya mempunyai penyajian yang berbeda satu sama lain. jika di Palembang, es kacang merah ini disajikan dengan es serut dan siraman sirup merah. Sedangkan di Manado, es kacang merah ini disajikan bersama susu kental manis cokelat dan putih.",
      bahan1: "",
      bahan2: "",
      bahan3: "",
      bahan4: "",
      titleBahan1: "",
      titleBahan2: "",
      titleBahan3: "",
      titleBahan4: "",
      titleCara: "",
      cara: "",
      imgUrl:
          "http://topwisata.info/wp-content/uploads/2020/10/Es2BBrenebon.jpg"),
  BeveragesData(
      id: 8,
      name: "Es Lidah Buaya",
      desc:
          "Pontianak mempunyai resep minuman segar untuk berbuka puasa yang khas yaitu es lidah buaya. Pembuatan es ini sangat mudah dan sederhana karena hanya mencampurkan daging lidah buaya, selasih, es batu, dan perasan jeruk lemon.",
      bahan1: "",
      bahan2: "",
      bahan3: "",
      bahan4: "",
      titleBahan1: "",
      titleBahan2: "",
      titleBahan3: "",
      titleBahan4: "",
      titleCara: "",
      cara: "",
      imgUrl:
          "https://cdn-cas.orami.co.id/parenting/images/es-lidah-buaya_20180602_133950.width-800.jpg"),
];
