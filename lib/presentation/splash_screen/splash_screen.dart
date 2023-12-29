import 'bloc/splash_bloc.dart';
import 'models/splash_model.dart';
import 'package:bankapp/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SplashBloc>(
        create: (context) =>
            SplashBloc(SplashState(splashModelObj: SplashModel()))
              ..add(SplashInitialEvent()),
        child: SplashScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashBloc, SplashState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.indigoA100,
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 74, right: 74),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding: getPadding(right: 19, bottom: 5),
                            child: Row(children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgVideocamera,
                                  height: getVerticalSize(32),
                                  width: getHorizontalSize(37),
                                  margin: getMargin(top: 9, bottom: 8)),
                              Expanded(
                                  child: Padding(
                                      padding: getPadding(left: 14),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text("lbl_safebank".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtProximaNovaABold28
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                1.82))),
                                            Text(
                                                "msg_we_serve_with_f"
                                                    .tr
                                                    .toUpperCase(),
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsMedium10
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                1.6)))
                                          ])))
                            ]))
                      ]))));
    });
  }
}
