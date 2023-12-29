import 'bloc/forgot_password_bloc.dart';
import 'models/forgot_password_model.dart';
import 'package:bankapp/core/app_export.dart';
import 'package:bankapp/widgets/custom_button.dart';
import 'package:bankapp/widgets/custom_icon_button.dart';
import 'package:bankapp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ForgotPasswordBloc>(
        create: (context) => ForgotPasswordBloc(
            ForgotPasswordState(forgotPasswordModelObj: ForgotPasswordModel()))
          ..add(ForgotPasswordInitialEvent()),
        child: ForgotPasswordScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 8, right: 24, bottom: 8),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomIconButton(
                          height: 35,
                          width: 35,
                          alignment: Alignment.centerLeft,
                          onTap: () {
                            onTapBtnArrowleft(context);
                          },
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowleftBlack900)),
                      CustomImageView(
                          svgPath: ImageConstant.imgIllustrationBlueGray800,
                          height: getVerticalSize(210),
                          width: getHorizontalSize(280),
                          margin: getMargin(top: 66)),
                      Padding(
                          padding: getPadding(top: 41),
                          child: Text("lbl_forget_password".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold20)),
                      Container(
                          width: getHorizontalSize(245),
                          margin: getMargin(left: 41, top: 20, right: 41),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_please_enter_yo2".tr,
                                    style: TextStyle(
                                        color: ColorConstant.blueGray400,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500)),
                                TextSpan(
                                    text: "msg_verification_co".tr,
                                    style: TextStyle(
                                        color: ColorConstant.indigoA100,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500))
                              ]),
                              textAlign: TextAlign.center)),
                      BlocSelector<ForgotPasswordBloc, ForgotPasswordState,
                              TextEditingController?>(
                          selector: (state) => state.emailController,
                          builder: (context, emailController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: emailController,
                                hintText: "lbl_xyz_gmail_com".tr,
                                margin: getMargin(top: 25),
                                variant:
                                    TextFormFieldVariant.OutlineBluegray100,
                                shape: TextFormFieldShape.RoundedBorder13,
                                padding: TextFormFieldPadding.PaddingAll12,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.emailAddress);
                          }),
                      CustomButton(
                          height: getVerticalSize(50),
                          text: "lbl_send_email".tr,
                          margin: getMargin(top: 20, bottom: 5),
                          shape: ButtonShape.RoundedBorder13,
                          onTap: () {
                            onTapSendemail(context);
                          })
                    ]))));
  }

  onTapBtnArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }

  onTapSendemail(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.verifyEmailScreen,
    );
  }
}
