class DataDiri {
  String? key;
  String? name;
  String? tempat;
  String? jalan;
  String? jenisKelamin;
  String? tanggalLahir;
  String? provinsi;
  String? kota;
  String? kecamatan;
  String? kelurahan;
  String? rt;
  String? rw;

  DataDiri({
    required this.key,
    required this.name,
    required this.tempat,
    required this.jalan,
    required this.jenisKelamin,
    required this.tanggalLahir,
    required this.provinsi,
    required this.kota,
    required this.kecamatan,
    required this.kelurahan,
    required this.rt,
    required this.rw,
  });

  @override
  String toString() => 'DataDiri(key: $key, name: $name, tempat: $tempat, jalan: $jalan, jenisKelamin: $jenisKelamin, tanggalLahir: $tanggalLahir, provinsi: $provinsi, kota: $kota, kecamatan: $kecamatan, kelurahan: $kelurahan, rt: $rt, rw: $rw)';
}
