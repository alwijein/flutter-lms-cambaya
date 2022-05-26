import 'package:flutter/material.dart';
import 'package:flutter_lms_cambaya/app/data/models/nilai_ujian_model.dart';
import 'package:flutter_lms_cambaya/config/config.dart';
import 'package:flutter_lms_cambaya/constants/constants.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../controllers/hasil_ujian_controller.dart';

class HasilUjianView extends GetView<HasilUjianController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hasil Ujian'),
          centerTitle: true,
          elevation: 0,
        ),
        body: SafeArea(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(defaultPadding),
            child: FutureBuilder<List<NilaiUjianModel>>(
                future: controller.getData(),
                builder: (_, data) {
                  if (data.hasData) {
                    return ListView.builder(
                      itemCount: data.data?.length ?? 0,
                      itemBuilder: (_, count) {
                        NilaiUjianModel nilaiUjianModel = data.data![count];
                        return ExpansionCard(
                          nilaiUjianModel: nilaiUjianModel,
                        );
                      },
                    );
                  }
                  return Center(
                      child: CircularProgressIndicator(
                    color: kPrimaryColor,
                  ));
                }),
          ),
        ));
  }
}

class ExpansionCard extends StatelessWidget {
  const ExpansionCard({
    Key? key,
    required this.nilaiUjianModel,
  }) : super(key: key);

  final NilaiUjianModel nilaiUjianModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: getPropertionateScreenHeight(10),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kBackgroundColor2,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ],
      ),
      child: ExpansionTile(
        childrenPadding: EdgeInsets.symmetric(
          horizontal: getPropertionateScreenWidht(16),
          vertical: getPropertionateScreenWidht(5),
        ),
        title: Text(
            nilaiUjianModel.pelajaran?.mataPelajaran.toString() ?? 'Erorr'),
        trailing: Icon(Icons.arrow_drop_down),
        onExpansionChanged: (value) {},
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  'Guru',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
              ),
              Spacer(
                flex: 1,
              ),
              Expanded(
                flex: 5,
                child: Text(
                  nilaiUjianModel.guru?.nama.toString() ?? 'Error',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  'Nilai',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
              ),
              Spacer(
                flex: 1,
              ),
              Expanded(
                flex: 5,
                child: Text(
                  nilaiUjianModel.nilai.toString(),
                  style: subtitleTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  'Predikat',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
              ),
              Spacer(
                flex: 1,
              ),
              Expanded(
                flex: 5,
                child: Text(
                  nilaiUjianModel.predikat.toString(),
                  style: subtitleTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
