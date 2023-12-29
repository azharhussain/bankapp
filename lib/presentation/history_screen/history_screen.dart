import '../history_screen/widgets/listfire_item_widget.dart';
import '../history_screen/widgets/listvolume_item_widget.dart';
import '../history_screen/widgets/listwhatsapp_item_widget.dart';
import 'bloc/history_bloc.dart';
import 'models/history_model.dart';
import 'models/listfire_item_model.dart';
import 'models/listvolume_item_model.dart';
import 'models/listwhatsapp_item_model.dart';
import 'package:bankapp/core/app_export.dart';
import 'package:bankapp/widgets/app_bar/appbar_iconbutton.dart';
import 'package:bankapp/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:bankapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:bankapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<HistoryBloc>(
        create: (context) =>
            HistoryBloc(HistoryState(historyModelObj: HistoryModel()))
              ..add(HistoryInitialEvent()),
        child: HistoryScreen());
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
                      onTapArrowleft6(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_history".tr),
                actions: [
                  AppbarIconbutton2(
                      svgPath: ImageConstant.imgSearchBlack9001,
                      margin: getMargin(left: 24, top: 7, right: 24, bottom: 7))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 11, right: 24, bottom: 11),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(top: 15),
                          child: Text("lbl_today_25_june".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium10Gray500)),
                      Padding(
                          padding: getPadding(top: 17),
                          child: BlocSelector<HistoryBloc, HistoryState,
                                  HistoryModel?>(
                              selector: (state) => state.historyModelObj,
                              builder: (context, historyModelObj) {
                                return ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(15));
                                    },
                                    itemCount: historyModelObj
                                            ?.listfireItemList.length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      ListfireItemModel model = historyModelObj
                                              ?.listfireItemList[index] ??
                                          ListfireItemModel();
                                      return ListfireItemWidget(model);
                                    });
                              })),
                      Padding(
                          padding: getPadding(top: 22),
                          child: Text("lbl_yesterday".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium10Gray500)),
                      Padding(
                          padding: getPadding(top: 17),
                          child: BlocSelector<HistoryBloc, HistoryState,
                                  HistoryModel?>(
                              selector: (state) => state.historyModelObj,
                              builder: (context, historyModelObj) {
                                return ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(15));
                                    },
                                    itemCount: historyModelObj
                                            ?.listvolumeItemList.length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      ListvolumeItemModel model =
                                          historyModelObj
                                                  ?.listvolumeItemList[index] ??
                                              ListvolumeItemModel();
                                      return ListvolumeItemWidget(model);
                                    });
                              })),
                      Padding(
                          padding: getPadding(top: 21),
                          child: Text("lbl_20_june_20222".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium10Gray500)),
                      Padding(
                          padding: getPadding(left: 1, top: 17),
                          child: BlocSelector<HistoryBloc, HistoryState,
                                  HistoryModel?>(
                              selector: (state) => state.historyModelObj,
                              builder: (context, historyModelObj) {
                                return ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(15));
                                    },
                                    itemCount: historyModelObj
                                            ?.listwhatsappItemList.length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      ListwhatsappItemModel model =
                                          historyModelObj?.listwhatsappItemList[
                                                  index] ??
                                              ListwhatsappItemModel();
                                      return ListwhatsappItemWidget(model);
                                    });
                              }))
                    ]))));
  }

  onTapArrowleft6(BuildContext context) {
    NavigatorService.goBack();
  }
}
