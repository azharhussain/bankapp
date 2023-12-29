import 'bloc/transfer_bloc.dart';
import 'models/transfer_model.dart';
import 'package:bankapp/core/app_export.dart';
import 'package:bankapp/widgets/app_bar/appbar_iconbutton.dart';
import 'package:bankapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:bankapp/widgets/app_bar/custom_app_bar.dart';
import 'package:bankapp/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class TransferScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<TransferBloc>(
        create: (context) =>
            TransferBloc(TransferState(transferModelObj: TransferModel()))
              ..add(TransferInitialEvent()),
        child: TransferScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransferBloc, TransferState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              appBar: CustomAppBar(
                  height: getVerticalSize(50),
                  leadingWidth: 59,
                  leading: AppbarIconbutton(
                      svgPath: ImageConstant.imgArrowleftBlack900,
                      margin: getMargin(left: 24, top: 8, bottom: 7),
                      onTap: () {
                        onTapArrowleft(context);
                      }),
                  centerTitle: true,
                  title: AppbarSubtitle(text: "lbl_transfer".tr),
                  actions: [
                    AppbarIconbutton(
                        svgPath: ImageConstant.imgVolumeBlack900,
                        margin:
                            getMargin(left: 24, top: 7, right: 24, bottom: 8))
                  ]),
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(top: 30, bottom: 30),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: IntrinsicWidth(
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgEllipse30950x50,
                                          height: getSize(50),
                                          width: getSize(50),
                                          radius: BorderRadius.circular(
                                              getHorizontalSize(25)),
                                          margin:
                                              getMargin(top: 15, bottom: 15)),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgEllipse31065x65,
                                          height: getSize(65),
                                          width: getSize(65),
                                          radius: BorderRadius.circular(
                                              getHorizontalSize(32)),
                                          margin: getMargin(
                                              left: 24, top: 7, bottom: 8)),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgEllipse31380x80,
                                          height: getSize(80),
                                          width: getSize(80),
                                          radius: BorderRadius.circular(
                                              getHorizontalSize(40)),
                                          margin: getMargin(left: 24)),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgEllipse31265x65,
                                          height: getSize(65),
                                          width: getSize(65),
                                          radius: BorderRadius.circular(
                                              getHorizontalSize(32)),
                                          margin: getMargin(
                                              left: 24, top: 7, bottom: 8)),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgEllipse31150x50,
                                          height: getSize(50),
                                          width: getSize(50),
                                          radius: BorderRadius.circular(
                                              getHorizontalSize(25)),
                                          margin: getMargin(
                                              left: 24, top: 15, bottom: 15))
                                    ])))),
                        Padding(
                            padding: getPadding(top: 12),
                            child: Text("lbl_alex_dordan".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsMedium18)),
                        Padding(
                            padding: getPadding(top: 1),
                            child: Text("lbl_web_developer".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsMedium10Gray500)),
                        Container(
                            width: getHorizontalSize(325),
                            margin: getMargin(left: 25, top: 28, right: 25),
                            padding: getPadding(
                                left: 44, top: 49, right: 44, bottom: 49),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: fs.Svg(ImageConstant.imgGroup199),
                                    fit: BoxFit.cover)),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomImageView(
                                      svgPath: ImageConstant.imgVolume23x36,
                                      height: getVerticalSize(23),
                                      width: getHorizontalSize(36),
                                      margin: getMargin(bottom: 18)),
                                  CustomImageView(
                                      svgPath: ImageConstant.img1,
                                      height: getVerticalSize(4),
                                      width: getHorizontalSize(32),
                                      margin: getMargin(
                                          left: 20, top: 10, bottom: 27)),
                                  CustomImageView(
                                      svgPath: ImageConstant.img1,
                                      height: getVerticalSize(4),
                                      width: getHorizontalSize(32),
                                      margin: getMargin(
                                          left: 10, top: 10, bottom: 27)),
                                  Padding(
                                      padding: getPadding(
                                          left: 10, top: 3, bottom: 23),
                                      child: Text("lbl_4023".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsMedium10)),
                                  Padding(
                                      padding: getPadding(
                                          left: 8,
                                          top: 3,
                                          right: 38,
                                          bottom: 23),
                                      child: Text("lbl_5534".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsMedium10))
                                ])),
                        Padding(
                            padding: getPadding(top: 50),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      width: getHorizontalSize(60),
                                      padding: getPadding(
                                          left: 17,
                                          top: 4,
                                          right: 17,
                                          bottom: 4),
                                      decoration: AppDecoration
                                          .txtOutlineGray300
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .txtRoundedBorder7),
                                      child: Text("lbl_eur".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPoppinsMedium13Black900)),
                                  Container(
                                      width: getHorizontalSize(60),
                                      margin: getMargin(left: 15),
                                      padding: getPadding(
                                          left: 16,
                                          top: 4,
                                          right: 16,
                                          bottom: 4),
                                      decoration: AppDecoration
                                          .txtOutlineBlue7005b
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .txtRoundedBorder7),
                                      child: Text("lbl_usd".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPoppinsMedium13WhiteA700)),
                                  Container(
                                      width: getHorizontalSize(60),
                                      margin: getMargin(left: 15),
                                      padding: getPadding(
                                          left: 17,
                                          top: 4,
                                          right: 17,
                                          bottom: 4),
                                      decoration: AppDecoration
                                          .txtOutlineGray300
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .txtRoundedBorder7),
                                      child: Text("lbl_gbp".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPoppinsMedium13Black900))
                                ])),
                        Padding(
                            padding: getPadding(top: 40),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 3, bottom: 1),
                                      child: Text("lbl_1_500_00".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsMedium30)),
                                  Container(
                                      margin: getMargin(left: 28),
                                      padding: getPadding(all: 6),
                                      decoration: AppDecoration
                                          .outlineBlueA7004c
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder7),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgFloatingicon15x13,
                                                height: getVerticalSize(15),
                                                width: getHorizontalSize(13)),
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgQrcode,
                                                height: getVerticalSize(15),
                                                width: getHorizontalSize(13),
                                                margin: getMargin(top: 8))
                                          ]))
                                ])),
                        CustomIconButton(
                            height: 70,
                            width: 70,
                            margin: getMargin(top: 40, bottom: 5),
                            variant: IconButtonVariant.OutlineBlueA70066,
                            shape: IconButtonShape.CircleBorder35,
                            padding: IconButtonPadding.PaddingAll23,
                            onTap: () {
                              onTapBtnArrowright(context);
                            },
                            child: CustomImageView(
                                svgPath: ImageConstant.imgArrowright))
                      ]))));
    });
  }

  onTapBtnArrowright(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.sendMoneyScreen,
    );
  }

  onTapArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }
}
