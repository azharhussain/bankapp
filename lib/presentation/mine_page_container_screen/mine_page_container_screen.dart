import 'bloc/mine_page_container_bloc.dart';
import 'models/mine_page_container_model.dart';
import 'package:bankapp/core/app_export.dart';
import 'package:bankapp/presentation/mine_page/mine_page.dart';
import 'package:bankapp/presentation/national_bank_page/national_bank_page.dart';
import 'package:bankapp/presentation/statistics_tab_container_page/statistics_tab_container_page.dart';
import 'package:bankapp/widgets/custom_bottom_app_bar.dart';
import 'package:bankapp/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MinePageContainerScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<MinePageContainerBloc>(
        create: (context) => MinePageContainerBloc(MinePageContainerState(
            minePageContainerModelObj: MinePageContainerModel()))
          ..add(MinePageContainerInitialEvent()),
        child: MinePageContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MinePageContainerBloc, MinePageContainerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.minePage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
              bottomNavigationBar:
                  CustomBottomAppBar(onChanged: (BottomBarEnum type) {
                Navigator.pushNamed(
                    navigatorKey.currentContext!, getCurrentRoute(type));
              }),
              floatingActionButton: CustomFloatingButton(
                  height: 50,
                  width: 50,
                  child: CustomImageView(
                      svgPath: ImageConstant.imgQrcodeWhiteA700,
                      height: getVerticalSize(25.0),
                      width: getHorizontalSize(25.0))),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Lock:
        return AppRoutes.minePage;
      case BottomBarEnum.Checkmarkgray500:
        return AppRoutes.statisticsTabContainerPage;
      case BottomBarEnum.Computergray500:
        return AppRoutes.nationalBankPage;
      case BottomBarEnum.Searchgray5002:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.minePage:
        return MinePage.builder(context);
      case AppRoutes.statisticsTabContainerPage:
        return StatisticsTabContainerPage.builder(context);
      case AppRoutes.nationalBankPage:
        return NationalBankPage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
