class Produk {
  String imageUrl;
  String name;
  String information;
  String price;
  String deskripsi;
  List<Produk> produk;

  Produk({
    this.imageUrl,
    this.name,
    this.information,
    this.price,
    this.produk,
    this.deskripsi,
  });
}

List<Produk> produk = [
  Produk(
    imageUrl: 'assets/nike_abu.png',
    name: 'Nike Abu',
    information: '30%',
    price: 'Rp. 200.000',
    deskripsi: 'cocok dipakau untuk berolahraga'
  ),
  Produk(
    imageUrl: 'assets/nike_abumerah.png',
    name: 'Nike Abu Merah',
    information: '30%',
    price: 'Rp. 300.000',
    deskripsi: 'cocok dipakau untuk berolahraga'
  ),
  Produk(
    imageUrl: 'assets/nike_blackpink.png',
    name: 'Nike Black Pink',
    information: ' ',
    price: 'Rp. 400.000',
    deskripsi: 'cocok dipakau untuk berolahraga'
  ),
  Produk(
    imageUrl: 'assets/nike_hijau.png',
    name: 'Nike Hijau',
    information: ' ',
    price: 'Rp. 500.000',
    deskripsi: 'cocok dipakau untuk berolahraga'
  ),
  Produk(
    imageUrl: 'assets/nike_hijaupink.png',
    name: 'Nike Hijau Pink',
    information: ' ',
    price: 'Rp. 600.000',
    deskripsi: 'cocok dipakau untuk berolahraga'
  ),
  Produk(
    imageUrl: 'assets/nike_hitam.png',
    name: 'Nike Hitam',
    information: ' ',
    price: 'Rp. 700.000',
    deskripsi: 'cocok dipakau untuk berolahraga'
  ),
  Produk(
    imageUrl: 'assets/nike_putih.png',
    name: 'Nike Putih',
    information: ' ',
    price: 'Rp. 800.000',
    deskripsi: 'cocok dipakau untuk berolahraga'
  ),
];
