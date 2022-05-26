import 'package:flutter/cupertino.dart';
import 'package:flutter_lms_cambaya/app/data/models/nilai_ujian_model.dart';
import 'package:flutter_lms_cambaya/app/data/models/pelajaran_model.dart';
import 'package:flutter_lms_cambaya/app/modules/lapor/views/lapor_view.dart';
import 'package:flutter_lms_cambaya/constants/constants.dart';

class NilaiPengetahuan extends StatelessWidget {
  const NilaiPengetahuan({
    Key? key,
    required this.nilaiUjianModel,
    required this.title,
  }) : super(key: key);

  final List<NilaiUjianModel> nilaiUjianModel;
  final title;
  @override
  Widget build(BuildContext context) {
    return CardLapor(
      items: [
        Text(
          'Nilai $title',
          style: primaryTextStyle.copyWith(
            fontWeight: bold,
            fontSize: 16,
          ),
        ),
        Column(
          children: nilaiUjianModel
              .map(
                (hasil) => DataNilaiPengetahuan(
                  title: title,
                  nilaiUjianModel: hasil,
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
