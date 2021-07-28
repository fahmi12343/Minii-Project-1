import 'package:mini_project/config/stringresource.dart';
import 'package:flutter/material.dart';
import 'package:mini_project/features/dashboard/presentation/pages/dummy.dart';
import 'package:mini_project/theme/color.dart';
import 'package:mini_project/theme/textstyle.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class PageDataDiri extends StatefulWidget {
  PageDataDiri({Key? key}) : super(key: key);

  @override
  _PageDataDiriState createState() => _PageDataDiriState();
}

class _PageDataDiriState extends State<PageDataDiri> {
  final _formKey = GlobalKey<FormBuilderState>();

  TextEditingController namaController = new TextEditingController();
  TextEditingController tempatController = new TextEditingController();
  TextEditingController jalanController = new TextEditingController();
  TextEditingController getJalanController = new TextEditingController();
  TextEditingController tglController = new TextEditingController();

  var provinsi = ["Jakarta", "Bandung", "Banten"];
  var kota = ["Cengkareng", "Tangerang Selatan", "Cimahi"];
  var kecamatan = ["Cengkareng", "Pamulang"];
  var kelurahan = ["Cengkareng Timur", "Cengkareng Barat"];
  var rt = ["01", "02", "03", "04", "05"];
  var rw = ["001", "002", "003", "004", "005"];

  String jenisKelamin = "";
  String provinsiPertama = "";
  String kotaPertama = "";
  String kecamatanPertama = "";
  String kelurahanPertama = "";
  String rtPertama = "";
  String rwPertama = "";

  String? getProvinsi;
  String? getKota;
  String? getKecamatan;
  String? getKelurahan;
  String? getRt;
  String? getRw;

