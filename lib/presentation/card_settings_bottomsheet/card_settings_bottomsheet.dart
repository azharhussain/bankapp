import 'bloc/card_settings_bloc.dart';
import 'models/card_settings_model.dart';
import 'package:bankapp/core/app_export.dart';
import 'package:bankapp/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

class CardSettingsBottomsheet extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<CardSettingsBloc>(
        create: (context) => CardSettingsBloc(
            CardSettingsState(cardSettingsModelObj: CardSettingsModel()))
          ..add(CardSettingsInitialEvent()),
        child: CardSettingsBottomsheet());
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            width: double.maxFinite,
            child: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 22, right: 24, bottom: 22),
                decoration: AppDecoration.fillWhiteA700
                    .copyWith(borderRadius: BorderRadiusStyle.customBorderTL40),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 15, right: 17),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("lbl_card".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsSemiBold18),
                                CustomImageView(
                                    svgPath: ImageConstant.imgCloseBlack900,
                                    height: getSize(18),
                                    width: getSize(18),
                                    margin: getMargin(top: 4, bottom: 4),
                                    onTap: () {
                                      onTapImgClose(context);
                                    })
                              ])),
                      Padding(
                          padding: getPadding(left: 15, top: 27, right: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgVectorRedA700,
                                    height: getVerticalSize(23),
                                    width: getHorizontalSize(198)),
                                Padding(
                                    padding: getPadding(top: 4, bottom: 4),
                                    child: BlocSelector<CardSettingsBloc,
                                            CardSettingsState, String?>(
                                        selector: (state) => state.radioGroup,
                                        builder: (context, radioGroup) {
                                          return CustomRadioButton(
                                              width: getHorizontalSize(15),
                                              iconSize: getHorizontalSize(15),
                                              value: "",
                                              groupValue: radioGroup,
                                              margin:
                                                  getMargin(top: 4, bottom: 4),
                                              isRightCheck: true,
                                              onChange: (value) {
                                                context
                                                    .read<CardSettingsBloc>()
                                                    .add(ChangeRadioButtonEvent(
                                                        value: value));
                                              });
                                        }))
                              ])),
                      Container(
                          margin: getMargin(top: 29),
                          padding: getPadding(
                              left: 15, top: 14, right: 15, bottom: 14),
                          decoration: AppDecoration.outlineBlack9000c.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder7),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgVectorRedA70023x198,
                                    height: getVerticalSize(23),
                                    width: getHorizontalSize(198),
                                    margin: getMargin(top: 1)),
                                Padding(
                                    padding:
                                        getPadding(top: 5, right: 5, bottom: 4),
                                    child: BlocSelector<CardSettingsBloc,
                                            CardSettingsState, String?>(
                                        selector: (state) => state.radioGroup1,
                                        builder: (context, radioGroup1) {
                                          return CustomRadioButton(
                                              width: getHorizontalSize(15),
                                              iconSize: getHorizontalSize(15),
                                              value: "",
                                              groupValue: radioGroup1,
                                              margin: getMargin(
                                                  top: 5, right: 5, bottom: 4),
                                              isRightCheck: true,
                                              onChange: (value) {
                                                context
                                                    .read<CardSettingsBloc>()
                                                    .add(
                                                        ChangeRadioButton1Event(
                                                            value: value));
                                              });
                                        }))
                              ])),
                      Container(
                          margin: getMargin(top: 15, bottom: 47),
                          padding: getPadding(
                              left: 15, top: 18, right: 15, bottom: 18),
                          decoration: AppDecoration.outlineBlack9000c.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder7),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgVectorIndigoA10015x210,
                                    height: getVerticalSize(15),
                                    width: getHorizontalSize(210),
                                    margin: getMargin(top: 1)),
                                Padding(
                                    padding: getPadding(top: 1, right: 5),
                                    child: BlocSelector<CardSettingsBloc,
                                            CardSettingsState, String?>(
                                        selector: (state) => state.radioGroup2,
                                        builder: (context, radioGroup2) {
                                          return CustomRadioButton(
                                              width: getHorizontalSize(15),
                                              value: "",
                                              groupValue: radioGroup2,
                                              margin:
                                                  getMargin(top: 1, right: 5),
                                              onChange: (value) {
                                                context
                                                    .read<CardSettingsBloc>()
                                                    .add(
                                                        ChangeRadioButton2Event(
                                                            value: value));
                                              });
                                        }))
                              ]))
                    ]))));
  }

  onTapImgClose(BuildContext context) {
    NavigatorService.goBack();
  }
}
