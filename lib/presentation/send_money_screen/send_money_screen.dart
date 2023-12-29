import '../send_money_screen/widgets/listellipse311_item_widget.dart';
import '../send_money_screen/widgets/listone_item_widget.dart';
import 'bloc/send_money_bloc.dart';
import 'models/listellipse311_item_model.dart';
import 'models/listone_item_model.dart';
import 'models/send_money_model.dart';
import 'package:bankapp/core/app_export.dart';
import 'package:bankapp/widgets/app_bar/appbar_iconbutton.dart';
import 'package:bankapp/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:bankapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:bankapp/widgets/app_bar/custom_app_bar.dart';
import 'package:bankapp/widgets/custom_button.dart';
import 'package:bankapp/widgets/custom_drop_down.dart';
import 'package:flutter/material.dart';

class SendMoneyScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SendMoneyBloc>(
        create: (context) =>
            SendMoneyBloc(SendMoneyState(sendMoneyModelObj: SendMoneyModel()))
              ..add(SendMoneyInitialEvent()),
        child: SendMoneyScreen());
  }

  @override
  Widget build(BuildContext context) {
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
                      onTapArrowleft1(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_send_money2".tr),
                actions: [
                  AppbarIconbutton1(
                      svgPath: ImageConstant.imgGlobe,
                      margin: getMargin(left: 24, top: 7, right: 24, bottom: 7))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 25, right: 24, bottom: 25),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BlocSelector<SendMoneyBloc, SendMoneyState,
                              SendMoneyModel?>(
                          selector: (state) => state.sendMoneyModelObj,
                          builder: (context, sendMoneyModelObj) {
                            return ListView.separated(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                separatorBuilder: (context, index) {
                                  return SizedBox(height: getVerticalSize(16));
                                },
                                itemCount: sendMoneyModelObj
                                        ?.listellipse311ItemList.length ??
                                    0,
                                itemBuilder: (context, index) {
                                  Listellipse311ItemModel model =
                                      sendMoneyModelObj
                                              ?.listellipse311ItemList[index] ??
                                          Listellipse311ItemModel();
                                  return Listellipse311ItemWidget(model);
                                });
                          }),
                      Padding(
                          padding: getPadding(top: 42),
                          child: Text("msg_enter_your_acco".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium16Bluegray400)),
                      Padding(
                          padding: getPadding(left: 44, top: 18, right: 45),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("lbl_1_500_00".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium30),
                                BlocSelector<SendMoneyBloc, SendMoneyState,
                                        SendMoneyModel?>(
                                    selector: (state) =>
                                        state.sendMoneyModelObj,
                                    builder: (context, sendMoneyModelObj) {
                                      return CustomDropDown(
                                          width: getHorizontalSize(70),
                                          focusNode: FocusNode(),
                                          icon: Container(
                                              margin: getMargin(
                                                  left: 10, right: 14),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color:
                                                          ColorConstant.gray500,
                                                      width:
                                                          getHorizontalSize(1),
                                                      strokeAlign:
                                                          strokeAlignCenter)),
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowdownGray500)),
                                          hintText: "lbl_usd".tr,
                                          margin: getMargin(
                                              left: 27, top: 7, bottom: 7),
                                          items: sendMoneyModelObj
                                                  ?.dropdownItemList ??
                                              [],
                                          onChanged: (value) {
                                            context.read<SendMoneyBloc>().add(
                                                ChangeDropDownEvent(
                                                    value: value));
                                          });
                                    })
                              ])),
                      Container(
                          height: getVerticalSize(229),
                          width: getHorizontalSize(325),
                          margin: getMargin(top: 46, bottom: 2),
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding: getPadding(left: 46, right: 45),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(right: 4),
                                              child: BlocSelector<
                                                      SendMoneyBloc,
                                                      SendMoneyState,
                                                      SendMoneyModel?>(
                                                  selector: (state) =>
                                                      state.sendMoneyModelObj,
                                                  builder: (context,
                                                      sendMoneyModelObj) {
                                                    return ListView.separated(
                                                        physics:
                                                            NeverScrollableScrollPhysics(),
                                                        shrinkWrap: true,
                                                        separatorBuilder:
                                                            (context, index) {
                                                          return SizedBox(
                                                              height:
                                                                  getVerticalSize(
                                                                      23));
                                                        },
                                                        itemCount: sendMoneyModelObj
                                                                ?.listoneItemList
                                                                .length ??
                                                            0,
                                                        itemBuilder:
                                                            (context, index) {
                                                          ListoneItemModel
                                                              model =
                                                              sendMoneyModelObj
                                                                          ?.listoneItemList[
                                                                      index] ??
                                                                  ListoneItemModel();
                                                          return ListoneItemWidget(
                                                              model);
                                                        });
                                                  })),
                                          Padding(
                                              padding: getPadding(top: 26),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Text("lbl_0".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsMedium20),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgArrowleftGray900,
                                                        height:
                                                            getVerticalSize(10),
                                                        width:
                                                            getHorizontalSize(
                                                                16),
                                                        margin: getMargin(
                                                            left: 95,
                                                            top: 10,
                                                            bottom: 9))
                                                  ]))
                                        ]))),
                            CustomImageView(
                                svgPath: ImageConstant.imgElementGray200,
                                height: getVerticalSize(229),
                                width: getHorizontalSize(325),
                                alignment: Alignment.center)
                          ]))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(50),
                text: "lbl_send_money".tr,
                margin: getMargin(left: 24, right: 24, bottom: 36))));
  }

  onTapArrowleft1(BuildContext context) {
    NavigatorService.goBack();
  }
}
