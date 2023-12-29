import 'bloc/confirmation_bloc.dart';
import 'models/confirmation_model.dart';
import 'package:bankapp/core/app_export.dart';
import 'package:bankapp/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ConfirmationScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ConfirmationBloc>(
        create: (context) => ConfirmationBloc(
            ConfirmationState(confirmationModelObj: ConfirmationModel()))
          ..add(ConfirmationInitialEvent()),
        child: ConfirmationScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConfirmationBloc, ConfirmationState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 24, right: 24),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding: getPadding(right: 85),
                            child: Text("lbl_confirmation".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsSemiBold18)),
                        CustomImageView(
                            svgPath: ImageConstant.imgIllustrationGray10001,
                            height: getVerticalSize(200),
                            width: getHorizontalSize(179),
                            margin: getMargin(top: 70, right: 62)),
                        CustomButton(
                            height: getVerticalSize(50),
                            text: "lbl_back_home".tr,
                            margin: getMargin(top: 70, bottom: 5),
                            onTap: () {
                              onTapBackhome(context);
                            })
                      ]))));
    });
  }

  onTapBackhome(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.minePageContainerScreen,
    );
  }
}
