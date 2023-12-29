import 'bloc/login_bloc.dart';
import 'models/login_model.dart';
import 'package:bankapp/core/app_export.dart';
import 'package:bankapp/widgets/custom_button.dart';
import 'package:bankapp/widgets/custom_checkbox.dart';
import 'package:bankapp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(LoginState(loginModelObj: LoginModel()))
          ..add(LoginInitialEvent()),
        child: LoginPage());
  }

  onTapTxtRemebermeForgetOne(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.forgotPasswordScreen,
    );
  }

  onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.minePageContainerScreen,
    );
  }
}

class _LoginPageState extends State<LoginPage>
    with AutomaticKeepAliveClientMixin<LoginPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Padding(
                          padding: getPadding(left: 24, top: 38, right: 24),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant
                                        .imgIllustrationBlueGray900212x212,
                                    height: getSize(212),
                                    width: getSize(212),
                                    alignment: Alignment.center),
                                Padding(
                                    padding: getPadding(top: 78),
                                    child: Text("lbl_email".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsMedium16)),
                                BlocSelector<LoginBloc, LoginState,
                                        TextEditingController?>(
                                    selector: (state) =>
                                        state.emailOneController,
                                    builder: (context, emailOneController) {
                                      return CustomTextFormField(
                                          focusNode: FocusNode(),
                                          controller: emailOneController,
                                          hintText: "lbl_xyz_gmail_com".tr,
                                          margin: getMargin(left: 1, top: 1),
                                          textInputType:
                                              TextInputType.emailAddress,
                                          suffix: Container(
                                              margin: getMargin(
                                                  left: 30,
                                                  top: 3,
                                                  right: 1,
                                                  bottom: 3),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: ColorConstant
                                                          .indigoA100,
                                                      width:
                                                          getHorizontalSize(1),
                                                      strokeAlign:
                                                          strokeAlignCenter)),
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgCheckmarkIndigoA100)),
                                          suffixConstraints: BoxConstraints(
                                              maxHeight: getVerticalSize(26)));
                                    }),
                                Padding(
                                    padding: getPadding(top: 24),
                                    child: Text("lbl_password".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsMedium16)),
                                BlocSelector<LoginBloc, LoginState,
                                        TextEditingController?>(
                                    selector: (state) =>
                                        state.passwordOneController,
                                    builder: (context, passwordOneController) {
                                      return CustomTextFormField(
                                          focusNode: FocusNode(),
                                          controller: passwordOneController,
                                          hintText: "lbl_xyz123".tr,
                                          textInputAction: TextInputAction.done,
                                          suffix: Container(
                                              margin: getMargin(
                                                  left: 30,
                                                  top: 2,
                                                  right: 1,
                                                  bottom: 2),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: ColorConstant
                                                          .indigoA100,
                                                      width:
                                                          getHorizontalSize(1),
                                                      strokeAlign:
                                                          strokeAlignCenter)),
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgCheckmarkIndigoA100)),
                                          suffixConstraints: BoxConstraints(
                                              maxHeight: getVerticalSize(26)));
                                    }),
                                Padding(
                                    padding: getPadding(top: 24),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          BlocSelector<LoginBloc, LoginState,
                                                  bool?>(
                                              selector: (state) =>
                                                  state.isCheckbox,
                                              builder: (context, isCheckbox) {
                                                return CustomCheckbox(
                                                    text: "lbl_remember_me".tr,
                                                    iconSize:
                                                        getHorizontalSize(13),
                                                    value: isCheckbox,
                                                    margin:
                                                        getMargin(bottom: 1),
                                                    fontStyle: CheckboxFontStyle
                                                        .PoppinsRegular13,
                                                    onChange: (value) {
                                                      context
                                                          .read<LoginBloc>()
                                                          .add(
                                                              ChangeCheckBoxEvent(
                                                                  value:
                                                                      value));
                                                    });
                                              }),
                                          GestureDetector(
                                              onTap: () {
                                                onTapTxtRemebermeForgetOne(
                                                    context);
                                              },
                                              child: Padding(
                                                  padding: getPadding(top: 1),
                                                  child: Text(
                                                      "msg_forget_password".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsMedium13)))
                                        ])),
                                CustomButton(
                                    height: getVerticalSize(50),
                                    text: "lbl_login".tr,
                                    margin: getMargin(top: 22),
                                    shape: ButtonShape.RoundedBorder13,
                                    onTap: () {
                                      onTapLogin(context);
                                    }),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 34, top: 69, right: 34),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 1),
                                                  child: Text(
                                                      "msg_don_t_have_an_account"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsMedium16Bluegray400)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 5, top: 1),
                                                  child: Text("lbl_sign_up".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsSemiBold16))
                                            ])))
                              ]))
                    ])))));
  }

  onTapTxtRemebermeForgetOne(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.forgotPasswordScreen,
    );
  }

  onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.minePageContainerScreen,
    );
  }
}
