import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:kossearch/widgets/tipsguide/guide_card.dart';
import 'package:kossearch/widgets/tipsguide/page.dart';
import 'package:kossearch/widgets/tipsguide/pageItem.dart';
import 'package:kossearch/widgets/tipsguide/tips_card.dart';

import '../models/tips.dart';
import '../theme.dart';

class TipsCard extends StatelessWidget {
  static String id = 'TipsCard';
  final Tips tips;
  IconButton iconButton;

  TipsCard(this.tips, this.iconButton);
  @override
  Widget build(BuildContext context) {
    return
      Row(
        children: [
        Image.asset(
          tips.imageUrl,
          width: 80,
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tips.title,
              style: blackTextStyle.copyWith(
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'Updated ${tips.updatedAt}',
              style: greyTextStyle,
            ),
          ],
        ),
        Spacer(),
        iconButton,
        // IconButton(onPressed: (){},
        //     icon: Icon(Icons.chevron_right, color: greyColor,)),
        // IconButton(
        //   onPressed: () {
        //     Navigator.push(context, MaterialPageRoute(builder: (context) => TGItem()));
        //     //Navigator.pushNamed(context, TipsItem.id);
        //     //Navigator.pop(context);
        //    // Navigator.pushNamed(context, GuideItem.id);
        //     Navigator.push(context, MaterialPageRoute(builder: (context) => GTItem()));
        //    // Get.to()
        //    //;
        //   },
        //   icon: Icon(
        //     Icons.chevron_right,
        //     color: greyColor,
        //   ),
        // ),
      ],
    );
  }
}