  void _getData() {
    AlertDialog alertDialog = new AlertDialog(
      content: new Container(
        height: 400.0,
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 8,
            ),
            new Text("Nama Lengkap : ${namaController.text}"),
            SizedBox(
              height: 8,
            ),
            new Text("Jk : ${jenisKelamin}"),
            SizedBox(
              height: 8,
            ),
            new Text("Tempat : ${tempatController.text}"),
            SizedBox(
              height: 8,
            ),
            new Text("Jalan : ${getJalanController.text}"),
            SizedBox(
              height: 8,
            ),
            new Text("Tanggal : ${tglController.text}"),
            SizedBox(
              height: 8,
            ),
            new Text("Provinsi : ${getProvinsi}"),
            SizedBox(
              height: 8,
            ),
            new Text("Kota : ${getKota}"),
            SizedBox(
              height: 8,
            ),
            new Text("Kecamatan : ${getKecamatan}"),
            SizedBox(
              height: 8,
            ),
            new Text("Kelurahan : ${getKelurahan}"),
            SizedBox(
              height: 8,
            ),
            new Text("Rt : ${getRt}"),
            SizedBox(
              height: 8,
            ),
            new Text("Rw : ${getRw}"),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(right: 25, bottom: 8, left: 25),
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0, 4),
                              blurRadius: 5.0)
                        ],
                        gradient: LinearGradient(
                          // begin: Alignment.topLeft,
                          // end: Alignment.bottomRight,
                          stops: [0.0, 1.0],
                          colors: [
                            Colors.redAccent.shade700,
                            Colors.red.shade400,
                          ],
                        ),
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent),
                          // elevation: MaterialStateProperty.all(3),
                          shadowColor:
                              MaterialStateProperty.all(Colors.transparent),
                        ),
                        onPressed: () {},
                        child: Text(
                          StringResources.BTN_SEND_APP_OK,
                          style: TextPalette.btnStyle,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FormBuilder(
        key: _formKey,
        child: ListView(
          children: [
            header(),
            setNama(),
            setJk(),
            setTtl(),
            setAlamatKtp(),
            setJalan(),
            setProvinsi(),
            setKotaKabupaten(),
            setKecamatan(),
            setKelurahanDesa(),
            setRtRw(),
            setAlamatTempatTinggal(),
            setCheckBox(),
            setJalanFix(),
            setProvinsiFix(),
            setKotaKabupatenFix(),
            setKecamatanFix(),
            setKelurahanDesaFix(),
            setRtRwFix(),

            // btn
            setSimpan(),
          ],
        ),
      ),
    );
  }

  Widget header() => Container(
        width: MediaQuery.of(context).copyWith().size.height / 1.5,
        height: 195,
        color: ColorPalette.gray300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (contex) {
                      //   return Dummy();
                      // }));
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: ColorPalette.black,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (contex) {
                      //   return Dummy();
                      // }));
                    },
                    child: Text(
                      StringResources.TEXT_APP_TITLE,
                      style: TextStyle(fontSize: 16, color: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Lengkapi Data Diri",
                    style: TextPalette.secondaryTxtStyle,
                  ),
                  Text(
                    "Mohon Untuk Melengkapi Data Diri Anda",
                    style: TextPalette.altTextStyle,
                  ),
                ],
              ),
            )
          ],
        ),
      );

  Widget setNama() => Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 25, left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nama",
                  style: TextPalette.fieldStyle,
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 8,
                ),
                FormBuilderTextField(
                  controller: namaController,
                  name: 'nama',
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorPalette.gray300),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: ColorPalette.gray300,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    fillColor: ColorPalette.gray300,
                    filled: true,
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(context),
                    FormBuilderValidators.maxLength(context, 25),
                  ]),
                ),
              ],
            ),
          ),
        ],
      );

  Widget setJk() => Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 25, left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Jenis Kelamin",
                  style: TextPalette.fieldStyle,
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 8,
                ),
                FormBuilderRadioGroup(
                  decoration: new InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorPalette.gray300),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: ColorPalette.gray300,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                  name: 'jenis_kelamin',
                  validator: FormBuilderValidators.required(context),
                  options: ['Laki - Laki', 'Perempuan']
                      .map((lang) => FormBuilderFieldOption(value: lang))
                      .toList(growable: false),
                  onChanged: (lang) {
                    setState(() {
                      jenisKelamin = lang.toString();
                    });
                  },
                ),
              ],
            ),
          )
        ],
      );

  Widget setTtl() => Padding(
        padding: const EdgeInsets.only(top: 15, left: 25),
        child: Row(
          children: [
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                    // padding: const EdgeInsets.fromLTRB(left, top, right, bottom)
                    child: Text(
                      'Tempat',
                      style: TextPalette.fieldStyle,
                    ),
                  ),
                  FormBuilderTextField(
                    controller: tempatController,
                    name: 'tempat',
                    decoration: new InputDecoration(
                      contentPadding: const EdgeInsets.all(15),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorPalette.gray300),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorPalette.gray300,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      fillColor: ColorPalette.gray300,
                      filled: true,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20.20,
              height: 20.0,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                    // padding: const EdgeInsets.fromLTRB(left, top, right, bottom)
                    child: Text(
                      'Tanggal Lahir',
                      style: TextPalette.fieldStyle,
                    ),
                  ),
                  FormBuilderDateTimePicker(
                    controller: tglController,
                    name: 'date',
                    inputType: InputType.date,
                    decoration: new InputDecoration(
                      suffixIcon: Icon(
                        Icons.date_range,
                        color: Colors.black,
                        size: 30,
                      ),
                      contentPadding: const EdgeInsets.all(15),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorPalette.gray300),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorPalette.gray300,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      fillColor: ColorPalette.gray300,
                      filled: true,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
          ],
        ),
      );

  Widget setAlamatKtp() => Padding(
        padding: const EdgeInsets.only(top: 25, right: 25, left: 25),
        child: Row(
          children: [
            Text(
              'Alamat KTP',
              style: TextPalette.fieldStyle,
            ),
            Expanded(
              child: Center(
                child: Divider(
                  color: ColorPalette.gray300,
                  thickness: 4,
                  indent: 10,
                  endIndent: 0,
                ),
              ),
            )
          ],
        ),
      );

  Widget setJalan() => Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25, right: 25, left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Jalan",
                  style: TextPalette.fieldStyle,
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 8,
                ),
                FormBuilderTextField(
                  controller: jalanController,
                  name: 'jalan',
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorPalette.gray300),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: ColorPalette.gray300,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    fillColor: ColorPalette.gray300,
                    filled: true,
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(context),
                    FormBuilderValidators.maxLength(context, 25),
                  ]),
                ),
              ],
            ),
          ),
        ],
      );

  Widget setProvinsi() => Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 25, left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Provinsi",
                  style: TextPalette.fieldStyle,
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 8,
                ),
                FormBuilderDropdown(
                  name: 'provinsi',
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorPalette.gray300),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: ColorPalette.gray300,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    fillColor: ColorPalette.gray300,
                    filled: true,
                  ),
                  // initialValue: 'Male',
                  allowClear: true,
                  hint: Text('Select Provinsi'),
                  validator: FormBuilderValidators.compose(
                      [FormBuilderValidators.required(context)]),
                  items: provinsi
                      .map((provinsi) => DropdownMenuItem(
                            value: provinsi,
                            child: Text('$provinsi'),
                          ))
                      .toList(),
                  onChanged: (provinsi) {
                    provinsiPertama = provinsi.toString();
                  },
                ),
              ],
            ),
          ),
        ],
      );

  Widget setKotaKabupaten() => Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 25, left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Kota/Kabupaten",
                  style: TextPalette.fieldStyle,
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 8,
                ),
                FormBuilderDropdown(
                  name: 'kota',
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorPalette.gray300),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: ColorPalette.gray300,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    fillColor: ColorPalette.gray300,
                    filled: true,
                  ),
                  // initialValue: 'Male',
                  allowClear: true,
                  hint: Text('Select Kota/Kabupaten'),
                  validator: FormBuilderValidators.compose(
                      [FormBuilderValidators.required(context)]),
                  items: kota
                      .map((kota) => DropdownMenuItem(
                            value: kota,
                            child: Text('$kota'),
                          ))
                      .toList(),
                  onChanged: (kota) {
                    kotaPertama = kota.toString();
                  },
                ),
              ],
            ),
          ),
        ],
      );

  Widget setKecamatan() => Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 25, left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Kecamatan",
                  style: TextPalette.fieldStyle,
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 8,
                ),
                FormBuilderDropdown(
                  name: 'kecamatan',
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorPalette.gray300),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: ColorPalette.gray300,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    fillColor: ColorPalette.gray300,
                    filled: true,
                  ),
                  // initialValue: 'Male',
                  allowClear: true,
                  hint: Text('Select kecamatan'),
                  validator: FormBuilderValidators.compose(
                      [FormBuilderValidators.required(context)]),
                  items: kecamatan
                      .map((kecamatan) => DropdownMenuItem(
                            value: kecamatan,
                            child: Text('$kecamatan'),
                          ))
                      .toList(),
                  onChanged: (kecamatan) {
                    kecamatanPertama = kecamatan.toString();
                  },
                ),
              ],
            ),
          ),
        ],
      );

  Widget setKelurahanDesa() => Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 25, left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Kelurahan/Desa",
                  style: TextPalette.fieldStyle,
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 8,
                ),
                FormBuilderDropdown(
                  name: 'kelurahan',
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorPalette.gray300),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: ColorPalette.gray300,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    fillColor: ColorPalette.gray300,
                    filled: true,
                  ),
                  // initialValue: 'Male',
                  allowClear: true,
                  hint: Text('Select Kelurahan/Desa'),
                  validator: FormBuilderValidators.compose(
                      [FormBuilderValidators.required(context)]),
                  items: kelurahan
                      .map((kelurahan) => DropdownMenuItem(
                            value: kelurahan,
                            child: Text('$kelurahan'),
                          ))
                      .toList(),
                  onChanged: (kelurahan) {
                    kelurahanPertama = kelurahan.toString();
                  },
                ),
              ],
            ),
          ),
        ],
      );

  Widget setRtRw() => Padding(
        padding: const EdgeInsets.only(top: 15, left: 25),
        child: Row(
          children: [
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                    // padding: const EdgeInsets.fromLTRB(left, top, right, bottom)
                    child: Text(
                      'RT',
                      style: TextPalette.fieldStyle,
                    ),
                  ),
                  FormBuilderDropdown(
                    name: 'rt',
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorPalette.gray300),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorPalette.gray300,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      fillColor: ColorPalette.gray300,
                      filled: true,
                    ),
                    // initialValue: 'Male',
                    allowClear: true,
                    hint: Text('Select RT'),
                    validator: FormBuilderValidators.compose(
                        [FormBuilderValidators.required(context)]),
                    items: rt
                        .map((rt) => DropdownMenuItem(
                              value: rt,
                              child: Text('$rt'),
                            ))
                        .toList(),
                    onChanged: (rt) {
                      rtPertama = rt.toString();
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20.20,
              height: 20.0,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                    // padding: const EdgeInsets.fromLTRB(left, top, right, bottom)
                    child: Text(
                      'RW',
                      style: TextPalette.fieldStyle,
                    ),
                  ),
                  FormBuilderDropdown(
                    name: 'rw',
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorPalette.gray300),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorPalette.gray300,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      fillColor: ColorPalette.gray300,
                      filled: true,
                    ),
                    // initialValue: 'Male',
                    allowClear: true,
                    hint: Text('Select RW'),
                    validator: FormBuilderValidators.compose(
                        [FormBuilderValidators.required(context)]),
                    items: rw
                        .map((rw) => DropdownMenuItem(
                              value: rw,
                              child: Text('$rw'),
                            ))
                        .toList(),
                    onChanged: (rw) {
                      rwPertama = rw.toString();
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
          ],
        ),
      );

  Widget setAlamatTempatTinggal() => Padding(
        padding: const EdgeInsets.only(top: 25, right: 25, left: 25),
        child: Row(
          children: [
            Text(
              'Alamat Tempat Tinggal',
              style: TextPalette.fieldStyle,
            ),
            Expanded(
              child: Center(
                child: Divider(
                  color: ColorPalette.gray300,
                  thickness: 4,
                  indent: 10,
                  endIndent: 0,
                ),
              ),
            )
          ],
        ),
      );

  Widget setCheckBox() => Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 25, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 8,
                ),
                FormBuilderCheckbox(
                  name: 'checkbox',
                  initialValue: false,
                  // onChanged: _onChanged,
                  title: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Sama kan Denga Alamat KTP ',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  validator: FormBuilderValidators.equal(
                    context,
                    true,
                    // errorText:
                    //     'You must accept terms and conditions to continue',
                  ),
                  onChanged: (checkbox) {
                    if (checkbox == true) {
                      getJalanController.text = jalanController.text;

                      getProvinsi = provinsiPertama;
                      getKota = kotaPertama;
                      getKecamatan = kecamatanPertama;
                      getKelurahan = kelurahanPertama;
                      getRt = rtPertama;
                      getRw = rwPertama;

                      _formKey.currentState?.fields['getProvinsi']?.didChange(getProvinsi);
                      _formKey.currentState?.fields['getKota']?.didChange(getKota);
                      _formKey.currentState?.fields['getKecamatan']?.didChange(getKecamatan);
                      _formKey.currentState?.fields['getKelurahan']?.didChange(getKelurahan);
                      _formKey.currentState?.fields['getRt']?.didChange(getRt);
                      _formKey.currentState?.fields['getRw']?.didChange(getRw);


                    } else {
                      print("salah");
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      );

  Widget setJalanFix() => Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 25, left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Jalan",
                  style: TextPalette.fieldStyle,
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 8,
                ),
                FormBuilderTextField(
                  controller: getJalanController,
                  name: 'jalanFix',
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorPalette.gray300),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: ColorPalette.gray300,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    fillColor: ColorPalette.gray300,
                    filled: true,
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(context),
                    FormBuilderValidators.maxLength(context, 25),
                  ]),
                ),
              ],
            ),
          ),
        ],
      );

  Widget setProvinsiFix() => Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 25, left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Provinsi",
                  style: TextPalette.fieldStyle,
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 8,
                ),
                FormBuilderDropdown(
                  name: "getProvinsi",
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorPalette.gray300),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: ColorPalette.gray300,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    fillColor: ColorPalette.gray300,
                    filled: true,
                  ),
                  // initialValue: getProvinsi.toString(),
                  allowClear: true,
                  hint: Text('Select Provinsi'),
                  validator: FormBuilderValidators.compose(
                      [FormBuilderValidators.required(context)]),
                  items: provinsi
                      .map((provinsi) => DropdownMenuItem(
                            value: provinsi,
                            child: Text('$provinsi'),
                          ))
                      .toList(),
                ),
              ],
            ),
          ),
        ],
      );

  Widget setKotaKabupatenFix() => Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 25, left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Kota/Kabupaten",
                  style: TextPalette.fieldStyle,
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 8,
                ),
                FormBuilderDropdown(
                  name: 'getKota',
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorPalette.gray300),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: ColorPalette.gray300,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    fillColor: ColorPalette.gray300,
                    filled: true,
                  ),
                  // initialValue: 'Male',
                  allowClear: true,
                  hint: Text('Select Kota/Kabupaten'),
                  validator: FormBuilderValidators.compose(
                      [FormBuilderValidators.required(context)]),
                  items: kota
                      .map((kota) => DropdownMenuItem(
                            value: kota,
                            child: Text('$kota'),
                          ))
                      .toList(),
                ),
              ],
            ),
          ),
        ],
      );

  Widget setKecamatanFix() => Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 25, left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Kecamatan",
                  style: TextPalette.fieldStyle,
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 8,
                ),
                FormBuilderDropdown(
                  name: 'getKecamatan',
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorPalette.gray300),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: ColorPalette.gray300,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    fillColor: ColorPalette.gray300,
                    filled: true,
                  ),
                  // initialValue: 'Male',
                  allowClear: true,
                  hint: Text('Select kecamatan'),
                  validator: FormBuilderValidators.compose(
                      [FormBuilderValidators.required(context)]),
                  items: kecamatan
                      .map((kecamatan) => DropdownMenuItem(
                            value: kecamatan,
                            child: Text('$kecamatan'),
                          ))
                      .toList(),
                ),
              ],
            ),
          ),
        ],
      );

  Widget setKelurahanDesaFix() => Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 25, left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Kelurahan/Desa",
                  style: TextPalette.fieldStyle,
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 8,
                ),
                FormBuilderDropdown(
                  name: 'getKelurahan',
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorPalette.gray300),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: ColorPalette.gray300,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    fillColor: ColorPalette.gray300,
                    filled: true,
                  ),
                  // initialValue: 'Male',
                  allowClear: true,
                  hint: Text('Select Kelurahan/Desa'),
                  validator: FormBuilderValidators.compose(
                      [FormBuilderValidators.required(context)]),
                  items: kelurahan
                      .map((kelurahan) => DropdownMenuItem(
                            value: kelurahan,
                            child: Text('$kelurahan'),
                          ))
                      .toList(),
                ),
              ],
            ),
          ),
        ],
      );

  Widget setRtRwFix() => Padding(
        padding: const EdgeInsets.only(top: 15, left: 25),
        child: Row(
          children: [
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                    // padding: const EdgeInsets.fromLTRB(left, top, right, bottom)
                    child: Text(
                      'RT',
                      style: TextPalette.fieldStyle,
                    ),
                  ),
                  FormBuilderDropdown(
                    name: 'getRt',
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorPalette.gray300),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorPalette.gray300,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      fillColor: ColorPalette.gray300,
                      filled: true,
                    ),
                    // initialValue: 'Male',
                    allowClear: true,
                    hint: Text('Select RT'),
                    validator: FormBuilderValidators.compose(
                        [FormBuilderValidators.required(context)]),
                    items: rt
                        .map((rt) => DropdownMenuItem(
                              value: rt,
                              child: Text('$rt'),
                            ))
                        .toList(),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20.20,
              height: 20.0,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                    // padding: const EdgeInsets.fromLTRB(left, top, right, bottom)
                    child: Text(
                      'RW',
                      style: TextPalette.fieldStyle,
                    ),
                  ),
                  FormBuilderDropdown(
                    name: 'getRw',
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorPalette.gray300),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorPalette.gray300,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      fillColor: ColorPalette.gray300,
                      filled: true,
                    ),
                    // initialValue: 'Male',
                    allowClear: true,
                    hint: Text('Select RW'),
                    validator: FormBuilderValidators.compose(
                        [FormBuilderValidators.required(context)]),
                    items: rw
                        .map((rw) => DropdownMenuItem(
                              value: rw,
                              child: Text('$rw'),
                            ))
                        .toList(),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
          ],
        ),
      );

  //Btn
  Widget setSimpan() => SizedBox(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 25, right: 25, bottom: 35, left: 25),
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 4),
                    blurRadius: 5.0)
              ],
              gradient: LinearGradient(
                // begin: Alignment.topLeft,
                // end: Alignment.bottomRight,
                stops: [0.0, 1.0],
                colors: [
                  Colors.redAccent.shade700,
                  Colors.red.shade400,
                ],
              ),
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                // elevation: MaterialStateProperty.all(3),
                shadowColor: MaterialStateProperty.all(Colors.transparent),
              ),
              onPressed: () {
                _getData();

                setState(() {
                  FocusScope.of(context).unfocus();
                });
              },
              child: Text(
                StringResources.BTN_SEND_APP_TITLE,
                style: TextPalette.btnStyle,
              ),
            ),
          ),
        ),
      );
}
