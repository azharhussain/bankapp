import 'bloc/sign_up_bloc.dart';
import 'models/sign_up_model.dart';
import 'package:bankapp/core/app_export.dart';
import 'package:bankapp/widgets/custom_button.dart';
import 'package:bankapp/widgets/custom_drop_down.dart';
import 'package:bankapp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpBloc>(
      create: (context) => SignUpBloc(SignUpState(
        signUpModelObj: SignUpModel(),
      ))
        ..add(SignUpInitialEvent()),
      child: SignUpPage(),
    );
  }
}

class _SignUpPageState extends State<SignUpPage>
    with AutomaticKeepAliveClientMixin<SignUpPage> {
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
                  padding: getPadding(
                    left: 24,
                    top: 70,
                    right: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_name".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsMedium16,
                      ),
                      BlocSelector<SignUpBloc, SignUpState,
                          TextEditingController?>(
                        selector: (state) => state.languageController,
                        builder: (context, languageController) {
                          return CustomTextFormField(
                            focusNode: FocusNode(),
                            controller: languageController,
                            hintText: "msg_dmitry_ponomarev".tr,
                            margin: getMargin(
                              left: 1,
                            ),
                            suffix: Container(
                              margin: getMargin(
                                left: 30,
                                top: 4,
                                bottom: 4,
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: ColorConstant.indigoA100,
                                  width: getHorizontalSize(
                                    1,
                                  ),
                                  strokeAlign: strokeAlignCenter,
                                ),
                              ),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgCheckmarkIndigoA100,
                              ),
                            ),
                            suffixConstraints: BoxConstraints(
                              maxHeight: getVerticalSize(
                                27,
                              ),
                            ),
                          );
                        },
                      ),
                      Padding(
                        padding: getPadding(
                          top: 22,
                        ),
                        child: Text(
                          "lbl_email".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium16,
                        ),
                      ),
                      BlocSelector<SignUpBloc, SignUpState,
                          TextEditingController?>(
                        selector: (state) => state.emailOneController,
                        builder: (context, emailOneController) {
                          return CustomTextFormField(
                            focusNode: FocusNode(),
                            controller: emailOneController,
                            hintText: "lbl_xyz_gmail_com".tr,
                            margin: getMargin(
                              left: 1,
                              top: 1,
                            ),
                            textInputType: TextInputType.emailAddress,
                          );
                        },
                      ),
                      Container(
                        height: getVerticalSize(
                          51,
                        ),
                        width: getHorizontalSize(
                          327,
                        ),
                        margin: getMargin(
                          top: 24,
                        ),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "lbl_phone".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsMedium16,
                              ),
                            ),
                            BlocSelector<SignUpBloc, SignUpState,
                                TextEditingController?>(
                              selector: (state) => state.frame212Controller,
                              builder: (context, frame212Controller) {
                                return CustomTextFormField(
                                  width: getHorizontalSize(
                                    326,
                                  ),
                                  focusNode: FocusNode(),
                                  controller: frame212Controller,
                                  hintText: "lbl_1_123_456_7890".tr,
                                  alignment: Alignment.bottomCenter,
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 24,
                        ),
                        child: Text(
                          "lbl_password".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium16,
                        ),
                      ),
                      BlocSelector<SignUpBloc, SignUpState,
                          TextEditingController?>(
                        selector: (state) => state.frame213Controller,
                        builder: (context, frame213Controller) {
                          return CustomTextFormField(
                            focusNode: FocusNode(),
                            controller: frame213Controller,
                            hintText: "lbl_xyz123".tr,
                            margin: getMargin(
                              top: 1,
                            ),
                            suffix: Container(
                              margin: getMargin(
                                left: 30,
                                top: 5,
                                bottom: 5,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.whiteA700,
                                border: Border.all(
                                  color: ColorConstant.indigoA100,
                                  width: getHorizontalSize(
                                    1,
                                  ),
                                  strokeAlign: strokeAlignCenter,
                                ),
                              ),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgEye,
                              ),
                            ),
                            suffixConstraints: BoxConstraints(
                              maxHeight: getVerticalSize(
                                26,
                              ),
                            ),
                          );
                        },
                      ),
                      Padding(
                        padding: getPadding(
                          top: 23,
                        ),
                        child: Text(
                          "msg_confirm_passwor".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium16,
                        ),
                      ),
                      BlocSelector<SignUpBloc, SignUpState,
                          TextEditingController?>(
                        selector: (state) => state.frame214Controller,
                        builder: (context, frame214Controller) {
                          return CustomTextFormField(
                            focusNode: FocusNode(),
                            controller: frame214Controller,
                            hintText: "lbl_xyz123".tr,
                            margin: getMargin(
                              top: 1,
                            ),
                            textInputAction: TextInputAction.done,
                            suffix: Container(
                              margin: getMargin(
                                left: 30,
                                top: 5,
                                bottom: 5,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.whiteA700,
                                border: Border.all(
                                  color: ColorConstant.indigoA100,
                                  width: getHorizontalSize(
                                    1,
                                  ),
                                  strokeAlign: strokeAlignCenter,
                                ),
                              ),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgEye,
                              ),
                            ),
                            suffixConstraints: BoxConstraints(
                              maxHeight: getVerticalSize(
                                26,
                              ),
                            ),
                          );
                        },
                      ),
                      Padding(
                        padding: getPadding(
                          top: 23,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: getVerticalSize(
                                52,
                              ),
                              width: getHorizontalSize(
                                155,
                              ),
                              child: Stack(
                                alignment: Alignment.topLeft,
                                children: [
                                  BlocSelector<SignUpBloc, SignUpState,
                                      SignUpModel?>(
                                    selector: (state) => state.signUpModelObj,
                                    builder: (context, signUpModelObj) {
                                      return CustomDropDown(
                                        width: getHorizontalSize(
                                          153,
                                        ),
                                        focusNode: FocusNode(),
                                        icon: Container(
                                          margin: getMargin(
                                            left: 30,
                                            right: 10,
                                          ),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: ColorConstant.black900,
                                              width: getHorizontalSize(
                                                1,
                                              ),
                                              strokeAlign: strokeAlignCenter,
                                            ),
                                          ),
                                          child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowdownBlack900,
                                          ),
                                        ),
                                        hintText: "lbl_20_jan_1998".tr,
                                        variant: DropDownVariant
                                            .UnderLineBluegray100,
                                        fontStyle: DropDownFontStyle
                                            .PoppinsRegular14Black900,
                                        alignment: Alignment.bottomCenter,
                                        items:
                                            signUpModelObj?.dropdownItemList ??
                                                [],
                                        onChanged: (value) {
                                          context.read<SignUpBloc>().add(
                                              ChangeDropDownEvent(
                                                  value: value));
                                        },
                                      );
                                    },
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "lbl_date_of_birth".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_country_region".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsMedium16,
                                ),
                                BlocSelector<SignUpBloc, SignUpState,
                                    SignUpModel?>(
                                  selector: (state) => state.signUpModelObj,
                                  builder: (context, signUpModelObj) {
                                    return CustomDropDown(
                                      width: getHorizontalSize(
                                        145,
                                      ),
                                      focusNode: FocusNode(),
                                      icon: Container(
                                        margin: getMargin(
                                          left: 30,
                                        ),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: ColorConstant.black900,
                                            width: getHorizontalSize(
                                              1,
                                            ),
                                            strokeAlign: strokeAlignCenter,
                                          ),
                                        ),
                                        child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowdownBlack900,
                                        ),
                                      ),
                                      hintText: "lbl_united_states2".tr,
                                      variant: DropDownVariant.None,
                                      fontStyle: DropDownFontStyle
                                          .PoppinsRegular14Black900,
                                      items:
                                          signUpModelObj?.dropdownItemList1 ??
                                              [],
                                      onChanged: (value) {
                                        context.read<SignUpBloc>().add(
                                            ChangeDropDown1Event(value: value));
                                      },
                                    );
                                  },
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 6,
                                  ),
                                  child: SizedBox(
                                    width: getHorizontalSize(
                                      155,
                                    ),
                                    child: Divider(
                                      height: getVerticalSize(
                                        1,
                                      ),
                                      thickness: getVerticalSize(
                                        1,
                                      ),
                                      color: ColorConstant.blueGray100,
                                      indent: getHorizontalSize(
                                        1,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      CustomButton(
                        height: getVerticalSize(
                          50,
                        ),
                        text: "lbl_login".tr,
                        margin: getMargin(
                          top: 23,
                        ),
                        shape: ButtonShape.RoundedBorder13,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: getPadding(
                            left: 27,
                            top: 73,
                            right: 28,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "msg_already_have_an2".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsMedium16Bluegray400,
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 5,
                                ),
                                child: Text(
                                  "lbl_sign_in".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
