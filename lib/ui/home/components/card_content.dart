import 'package:flutter/material.dart';
import 'package:dnf_layout/shared/common/styles/styles.dart';
import 'package:dnf_layout/ui/home/components/card_content_detail.dart';
import 'package:community_material_icon/community_material_icon.dart';

class CardContent extends StatelessWidget {
  const CardContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CardContentDetail(
          title: "Anda terima",
          value: "Rp 1.500.000",
          rightIconOfTitle: true,
          titleIcon: Icon(
            CommunityMaterialIcons.alert_circle_outline,
            color: MyColors.deepBlue,
            size: 18,
          ),
        ),
        CardContentDetail(
          title: "Anda mengembalikan",
          value: "Rp 2.400.000",
          divider: true,
        ),
        CardContentDetail(
          title: "Bayar hingga",
          value: "11.03.2021",
          leftIconOfValue: true,
          divider: true,
          valueIcon: Icon(
            CommunityMaterialIcons.calendar,
            color: MyColors.deepBlue,
            size: 18,
          ),
        ),
        CardContentDetail(
          title: "Cicilan per bulan",
          value: "Rp 600.000",
          rightIconOfValue: true,
          divider: true,
          valueIcon: Icon(
            CommunityMaterialIcons.alert_circle_outline,
            color: Colors.red,
            size: 18,
          ),
        ),
      ],
    );
  }
}
