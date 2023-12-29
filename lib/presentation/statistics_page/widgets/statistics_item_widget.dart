import '../models/statistics_item_model.dart';
import 'package:bankapp/core/app_export.dart';
import 'package:bankapp/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class StatisticsItemWidget extends StatelessWidget {
  StatisticsItemWidget(this.statisticsItemModelObj);

  StatisticsItemModel statisticsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          height: 50,
          width: 50,
          variant: IconButtonVariant.FillAmber60026,
          shape: IconButtonShape.RoundedBorder13,
          padding: IconButtonPadding.PaddingAll15,
          child: CustomImageView(
            svgPath: ImageConstant.imgNotification,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 15,
            top: 6,
            bottom: 3,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                statisticsItemModelObj.snapchatAdsTxt,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsMedium14Black900,
              ),
              Padding(
                padding: getPadding(
                  top: 4,
                ),
                child: Text(
                  statisticsItemModelObj.dateTxt,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsMedium10Gray500,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: getPadding(
            top: 16,
            bottom: 16,
          ),
          child: Text(
            statisticsItemModelObj.priceTxt,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtPoppinsMedium11,
          ),
        ),
      ],
    );
  }
}
