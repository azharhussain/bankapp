import '../models/listvolume_item_model.dart';
import 'package:bankapp/core/app_export.dart';
import 'package:bankapp/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListvolumeItemWidget extends StatelessWidget {
  ListvolumeItemWidget(this.listvolumeItemModelObj);

  ListvolumeItemModel listvolumeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          height: 50,
          width: 50,
          variant: IconButtonVariant.FillBlueA70026,
          shape: IconButtonShape.RoundedBorder13,
          padding: IconButtonPadding.PaddingAll15,
          child: CustomImageView(
            svgPath: ImageConstant.imgVolume50x50,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 15,
            top: 6,
            bottom: 5,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                listvolumeItemModelObj.paymenttypeTxt,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsMedium14Black900,
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    top: 2,
                  ),
                  child: Text(
                    "lbl_18_june_20222".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsMedium10Gray500,
                  ),
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: getPadding(
            top: 7,
            bottom: 7,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "lbl_27_00".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsMedium11,
              ),
              Padding(
                padding: getPadding(
                  top: 3,
                  right: 1,
                ),
                child: Text(
                  listvolumeItemModelObj.paymentmethodTxt,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsMedium10Gray500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
