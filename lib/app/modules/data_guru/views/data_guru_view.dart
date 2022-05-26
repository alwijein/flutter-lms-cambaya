import 'package:flutter/material.dart';
import 'package:flutter_lms_cambaya/app/data/models/guru_model.dart';
import 'package:flutter_lms_cambaya/app/routes/app_pages.dart';
import 'package:flutter_lms_cambaya/config/config.dart';
import 'package:flutter_lms_cambaya/constants/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/data_guru_controller.dart';

class DataGuruView extends GetView<DataGuruController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: 6,
                child: SvgPicture.asset(
                  'assets/images/teacher_illustration.svg',
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                flex: 10,
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(defaultPadding),
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                  ),
                  // child: Column(
                  //   children: controller.guruModel
                  //       .map(
                  //         (hasil) => CardGuru(
                  //           guruModel: hasil,
                  //         ),
                  //       )
                  //       .toList(),
                  // ),
                  child: FutureBuilder<List<GuruModel>>(
                    future: controller.getData(),
                    builder: (_, AsyncSnapshot data) {
                      if (data.hasData) {
                        // return Column(
                        //   children: [
                        //     CardGuru(guruModel: guruModel),
                        //   ],
                        // );
                        return ListView.builder(
                            itemCount: data.data.length,
                            itemBuilder: (_, count) {
                              GuruModel guruModel = data.data[count];

                              return CardGuru(guruModel: guruModel);
                            });
                      }
                      return Center(
                        child: CircularProgressIndicator(
                          color: kBackgroundColor2,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardGuru extends StatelessWidget {
  const CardGuru({
    Key? key,
    required this.guruModel,
  }) : super(key: key);

  final GuruModel guruModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.dialog(
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: kBackgroundColor2,
            margin: EdgeInsets.symmetric(
                horizontal: getPropertionateScreenWidht(50),
                vertical: getPropertionateScreenWidht(150)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'NIK: ${guruModel.noInduk}',
                  style: primaryTextStyle,
                ),
                Text(
                  'Nama: ${guruModel.nama}',
                  style: primaryTextStyle,
                ),
                Text(
                  'Jenis Kelamin: ${guruModel.jk}',
                  style: primaryTextStyle,
                ),
                Text(
                  'Nomor Telepon: ${guruModel.telp}',
                  style: primaryTextStyle,
                ),
                Text(
                  'Mata Pelajaran: ${guruModel.pelajaran?.mataPelajaran}',
                  style: primaryTextStyle,
                ),
                Text(
                  'Alamat: ${guruModel.noInduk}',
                  style: primaryTextStyle,
                ),
              ],
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: getPropertionateScreenHeight(15)),
        padding: EdgeInsets.symmetric(
          horizontal: getPropertionateScreenWidht(20),
        ),
        height: getPropertionateScreenWidht(60),
        decoration: BoxDecoration(
          color: kBackgroundColor2,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              guruModel.nama.toString(),
              style: primaryTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 18,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            Text(
              guruModel.pelajaran?.mataPelajaran ?? 'Kosong',
              style: subtitleTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
