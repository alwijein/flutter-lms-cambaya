import 'package:flutter/cupertino.dart';
import 'package:flutter_lms_cambaya/app/data/models/sikap_model.dart';
import 'package:flutter_lms_cambaya/app/modules/lapor/views/lapor_view.dart';
import 'package:flutter_lms_cambaya/config/config.dart';
import 'package:flutter_lms_cambaya/constants/constants.dart';

class Sikap extends StatelessWidget {
  const Sikap({
    Key? key,
    required this.sikapModel,
  }) : super(key: key);

  final List<SikapModel> sikapModel;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: sikapModel.length,
      itemBuilder: (_, count) {
        return CardLapor(
          items: [
            Text(
              '${count + 1}. Sikap ${sikapModel[count].jenisSikap}',
              style: primaryTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 16,
              ),
            ),
            Row(
              children: [
                Text(
                  'Predikat',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  width: getPropertionateScreenHeight(20),
                ),
                Text(
                  sikapModel[count].predikat.toString(),
                  style: subtitleTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Text(
              sikapModel[count].desk.toString(),
              style: subtitleTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ],
        );
      },
    );
  }
}
