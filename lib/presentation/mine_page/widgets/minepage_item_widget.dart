import '../models/minepage_item_model.dart';
import 'package:bankapp/core/app_export.dart';
import 'package:bankapp/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MinepageItemWidget extends StatelessWidget {
  MinepageItemWidget(this.minepageItemModelObj);

  MinepageItemModel minepageItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          height: 50,
          width: 50,
          variant: IconButtonVariant.FillGray100,
          shape: IconButtonShape.RoundedBorder13,
          padding: IconButtonPadding.PaddingAll15,
          child: CustomImageView(
            svgPath: ImageConstant.imgFire,
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
                minepageItemModelObj.storenameTxt,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsMedium14Black900,
              ),
              Padding(
                padding: getPadding(
                  top: 4,
                ),
                child: Text(
                  minepageItemModelObj.dateTxt,
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
            minepageItemModelObj.priceTxt,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtPoppinsMedium11,
          ),
        ),
      ],
    );
  }
}
