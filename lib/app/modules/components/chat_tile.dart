part of 'components.dart';

class ChatTile extends StatelessWidget {
  ChatTile({
    required this.grubModel,
  });

  final GrubModel grubModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.DETAIL_CHAT);
      },
      child: Container(
        margin: EdgeInsets.only(top: getPropertionateScreenHeight(10)),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        grubModel.name.toString(),
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Now',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Divider(
              thickness: 1,
              color: Color(0xff2B2939),
            ),
          ],
        ),
      ),
    );
  }
}
