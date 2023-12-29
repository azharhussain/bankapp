import '../mine_page/widgets/minepage_item_widget.dart';
import 'bloc/mine_bloc.dart';
import 'models/mine_model.dart';
import 'models/minepage_item_model.dart';
import 'package:bankapp/core/app_export.dart';
import 'package:bankapp/widgets/app_bar/custom_app_bar.dart';
import 'package:bankapp/widgets/custom_button.dart';
import 'package:bankapp/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class MinePage extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<MineBloc>(
        create: (context) => MineBloc(MineState(mineModelObj: MineModel()))
          ..add(MineInitialEvent()),
        child: MinePage());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(52),
                title: Container(
                    width: getHorizontalSize(111),
                    margin: getMargin(left: 24),
                    child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "lbl_hello_alex".tr,
                              style: TextStyle(
                                  color: ColorConstant.black900,
                                  fontSize: getFontSize(20),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600)),
                          TextSpan(
                              text: "lbl_welcome_back".tr,
                              style: TextStyle(
                                  color: ColorConstant.gray500,
                                  fontSize: getFontSize(14),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500))
                        ]),
                        textAlign: TextAlign.left)),
                actions: [
                  CustomImageView(
                      imagePath: ImageConstant.imgEllipse30840x40,
                      height: getSize(40),
                      width: getSize(40),
                      radius: BorderRadius.circular(getHorizontalSize(20)),
                      margin: getMargin(left: 24, top: 6, right: 24, bottom: 6))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 21, right: 24, bottom: 21),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgFrame2261,
                                height: getVerticalSize(163),
                                width: getHorizontalSize(256)),
                            Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 0,
                                margin: EdgeInsets.all(0),
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: ColorConstant.blueGray100,
                                        width: getHorizontalSize(1)),
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder13),
                                child: Container(
                                    height: getVerticalSize(163),
                                    width: getHorizontalSize(55),
                                    padding: getPadding(
                                        left: 22, top: 76, right: 22),
                                    decoration: AppDecoration
                                        .outlineBluegray1002
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder13),
                                    child: Stack(children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgGrid,
                                          height: getSize(10),
                                          width: getSize(10),
                                          alignment: Alignment.topLeft)
                                    ])))
                          ]),
                      Padding(
                          padding: getPadding(top: 24),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomButton(
                                    height: getVerticalSize(40),
                                    width: getHorizontalSize(125),
                                    text: "lbl_transfer".tr,
                                    variant: ButtonVariant.FillDeeppurple300,
                                    padding: ButtonPadding.PaddingT10,
                                    fontStyle: ButtonFontStyle.PoppinsMedium14,
                                    prefixWidget: Container(
                                        margin: getMargin(right: 9),
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgFrame242)),
                                    onTap: () {
                                      onTapTransfer(context);
                                    }),
                                CustomButton(
                                    height: getVerticalSize(40),
                                    width: getHorizontalSize(125),
                                    text: "lbl_request".tr,
                                    variant: ButtonVariant.FillTeal300,
                                    padding: ButtonPadding.PaddingT10,
                                    fontStyle: ButtonFontStyle.PoppinsMedium14,
                                    prefixWidget: Container(
                                        margin: getMargin(right: 8),
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgFrame243)),
                                    onTap: () {
                                      onTapRequest(context);
                                    }),
                                CustomIconButton(
                                    height: 40,
                                    width: 40,
                                    variant: IconButtonVariant.FillGray50,
                                    shape: IconButtonShape.RoundedBorder7,
                                    padding: IconButtonPadding.PaddingAll12,
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgMore))
                              ])),
                      Padding(
                          padding: getPadding(top: 23),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_recent_transfer".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsSemiBold18),
                                Padding(
                                    padding: getPadding(top: 5, bottom: 3),
                                    child: Text("lbl_see_all".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsMedium12))
                              ])),
                      Padding(
                          padding: getPadding(left: 1, top: 13, bottom: 52),
                          child: BlocSelector<MineBloc, MineState, MineModel?>(
                              selector: (state) => state.mineModelObj,
                              builder: (context, mineModelObj) {
                                return ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(15));
                                    },
                                    itemCount:
                                        mineModelObj?.minepageItemList.length ??
                                            0,
                                    itemBuilder: (context, index) {
                                      MinepageItemModel model = mineModelObj
                                              ?.minepageItemList[index] ??
                                          MinepageItemModel();
                                      return MinepageItemWidget(model);
                                    });
                              }))
                    ]))));
  }

  onTapTransfer(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.transferScreen,
    );
  }

  onTapRequest(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.transferRequestScreen,
    );
  }
}
