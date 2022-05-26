import 'package:flutter/material.dart';
import 'package:flutter_lms_cambaya/app/data/models/prestasi_model.dart';
import 'package:flutter_lms_cambaya/app/modules/lapor/views/lapor_view.dart';
import 'package:flutter_lms_cambaya/config/config.dart';
import 'package:flutter_lms_cambaya/constants/constants.dart';

class Prestasi extends StatelessWidget {
  const Prestasi({
    Key? key,
    required this.prestasiModel,
  }) : super(key: key);

  final List<PrestasiModel> prestasiModel;

  @override
  Widget build(BuildContext context) {
    return CardLapor(
      items: [
        Text(
          'Prestasi Siswa',
          style: primaryTextStyle.copyWith(
            fontSize: 16,
            fontWeight: bold,
          ),
        ),
        Column(
          children: prestasiModel
              .map(
                (hasil) => DataPrestasi(
                  prestasiModel: hasil,
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}

class DataPrestasi extends StatelessWidget {
  const DataPrestasi({
    Key? key,
    required this.prestasiModel,
  }) : super(key: key);

  final PrestasiModel prestasiModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Jenis Kegiatan',
              style: subtitleTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(
              width: getPropertionateScreenWidht(20),
            ),
            Text(
              prestasiModel.jenisKegiatan.toString(),
              style: subtitleTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ],
        ),
        Text(
          prestasiModel.keterangan.toString(),
          style: subtitleTextStyle.copyWith(
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: getPropertionateScreenHeight(10),
        ),
        Divider(
          height: 1,
        ),
      ],
    );
  }
}
