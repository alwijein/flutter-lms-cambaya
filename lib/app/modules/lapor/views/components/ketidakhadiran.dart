import 'package:flutter/cupertino.dart';
import 'package:flutter_lms_cambaya/app/data/models/absen_model.dart';
import 'package:flutter_lms_cambaya/app/modules/lapor/views/lapor_view.dart';
import 'package:flutter_lms_cambaya/config/config.dart';
import 'package:flutter_lms_cambaya/constants/constants.dart';

class Ketidakhadiran extends StatelessWidget {
  const Ketidakhadiran({
    Key? key,
    required this.absenModel,
  }) : super(key: key);

  final AbsenModel absenModel;

  @override
  Widget build(BuildContext context) {
    return CardLapor(
      items: [
        Text(
          'Ketidakhadiran Siswa',
          style: primaryTextStyle.copyWith(
            fontSize: 16,
            fontWeight: bold,
          ),
        ),
        Row(
          children: [
            Text(
              'Izin',
              style: subtitleTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(
              width: getPropertionateScreenWidht(20),
            ),
            Text(
              absenModel.izin.toString(),
              style: subtitleTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              'Bertugas Keluar',
              style: subtitleTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(
              width: getPropertionateScreenWidht(20),
            ),
            Text(
              absenModel.bertugasKeluar.toString(),
              style: subtitleTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              'Sakit',
              style: subtitleTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(
              width: getPropertionateScreenWidht(20),
            ),
            Text(
              absenModel.sakit.toString(),
              style: subtitleTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              'Terlambat',
              style: subtitleTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(
              width: getPropertionateScreenWidht(20),
            ),
            Text(
              absenModel.terlambat.toString(),
              style: subtitleTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              'Tanpa Keterangan',
              style: subtitleTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(
              width: getPropertionateScreenWidht(20),
            ),
            Text(
              absenModel.tanpaKeterangan.toString(),
              style: subtitleTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
