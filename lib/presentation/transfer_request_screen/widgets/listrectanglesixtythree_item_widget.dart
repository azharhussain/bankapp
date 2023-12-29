import '../models/listrectanglesixtythree_item_model.dart';
import 'package:bankapp/core/app_export.dart';
import 'package:bankapp/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListrectanglesixtythreeItemWidget extends StatelessWidget {
  ListrectanglesixtythreeItemWidget(this.listrectanglesixtythreeItemModelObj);

  ListrectanglesixtythreeItemModel listrectanglesixtythreeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgRectangle6350x50,
          height: getSize(
            50,
          ),
          width: getSize(
            50,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              4,
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 14,
            top: 5,
            bottom: 5,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                listrectanglesixtythreeItemModelObj.nameTxt,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsMedium14Black900,
              ),
              Padding(
                padding: getPadding(
                  top: 2,
                ),
                child: Text(
                  listrectanglesixtythreeItemModelObj.professionTxt,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsRegular10,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        CustomIconButton(
          height: 25,
          width: 25,
          margin: getMargin(
            top: 13,
            bottom: 12,
          ),
          variant: IconButtonVariant.FillDeeppurple50,
          shape: IconButtonShape.RoundedBorder7,
          child: CustomImageView(
            svgPath: ImageConstant.imgPlus,
          ),
        ),
      ],
    );
  }
}
