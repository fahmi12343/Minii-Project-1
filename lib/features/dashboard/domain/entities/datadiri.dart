class DataDiri {
  String? key;
  String? name;
  String? tempat;
  String? jalan;
  DataDiri({
    required this.key,
    required this.name,
    required this.tempat,
    required this.jalan,
  });

  @override
  String toString() => 'DataDiri(key: $key, name: $name, tempat: $tempat, jalan: $jalan)';
}
