import '../transfer_request_screen/widgets/listrectanglesixtythree_item_widget.dart';
import 'bloc/transfer_request_bloc.dart';
import 'models/listrectanglesixtythree_item_model.dart';
import 'models/transfer_request_model.dart';
import 'package:bankapp/core/app_export.dart';
import 'package:bankapp/widgets/app_bar/appbar_iconbutton.dart';
import 'package:bankapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:bankapp/widgets/app_bar/custom_app_bar.dart';
import 'package:bankapp/widgets/custom_button.dart';
import 'package:bankapp/widgets/custom_icon_button.dart';
import 'package:bankapp/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class TransferRequestScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<TransferRequestBloc>(
        create: (context) => TransferRequestBloc(TransferRequestState(
            transferRequestModelObj: TransferRequestModel()))
          ..add(TransferRequestInitialEvent()),
        child: TransferRequestScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(49),
                leadingWidth: 59,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleftBlack900,
                    margin: getMargin(left: 24, top: 7, bottom: 7),
                    onTap: () {
                      onTapArrowleft5(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "msg_transfer_reques".tr),
                actions: [
                  AppbarIconbutton(
                      svgPath: ImageConstant.imgVolumeBlack900,
                      margin: getMargin(left: 24, top: 7, right: 24, bottom: 7))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 25, right: 24, bottom: 25),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomButton(
                                height: getVerticalSize(40),
                                width: getHorizontalSize(125),
                                text: "lbl_transfer".tr,
                                variant: ButtonVariant.FillDeeppurple300,
                                padding: ButtonPadding.PaddingT10,
                                fontStyle: ButtonFontStyle.PoppinsMedium14,
                                prefixWidget: Container(
                                    margin: getMargin(right: 9),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgFrame244)),
                                onTap: () {
                                  onTapTransfer(context);
                                }),
                            CustomButton(
                                height: getVerticalSize(40),
                                width: getHorizontalSize(125),
                                text: "lbl_request".tr,
                                variant: ButtonVariant.FillTeal300,
                                padding: ButtonPadding.PaddingT10,
                                fontStyle: ButtonFontStyle.PoppinsMedium14,
                                prefixWidget: Container(
                                    margin: getMargin(right: 8),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgFrame245))),
                            CustomIconButton(
                                height: 40,
                                width: 40,
                                variant: IconButtonVariant.FillGray50,
                                shape: IconButtonShape.RoundedBorder7,
                                padding: IconButtonPadding.PaddingAll12,
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgMore))
                          ]),
                      BlocSelector<TransferRequestBloc, TransferRequestState,
                              TextEditingController?>(
                          selector: (state) => state.searchbarController,
                          builder: (context, searchbarController) {
                            return CustomSearchView(
                                focusNode: FocusNode(),
                                controller: searchbarController,
                                hintText: "msg_search_people".tr,
                                margin: getMargin(top: 20),
                                variant: SearchViewVariant.OutlineGray200,
                                prefix: Container(
                                    margin: getMargin(
                                        left: 21,
                                        top: 18,
                                        right: 15,
                                        bottom: 17),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgSearch)),
                                prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(50)),
                                suffix: Padding(
                                    padding: EdgeInsets.only(
                                        right: getHorizontalSize(15)),
                                    child: IconButton(
                                        onPressed: () {
                                          searchbarController!.clear();
                                        },
                                        icon: Icon(Icons.clear,
                                            color: Colors.grey.shade600))));
                          }),
                      Padding(
                          padding: getPadding(top: 26),
                          child: Text("lbl_contact_people".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold16Black900)),
                      Padding(
                          padding: getPadding(top: 13),
                          child: BlocSelector<TransferRequestBloc,
                                  TransferRequestState, TransferRequestModel?>(
                              selector: (state) =>
                                  state.transferRequestModelObj,
                              builder: (context, transferRequestModelObj) {
                                return ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(16));
                                    },
                                    itemCount: transferRequestModelObj
                                            ?.listrectanglesixtythreeItemList
                                            .length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      ListrectanglesixtythreeItemModel model =
                                          transferRequestModelObj
                                                      ?.listrectanglesixtythreeItemList[
                                                  index] ??
                                              ListrectanglesixtythreeItemModel();
                                      return ListrectanglesixtythreeItemWidget(
                                          model);
                                    });
                              }))
                    ]))));
  }

  onTapTransfer(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.transferScreen,
    );
  }

  onTapArrowleft5(BuildContext context) {
    NavigatorService.goBack();
  }
}
