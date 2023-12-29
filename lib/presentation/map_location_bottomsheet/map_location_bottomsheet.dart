import 'bloc/map_location_bloc.dart';
import 'models/map_location_model.dart';
import 'package:bankapp/core/app_export.dart';
import 'package:bankapp/widgets/custom_button.dart';
import 'package:bankapp/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MapLocationBottomsheet extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<MapLocationBloc>(
      create: (context) => MapLocationBloc(MapLocationState(
        mapLocationModelObj: MapLocationModel(),
      ))
        ..add(MapLocationInitialEvent()),
      child: MapLocationBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
        child: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 24,
            top: 10,
            right: 24,
            bottom: 10,
          ),
          decoration: AppDecoration.fillWhiteA700.copyWith(
            borderRadius: BorderRadiusStyle.customBorderTL40,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgElementGray20001,
                height: getVerticalSize(
                  4,
                ),
                width: getHorizontalSize(
                  30,
                ),
                alignment: Alignment.center,
              ),
              Padding(
                padding: getPadding(
                  top: 24,
                ),
                child: Row(
                  children: [
                    CustomIconButton(
                      height: 50,
                      width: 50,
                      margin: getMargin(
                        top: 2,
                        bottom: 2,
                      ),
                      variant: IconButtonVariant.FillTeal80026,
                      shape: IconButtonShape.RoundedBorder13,
                      padding: IconButtonPadding.PaddingAll15,
                      child: CustomImageView(
                        svgPath: ImageConstant.imgFolder,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 14,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_national_bank".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsMedium14Black900,
                          ),
                          Container(
                            width: getHorizontalSize(
                              118,
                            ),
                            margin: getMargin(
                              left: 1,
                              top: 6,
                            ),
                            child: Text(
                              "msg_24084_standard".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium9Bluegray400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 18,
                ),
                child: Divider(
                  height: getVerticalSize(
                    1,
                  ),
                  thickness: getVerticalSize(
                    1,
                  ),
                  color: ColorConstant.gray200,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 17,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgClock15x15,
                      height: getSize(
                        15,
                      ),
                      width: getSize(
                        15,
                      ),
                      margin: getMargin(
                        top: 1,
                        bottom: 4,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 12,
                      ),
                      child: Text(
                        "lbl_working_hours".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsMedium14Black900,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: getMargin(
                  top: 16,
                  right: 2,
                ),
                padding: getPadding(
                  top: 10,
                  bottom: 10,
                ),
                decoration: AppDecoration.outlineBlack9000c.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder7,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 3,
                        bottom: 3,
                      ),
                      child: Text(
                        "lbl_s".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsMedium15Gray500,
                      ),
                    ),
                    Container(
                      height: getVerticalSize(
                        30,
                      ),
                      width: getHorizontalSize(
                        234,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgElementGray30015x234,
                            height: getVerticalSize(
                              15,
                            ),
                            width: getHorizontalSize(
                              234,
                            ),
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 3,
                                    bottom: 3,
                                  ),
                                  child: Text(
                                    "lbl_m".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium15Gray500,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 35,
                                    top: 3,
                                    bottom: 3,
                                  ),
                                  child: Text(
                                    "lbl_t".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium15Gray500,
                                  ),
                                ),
                                CustomButton(
                                  height: getVerticalSize(
                                    30,
                                  ),
                                  width: getHorizontalSize(
                                    46,
                                  ),
                                  text: "lbl_w".tr,
                                  margin: getMargin(
                                    left: 20,
                                  ),
                                  padding: ButtonPadding.PaddingAll3,
                                  fontStyle:
                                      ButtonFontStyle.PoppinsMedium15WhiteA700,
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 20,
                                    top: 3,
                                    bottom: 3,
                                  ),
                                  child: Text(
                                    "lbl_t".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium15Gray500,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 38,
                                    top: 3,
                                    bottom: 5,
                                  ),
                                  child: Text(
                                    "lbl_f".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium14Gray500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 3,
                        bottom: 5,
                      ),
                      child: Text(
                        "lbl_s".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsMedium14Gray500,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 21,
                ),
                child: Divider(
                  height: getVerticalSize(
                    1,
                  ),
                  thickness: getVerticalSize(
                    1,
                  ),
                  color: ColorConstant.gray200,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 14,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgCall,
                      height: getSize(
                        15,
                      ),
                      width: getSize(
                        15,
                      ),
                      margin: getMargin(
                        top: 3,
                        bottom: 2,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 14,
                      ),
                      child: Text(
                        "lbl_phone_number".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsMedium14Black900,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 3,
                ),
                child: Text(
                  "msg_1_123_456_7890".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsMedium11Gray500,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 16,
                ),
                child: Divider(
                  height: getVerticalSize(
                    1,
                  ),
                  thickness: getVerticalSize(
                    1,
                  ),
                  color: ColorConstant.gray200,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 14,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgDownload15x18,
                      height: getVerticalSize(
                        15,
                      ),
                      width: getHorizontalSize(
                        18,
                      ),
                      margin: getMargin(
                        top: 3,
                        bottom: 2,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 12,
                      ),
                      child: Text(
                        "lbl_email_address".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsMedium14Black900,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 4,
                ),
                child: Text(
                  "lbl_xyz_gmail_com".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsMedium11Gray500,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 15,
                ),
                child: Divider(
                  height: getVerticalSize(
                    1,
                  ),
                  thickness: getVerticalSize(
                    1,
                  ),
                  color: ColorConstant.gray200,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 20,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgMegaphone,
                      height: getVerticalSize(
                        15,
                      ),
                      width: getHorizontalSize(
                        13,
                      ),
                      margin: getMargin(
                        top: 3,
                        bottom: 2,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 12,
                      ),
                      child: Text(
                        "lbl_attendance".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsMedium14Black900,
                      ),
                    ),
                  ],
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgChat,
                height: getVerticalSize(
                  92,
                ),
                width: getHorizontalSize(
                  324,
                ),
                margin: getMargin(
                  top: 14,
                  bottom: 37,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
