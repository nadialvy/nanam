// blueprint plant

class Plant{
  late String name;
  late String desc;
  late String soilType;
  late String water;
  late String rangeTemp;
  late String light;
  late String startPrice;
  late String imageAsset;
  late String imageDetail;

  Plant({
    required this.name,
    required this.desc,
    required this.soilType,
    required this.water,
    required this.rangeTemp,
    required this.light,
    required this.startPrice,
    required this.imageAsset,
    required this.imageDetail,
  });
}

var dataPlant = [
  Plant(
    name: 'Sirih Gading',
    desc: 'Sirih gading menjadi salah satu macam-macam tanaman hias daun yang sedang populer beberapa waktu ini. Sirih gading merupakan tanaman merambat semi-epifit dengan warna hijau yang segar. Sirih gading termasuk tanaman yang mudah dirawat dan bisa ditanam dengan media air.',
    soilType: 'Tanah',
    water: '1L',
    rangeTemp: '29',
    light: 'Sun Light',
    startPrice: 'Rp.30000',
    imageAsset: 'images/sirihgading.png',
    imageDetail: 'images/detail_sirgad.jpg'
  ),
  Plant(
    name: 'Keladi Hias',
    desc: 'Keladi hias termasuk macam-macam tanaman hias yang termasuk dalam jenis Caladium. Saat ini keladi hias banyak dicari para pencinta tanaman hias. Jenis yang paling banyak dicari seperti Caladium Gingerland, Caladium Carolyn Whorton, Caladium Moonlight, Caladium White Christmas, Caladium Freida Hemple, dan masih banyak lagi. Keladi hias termasuk macam-macam tanaman hias yang termasuk dalam jenis Caladium. Saat ini keladi hias banyak dicari para pencinta tanaman hias. Jenis yang paling banyak dicari seperti Caladium Gingerland, Caladium Carolyn Whorton, Caladium Moonlight, Caladium White Christmas, Caladium Freida Hemple, dan masih banyak lagi.  Keladi hias termasuk macam-macam tanaman hias yang termasuk dalam jenis Caladium. Saat ini keladi hias banyak dicari para pencinta tanaman hias. Jenis yang paling banyak dicari seperti Caladium Gingerland, Caladium Carolyn Whorton, Caladium Moonlight, Caladium White Christmas, Caladium Freida Hemple, dan masih banyak lagi.',
    soilType: 'Tanah Gembur',
    water: '0.7L',
    rangeTemp: '27',
    light: 'Neon',
    startPrice: 'Rp.30000',
    imageAsset: 'images/keladihias.png',
    imageDetail: 'images/detail_keladihias.jpg'
  ),
  Plant(
    name: 'Lidah Mertua',
    desc: 'Lidah mertua merupakan salah satu macam-macam tanaman hias daun yang sedang populer. Lidah mertua termasuk tanaman hias yang bisa ditanam dengan media air. Lidah mertua bisa ditanam di atas tanah yang subur dan bisa ditanam di atas tanah yang subur.',
    soilType: 'Tanah',
    water: '2L',
    rangeTemp: '30',
    light: 'HID',
    startPrice: 'Rp.30000',
    imageAsset: 'images/lidahmertua.png',
    imageDetail: 'images/detail_lidahmertua.jpg'
  ),
  Plant(
    name: 'Suplir',
    desc: 'Suplir merupakan salah satu macam-macam tanaman hias daun yang sedang populer. Suplir termasuk tanaman hias yang bisa ditanam dengan media air. Suplir bisa ditanam di atas tanah yang subur dan bisa ditanam di atas tanah yang subur.',
    soilType: 'Tanah',
    water: '1.9L',
    rangeTemp: '26',
    light: 'LED',
    startPrice: 'Rp.30000',
    imageAsset: 'images/suplir.png',
    imageDetail: 'images/detail_suplir.jpg'
  ),
  Plant(
    name: 'Kuping Gajah',
    desc: 'Kuping Gajah atau Anthurium crystallinum merupakan tanaman dengan ciri khas daun lebar dengan tulang daun putih melengkung melebar. Kuping gajah masih berkerabat dengan macam-macam tanaman hias daun lainnya seperti aglaonema, philodendron, keladi hias, dan alokasia.',
    soilType: 'Tanah Gembur',
    water: '3.2L',
    rangeTemp: '29',
    light: 'Sun Light',
    startPrice: 'Rp.30000',
    imageAsset: 'images/kupinggajah.png',
    imageDetail: 'images/detail_kupinggajah.jpg'
  ),
  Plant(
    name: 'Gelombang Cinta',
    desc: 'Gelombang cinta merupakan salah satu macam-macam tanaman hias daun yang sedang populer. Gelombang cinta termasuk tanaman hias yang bisa ditanam dengan media air. Gelombang cinta bisa ditanam di atas tanah yang subur dan bisa ditanam di atas tanah yang subur.',
    soilType: 'Tanah Gembur',
    water: '1.3L',
    rangeTemp: '27',
    light: 'Neon',
    startPrice: 'Rp.30000',
    imageAsset: 'images/gelombangcinta.png',
    imageDetail: 'images/detail_6.jpg' 
  ),
  Plant(
    name: 'Tanduk Rusa',
    desc: 'Tanduk rusa merupakan salah satu macam-macam tanaman hias daun yang sedang populer. Tanduk rusa termasuk tanaman hias yang bisa ditanam dengan media air. Tanduk rusa bisa ditanam di atas tanah yang subur dan bisa ditanam di atas tanah yang subur.',
    soilType: 'Tanah Gembur',
    water: '1L',
    rangeTemp: '32',
    light: 'HID',
    startPrice: 'Rp.30000',
    imageAsset: 'images/tandukrusa.png', 
    imageDetail: 'images/detail_7.jpg'
  ),
  Plant(
    name: 'Pohon dolar',
    desc: 'Pohon dolar merupakan salah satu macam-macam tanaman hias daun yang sedang populer. Pohon dolar termasuk tanaman hias yang bisa ditanam dengan media air. Pohon dolar bisa ditanam di atas tanah yang subur dan bisa ditanam di atas tanah yang subur.',
    soilType: 'Tanah Gembur',
    water: '1L',
    rangeTemp: '30',
    light: 'LED',
    startPrice: 'Rp.30000',
    imageAsset: 'images/pohondolar.png', 
    imageDetail: 'images/detail_8.jpg'
  ),
  Plant(
    name: 'Pucuk Merah',
    desc: 'Pucuk merah merupakan salah satu macam-macam tanaman hias daun yang sedang populer. Pucuk merah termasuk tanaman hias yang bisa ditanam dengan media air. Pucuk merah bisa ditanam di atas tanah yang subur dan bisa ditanam di atas tanah yang subur.',
    soilType: 'Tanah Gembur',
    water: '2.1L',
    rangeTemp: '31',
    light: 'Sun Light',
    startPrice: 'Rp.30000',
    imageAsset: 'images/pucukmerah.png', 
    imageDetail: 'images/detail_9.jpg'
  ),
  Plant(
    name: 'Montsera',
    desc: 'Montsera merupakan salah satu macam-macam tanaman hias daun yang sedang populer. Montsera termasuk tanaman hias yang bisa ditanam dengan media air. Montsera bisa ditanam di atas tanah yang subur dan bisa ditanam di atas tanah yang subur.',
    soilType: 'Tanah Gembur',
    water: '0.4L',
    rangeTemp: '26',
    light: 'Neon',
    startPrice: 'Rp.30000',
    imageAsset: 'images/montsera.png',
    imageDetail: 'images/detail_10.jpg' 
  )
];