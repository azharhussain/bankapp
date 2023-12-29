import 'bloc/atm_location_bloc.dart';
import 'dart:async';
import 'models/atm_location_model.dart';
import 'package:bankapp/core/app_export.dart';
import 'package:bankapp/widgets/app_bar/appbar_iconbutton.dart';
import 'package:bankapp/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:bankapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:bankapp/widgets/app_bar/custom_app_bar.dart';
import 'package:bankapp/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// ignore_for_file: must_be_immutable
class AtmLocationScreen extends StatelessWidget {
  Completer<GoogleMapController> googleMapController = Completer();

  static Widget builder(BuildContext context) {
    return BlocProvider<AtmLocationBloc>(
        create: (context) => AtmLocationBloc(
            AtmLocationState(atmLocationModelObj: AtmLocationModel()))
          ..add(AtmLocationInitialEvent()),
        child: AtmLocationScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AtmLocationBloc, AtmLocationState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              body: Container(
                  height: size.height,
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.topCenter, children: [
                    Container(
                        height: size.height,
                        width: double.maxFinite,
                        child: GoogleMap(
                            mapType: MapType.normal,
                            initialCameraPosition: CameraPosition(
                                target: LatLng(
                                    37.43296265331129, -122.08832357078792),
                                zoom: 14.4746),
                            onMapCreated: (GoogleMapController controller) {
                              googleMapController.complete(controller);
                            },
                            zoomControlsEnabled: false,
                            zoomGesturesEnabled: false,
                            myLocationButtonEnabled: false,
                            myLocationEnabled: false)),
                    Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                            padding: getPadding(
                                left: 24, top: 7, right: 23, bottom: 50),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomAppBar(
                                      height: getVerticalSize(35),
                                      leadingWidth: 59,
                                      leading: AppbarIconbutton(
                                          svgPath: ImageConstant
                                              .imgArrowleftBlack900,
                                          margin: getMargin(left: 24),
                                          onTap: () {
                                            onTapArrowleft8(context);
                                          }),
                                      centerTitle: true,
                                      title: AppbarSubtitle(
                                          text: "lbl_atm_location".tr),
                                      actions: [
                                        AppbarIconbutton1(
                                            svgPath: ImageConstant.imgGlobe,
                                            margin:
                                                getMargin(left: 24, right: 24))
                                      ]),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgBanklogo,
                                      height: getVerticalSize(342),
                                      width: getHorizontalSize(263),
                                      margin: getMargin(top: 79)),
                                  Spacer(),
                                  Container(
                                      padding: getPadding(top: 15, bottom: 15),
                                      decoration: AppDecoration.fillWhiteA700
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder20),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            CustomImageView(
                                                svgPath: ImageConstant.imgMusic,
                                                height: getSize(70),
                                                width: getSize(70)),
                                            Padding(
                                                padding: getPadding(
                                                    top: 3, bottom: 3),
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                          "lbl_national_bank"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsMedium16Black900),
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  144),
                                                          margin:
                                                              getMargin(top: 5),
                                                          child: Text(
                                                              "msg_24084_standard"
                                                                  .tr,
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsMedium11Bluegray400))
                                                    ])),
                                            CustomIconButton(
                                                height: 30,
                                                width: 30,
                                                margin: getMargin(
                                                    top: 20, bottom: 20),
                                                variant: IconButtonVariant
                                                    .FillIndigoA100,
                                                shape: IconButtonShape
                                                    .RoundedBorder7,
                                                child: CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgSend))
                                          ]))
                                ])))
                  ]))));
    });
  }

  onTapArrowleft8(BuildContext context) {
    NavigatorService.goBack();
  }
}
