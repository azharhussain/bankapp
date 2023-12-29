import 'bloc/profile_bloc.dart';
import 'models/profile_model.dart';
import 'package:bankapp/core/app_export.dart';
import 'package:bankapp/widgets/app_bar/appbar_iconbutton.dart';
import 'package:bankapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:bankapp/widgets/app_bar/custom_app_bar.dart';
import 'package:bankapp/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileBloc>(
        create: (context) =>
            ProfileBloc(ProfileState(profileModelObj: ProfileModel()))
              ..add(ProfileInitialEvent()),
        child: ProfileScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              appBar: CustomAppBar(
                  height: getVerticalSize(49),
                  leadingWidth: 59,
                  leading: AppbarIconbutton(
                      svgPath: ImageConstant.imgArrowleftBlack900,
                      margin: getMargin(left: 24, top: 7, bottom: 7),
                      onTap: () {
                        onTapArrowleft9(context);
                      }),
                  centerTitle: true,
                  title: AppbarSubtitle(text: "lbl_profile".tr),
                  actions: [
                    AppbarIconbutton(
                        svgPath: ImageConstant.imgSettings,
                        margin:
                            getMargin(left: 25, top: 7, right: 25, bottom: 8))
                  ]),
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 24, top: 25, right: 24, bottom: 25),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: getPadding(left: 33, right: 33),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      height: getSize(80),
                                      width: getSize(80),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgEllipse31470x70,
                                                height: getSize(70),
                                                width: getSize(70),
                                                radius: BorderRadius.circular(
                                                    getHorizontalSize(35)),
                                                alignment: Alignment.center),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                    height: getSize(80),
                                                    width: getSize(80),
                                                    child:
                                                        CircularProgressIndicator(
                                                            value: 0.5)))
                                          ])),
                                  Padding(
                                      padding: getPadding(
                                          left: 15, top: 18, bottom: 17),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text("lbl_alex_dordan".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsMedium18),
                                            Padding(
                                                padding: getPadding(top: 1),
                                                child: Text(
                                                    "lbl_web_developer".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsMedium10Gray500))
                                          ])),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgPlay30x30,
                                      height: getSize(30),
                                      width: getSize(30),
                                      margin: getMargin(
                                          left: 26, top: 25, bottom: 25))
                                ])),
                        GestureDetector(
                            onTap: () {
                              onTapRowuser(context);
                            },
                            child: Padding(
                                padding: getPadding(top: 50, right: 1),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgUser,
                                          height: getSize(40),
                                          width: getSize(40)),
                                      Padding(
                                          padding: getPadding(
                                              left: 16, top: 10, bottom: 5),
                                          child: Text("lbl_settings".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsMedium16Black900)),
                                      Spacer(),
                                      CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowdownBlack900,
                                          height: getVerticalSize(8),
                                          width: getHorizontalSize(4),
                                          margin:
                                              getMargin(top: 16, bottom: 16))
                                    ]))),
                        Padding(
                            padding: getPadding(top: 20, right: 1),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                      svgPath: ImageConstant.imgIcon,
                                      height: getSize(40),
                                      width: getSize(40)),
                                  Padding(
                                      padding: getPadding(
                                          left: 16, top: 7, bottom: 8),
                                      child: Text("lbl_personal_info".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPoppinsMedium16Black900)),
                                  Spacer(),
                                  CustomImageView(
                                      svgPath:
                                          ImageConstant.imgArrowdownBlack900,
                                      height: getVerticalSize(8),
                                      width: getHorizontalSize(4),
                                      margin: getMargin(top: 16, bottom: 16))
                                ])),
                        Padding(
                            padding: getPadding(top: 20),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                      svgPath: ImageConstant.imgUser40x40,
                                      height: getSize(40),
                                      width: getSize(40)),
                                  Padding(
                                      padding: getPadding(
                                          left: 16, top: 7, bottom: 8),
                                      child: Text("lbl_notification".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPoppinsMedium16Black900)),
                                  Spacer(),
                                  Container(
                                      margin: getMargin(top: 13, bottom: 13),
                                      padding: getPadding(all: 4),
                                      decoration: AppDecoration.fillIndigoA100
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder7),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                                height: getSize(6),
                                                width: getSize(6),
                                                decoration: BoxDecoration(
                                                    color:
                                                        ColorConstant.whiteA700,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                3))))
                                          ]))
                                ])),
                        Padding(
                            padding: getPadding(top: 20, right: 1),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                      svgPath: ImageConstant.imgCheckmark40x40,
                                      height: getSize(40),
                                      width: getSize(40)),
                                  Padding(
                                      padding: getPadding(
                                          left: 16, top: 10, bottom: 5),
                                      child: Text("lbl_billing_details".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPoppinsMedium16Black900)),
                                  Spacer(),
                                  CustomImageView(
                                      svgPath:
                                          ImageConstant.imgArrowdownBlack900,
                                      height: getVerticalSize(8),
                                      width: getHorizontalSize(4),
                                      margin: getMargin(top: 16, bottom: 16))
                                ])),
                        Padding(
                            padding: getPadding(top: 20, right: 1),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                      svgPath: ImageConstant.imgFacebook40x40,
                                      height: getSize(40),
                                      width: getSize(40),
                                      onTap: () {
                                        onTapImgFacebook(context);
                                      }),
                                  Padding(
                                      padding: getPadding(
                                          left: 16, top: 7, bottom: 8),
                                      child: Text("lbl_transfer_funds".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPoppinsMedium16Black900)),
                                  Spacer(),
                                  CustomImageView(
                                      svgPath:
                                          ImageConstant.imgArrowdownBlack900,
                                      height: getVerticalSize(8),
                                      width: getHorizontalSize(4),
                                      margin: getMargin(top: 16, bottom: 16))
                                ])),
                        Padding(
                            padding: getPadding(top: 20),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.gray200)),
                        Padding(
                            padding: getPadding(top: 19, right: 1),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                      svgPath: ImageConstant.imgSignal,
                                      height: getSize(40),
                                      width: getSize(40)),
                                  Padding(
                                      padding: getPadding(
                                          left: 16, top: 10, bottom: 5),
                                      child: Text("msg_privacy_setting".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPoppinsMedium16Black900)),
                                  Spacer(),
                                  CustomImageView(
                                      svgPath:
                                          ImageConstant.imgArrowdownBlack900,
                                      height: getVerticalSize(8),
                                      width: getHorizontalSize(4),
                                      margin: getMargin(top: 16, bottom: 16))
                                ])),
                        Padding(
                            padding: getPadding(top: 20, right: 1, bottom: 5),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                      svgPath: ImageConstant.imgUser1,
                                      height: getSize(40),
                                      width: getSize(40)),
                                  Padding(
                                      padding: getPadding(
                                          left: 16, top: 9, bottom: 6),
                                      child: Text("lbl_community".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPoppinsMedium16Black900)),
                                  Spacer(),
                                  CustomImageView(
                                      svgPath:
                                          ImageConstant.imgArrowdownBlack900,
                                      height: getVerticalSize(8),
                                      width: getHorizontalSize(4),
                                      margin: getMargin(top: 16, bottom: 16))
                                ]))
                      ])),
              bottomNavigationBar: CustomButton(
                  height: getVerticalSize(50),
                  text: "lbl_log_out".tr,
                  margin: getMargin(left: 24, right: 24, bottom: 52),
                  padding: ButtonPadding.PaddingT13,
                  prefixWidget: Container(
                      margin: getMargin(right: 14),
                      child: CustomImageView(
                          svgPath: ImageConstant.imgIconWhiteA7001)))));
    });
  }

  onTapRowuser(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.settingsScreen,
    );
  }

  onTapImgFacebook(BuildContext context) async {
    var url = 'https://www.facebook.com/login/';
    if (!await launch(url)) {
      throw 'Could not launch https://www.facebook.com/login/';
    }
  }

  onTapArrowleft9(BuildContext context) {
    NavigatorService.goBack();
  }
}
