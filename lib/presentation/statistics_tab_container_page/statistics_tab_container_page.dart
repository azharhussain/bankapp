import 'bloc/statistics_tab_container_bloc.dart';
import 'models/statistics_tab_container_model.dart';
import 'package:bankapp/core/app_export.dart';
import 'package:bankapp/presentation/statistics_page/statistics_page.dart';
import 'package:bankapp/widgets/app_bar/appbar_iconbutton.dart';
import 'package:bankapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:bankapp/widgets/app_bar/custom_app_bar.dart';
import 'package:bankapp/widgets/custom_drop_down.dart';
import 'package:flutter/material.dart';

class StatisticsTabContainerPage extends StatefulWidget {
  @override
  _StatisticsTabContainerPageState createState() =>
      _StatisticsTabContainerPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<StatisticsTabContainerBloc>(
        create: (context) => StatisticsTabContainerBloc(
            StatisticsTabContainerState(
                statisticsTabContainerModelObj: StatisticsTabContainerModel()))
          ..add(StatisticsTabContainerInitialEvent()),
        child: StatisticsTabContainerPage());
  }

  onTapArrowleft2(BuildContext context) {
    NavigatorService.goBack();
  }
}

// ignore_for_file: must_be_immutable
class _StatisticsTabContainerPageState extends State<StatisticsTabContainerPage>
    with TickerProviderStateMixin {
  late TabController incomeController;

  @override
  void initState() {
    super.initState();
    incomeController = TabController(length: 2, vsync: this);
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
                      onTapArrowleft2(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_statistics".tr),
                actions: [
                  AppbarIconbutton(
                      svgPath: ImageConstant.imgVolumeBlack900,
                      margin: getMargin(left: 24, top: 7, right: 24, bottom: 7))
                ]),
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(top: 25),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("lbl_1_500_00".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium30),
                                BlocSelector<
                                        StatisticsTabContainerBloc,
                                        StatisticsTabContainerState,
                                        StatisticsTabContainerModel?>(
                                    selector: (state) =>
                                        state.statisticsTabContainerModelObj,
                                    builder: (context,
                                        statisticsTabContainerModelObj) {
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
                                          items: statisticsTabContainerModelObj
                                                  ?.dropdownItemList ??
                                              [],
                                          onChanged: (value) {
                                            context
                                                .read<
                                                    StatisticsTabContainerBloc>()
                                                .add(ChangeDropDownEvent(
                                                    value: value));
                                          });
                                    })
                              ])),
                      Container(
                          margin: getMargin(left: 24, top: 23, right: 24),
                          padding: getPadding(top: 10, bottom: 10),
                          decoration: AppDecoration.outlineBlack9000c.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder7),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                    padding: getPadding(top: 4, bottom: 2),
                                    child: Text("lbl_d".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsMedium15Gray500)),
                                Container(
                                    height: getVerticalSize(30),
                                    width: getHorizontalSize(197),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgElementGray300,
                                              height: getVerticalSize(15),
                                              width: getHorizontalSize(197),
                                              alignment: Alignment.center),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            top: 4, bottom: 2),
                                                        child: Text("lbl_m".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsMedium15Gray500)),
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                65),
                                                        margin:
                                                            getMargin(left: 27),
                                                        padding: getPadding(
                                                            left: 25,
                                                            top: 2,
                                                            right: 25,
                                                            bottom: 2),
                                                        decoration: AppDecoration
                                                            .txtFillIndigoA100
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .txtRoundedBorder7),
                                                        child: Text("lbl_w".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsMedium15WhiteA700)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 27,
                                                            top: 4,
                                                            bottom: 2),
                                                        child: Text("lbl_y".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsMedium15Gray500))
                                                  ]))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 4, bottom: 4),
                                    child: Text("lbl_all".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsMedium14Bluegray100))
                              ])),
                      Padding(
                          padding: getPadding(left: 24, top: 40, right: 24),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(top: 4, bottom: 3),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(left: 1),
                                              child: Text("lbl_sun".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium10Gray500)),
                                          Padding(
                                              padding: getPadding(top: 8),
                                              child: Text("lbl_mon".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium10Gray500)),
                                          Padding(
                                              padding:
                                                  getPadding(left: 1, top: 8),
                                              child: Text("lbl_tue".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium10Gray500)),
                                          Padding(
                                              padding:
                                                  getPadding(left: 1, top: 7),
                                              child: Text("lbl_wed".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium10Gray500)),
                                          Padding(
                                              padding:
                                                  getPadding(left: 1, top: 8),
                                              child: Text("lbl_thu".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium10Gray500)),
                                          Padding(
                                              padding:
                                                  getPadding(left: 1, top: 6),
                                              child: Text("lbl_fri".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium10Gray500)),
                                          Padding(
                                              padding:
                                                  getPadding(left: 1, top: 8),
                                              child: Text("lbl_sat".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium10Gray500))
                                        ])),
                                CustomImageView(
                                    svgPath: ImageConstant.imgGraph,
                                    height: getVerticalSize(161),
                                    width: getHorizontalSize(291),
                                    margin: getMargin(left: 11))
                              ])),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(left: 55, top: 9, right: 28),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text("lbl_0".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtPoppinsMedium11Gray500),
                                    Padding(
                                        padding: getPadding(left: 42),
                                        child: Text("lbl_20".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsMedium11Gray500)),
                                    Padding(
                                        padding: getPadding(left: 43),
                                        child: Text("lbl_40".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsMedium11Gray500)),
                                    Padding(
                                        padding: getPadding(left: 41),
                                        child: Text("lbl_60".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsMedium11Gray500)),
                                    Padding(
                                        padding: getPadding(left: 41),
                                        child: Text("lbl_80".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsMedium11Gray500)),
                                    Padding(
                                        padding: getPadding(left: 39),
                                        child: Text("lbl_100".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsMedium11Gray500))
                                  ]))),
                      Container(
                          height: getVerticalSize(50),
                          width: getHorizontalSize(240),
                          margin: getMargin(top: 30),
                          decoration: BoxDecoration(
                              color: ColorConstant.gray100,
                              borderRadius:
                                  BorderRadius.circular(getHorizontalSize(10))),
                          child: TabBar(
                              controller: incomeController,
                              labelColor: ColorConstant.whiteA700,
                              labelStyle: TextStyle(
                                  fontSize: getFontSize(14),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500),
                              unselectedLabelColor: ColorConstant.black900,
                              unselectedLabelStyle: TextStyle(
                                  fontSize: getFontSize(14),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500),
                              indicatorPadding: getPadding(all: 5.0),
                              indicator: BoxDecoration(
                                  color: ColorConstant.indigoA100,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(7))),
                              tabs: [
                                Tab(
                                    child: Text("lbl_income".tr,
                                        overflow: TextOverflow.ellipsis)),
                                Tab(
                                    child: Text("lbl_expense".tr,
                                        overflow: TextOverflow.ellipsis))
                              ])),
                      Container(
                          height: getVerticalSize(183),
                          child: TabBarView(
                              controller: incomeController,
                              children: [
                                StatisticsPage.builder(context),
                                StatisticsPage.builder(context)
                              ]))
                    ]))));
  }

  onTapArrowleft2(BuildContext context) {
    NavigatorService.goBack();
  }
}
