import 'package:flutter/material.dart';
import 'package:flutter_lms_cambaya/config/config.dart';
import 'package:flutter_lms_cambaya/constants/constants.dart';

import 'package:get/get.dart';

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
            child: Column(
              children: [
                ExpansionCard(),
              ],
            ),
          ),
        ));
  }
}

class ExpansionCard extends StatelessWidget {
  const ExpansionCard({
    Key? key,
  }) : super(key: key);

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
        title: Text('Matematika'),
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
                  'Sutono',
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
                  '80',
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
                  'A',
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
