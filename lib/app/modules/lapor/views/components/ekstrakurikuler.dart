import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lms_cambaya/app/data/models/ekstrakurikuler_model.dart';
import 'package:flutter_lms_cambaya/app/modules/lapor/views/lapor_view.dart';
import 'package:flutter_lms_cambaya/config/config.dart';
import 'package:flutter_lms_cambaya/constants/constants.dart';

class Ekstrakurikuler extends StatelessWidget {
  const Ekstrakurikuler({
    Key? key,
    required this.eksModel,
  }) : super(key: key);

  final List<EkstrakurikulerModel> eksModel;
  @override
  Widget build(BuildContext context) {
    return CardLapor(
      items: [
        Text(
          'Nilai Ekstrakurikuler',
          style: primaryTextStyle.copyWith(
            fontSize: 16,
            fontWeight: bold,
          ),
        ),
        Column(
          children: eksModel
              .map(
                (hasil) => DataNilaiEkstrakurikuler(
                  ekstrakurikulerModel: hasil,
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}

class DataNilaiEkstrakurikuler extends StatelessWidget {
  const DataNilaiEkstrakurikuler({
    Key? key,
    required this.ekstrakurikulerModel,
  }) : super(key: key);

  final EkstrakurikulerModel ekstrakurikulerModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Kegiatan Ekstrakurikuler',
              style: subtitleTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(
              width: getPropertionateScreenWidht(20),
            ),
            Text(
              ekstrakurikulerModel.kegiatan.toString(),
              style: subtitleTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              'Nilai',
              style: subtitleTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(
              width: getPropertionateScreenWidht(20),
            ),
            Text(
              ekstrakurikulerModel.nilai.toString(),
              style: subtitleTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ],
        ),
        Text(
          ekstrakurikulerModel.deskripsi.toString(),
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
