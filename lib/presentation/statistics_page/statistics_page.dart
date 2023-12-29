import '../statistics_page/widgets/statistics_item_widget.dart';
import 'bloc/statistics_bloc.dart';
import 'models/statistics_item_model.dart';
import 'models/statistics_model.dart';
import 'package:bankapp/core/app_export.dart';
import 'package:flutter/material.dart';

class StatisticsPage extends StatefulWidget {
  @override
  _StatisticsPageState createState() => _StatisticsPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<StatisticsBloc>(
        create: (context) => StatisticsBloc(
            StatisticsState(statisticsModelObj: StatisticsModel()))
          ..add(StatisticsInitialEvent()),
        child: StatisticsPage());
  }

  onTapTxtSeeAll(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.historyScreen,
    );
  }
}

class _StatisticsPageState extends State<StatisticsPage>
    with AutomaticKeepAliveClientMixin<StatisticsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Padding(
                          padding: getPadding(left: 24, top: 22, right: 24),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("lbl_recent_transfer".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsSemiBold18),
                                      GestureDetector(
                                          onTap: () {
                                            onTapTxtSeeAll(context);
                                          },
                                          child: Padding(
                                              padding:
                                                  getPadding(top: 5, bottom: 3),
                                              child: Text("lbl_see_all".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium12)))
                                    ]),
                                Padding(
                                    padding: getPadding(left: 1, top: 13),
                                    child: BlocSelector<StatisticsBloc,
                                            StatisticsState, StatisticsModel?>(
                                        selector: (state) =>
                                            state.statisticsModelObj,
                                        builder: (context, statisticsModelObj) {
                                          return ListView.separated(
                                              physics:
                                                  NeverScrollableScrollPhysics(),
                                              shrinkWrap: true,
                                              separatorBuilder:
                                                  (context, index) {
                                                return SizedBox(
                                                    height:
                                                        getVerticalSize(15));
                                              },
                                              itemCount: statisticsModelObj
                                                      ?.statisticsItemList
                                                      .length ??
                                                  0,
                                              itemBuilder: (context, index) {
                                                StatisticsItemModel model =
                                                    statisticsModelObj
                                                                ?.statisticsItemList[
                                                            index] ??
                                                        StatisticsItemModel();
                                                return StatisticsItemWidget(
                                                    model);
                                              });
                                        }))
                              ]))
                    ])))));
  }

  onTapTxtSeeAll(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.historyScreen,
    );
  }
}
