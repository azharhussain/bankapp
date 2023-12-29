import '../country_or_region_screen/widgets/listunitedkingdom_item_widget.dart';
import 'bloc/country_or_region_bloc.dart';
import 'models/country_or_region_model.dart';
import 'models/listunitedkingdom_item_model.dart';
import 'package:bankapp/core/app_export.dart';
import 'package:bankapp/widgets/custom_icon_button.dart';
import 'package:bankapp/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class CountryOrRegionScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<CountryOrRegionBloc>(
        create: (context) => CountryOrRegionBloc(CountryOrRegionState(
            countryOrRegionModelObj: CountryOrRegionModel()))
          ..add(CountryOrRegionInitialEvent()),
        child: CountryOrRegionScreen());
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomIconButton(
                          height: 35,
                          width: 35,
                          onTap: () {
                            onTapBtnArrowleft(context);
                          },
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowleftBlack900)),
                      BlocSelector<CountryOrRegionBloc, CountryOrRegionState,
                              TextEditingController?>(
                          selector: (state) => state.frame225Controller,
                          builder: (context, frame225Controller) {
                            return CustomSearchView(
                                focusNode: FocusNode(),
                                controller: frame225Controller,
                                hintText: "msg_search_country".tr,
                                margin: getMargin(top: 31),
                                prefix: Container(
                                    margin: getMargin(
                                        left: 21,
                                        top: 17,
                                        right: 15,
                                        bottom: 17),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: ColorConstant.gray500,
                                            width: getHorizontalSize(1),
                                            strokeAlign: strokeAlignCenter)),
                                    child: CustomImageView(
                                        svgPath:
                                            ImageConstant.imgSearchGray5001)),
                                prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(50)),
                                suffix: Padding(
                                    padding: EdgeInsets.only(
                                        right: getHorizontalSize(15)),
                                    child: IconButton(
                                        onPressed: () {
                                          frame225Controller!.clear();
                                        },
                                        icon: Icon(Icons.clear,
                                            color: Colors.grey.shade600))));
                          }),
                      Padding(
                          padding: getPadding(left: 1, top: 31),
                          child: Text("msg_country_or_regi".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold18)),
                      Padding(
                          padding: getPadding(top: 14),
                          child: BlocSelector<CountryOrRegionBloc,
                                  CountryOrRegionState, CountryOrRegionModel?>(
                              selector: (state) =>
                                  state.countryOrRegionModelObj,
                              builder: (context, countryOrRegionModelObj) {
                                return ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(16));
                                    },
                                    itemCount: countryOrRegionModelObj
                                            ?.listunitedkingdomItemList
                                            .length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      ListunitedkingdomItemModel model =
                                          countryOrRegionModelObj
                                                      ?.listunitedkingdomItemList[
                                                  index] ??
                                              ListunitedkingdomItemModel();
                                      return ListunitedkingdomItemWidget(model,
                                          onTapRadio: (value) {
                                        context.read<CountryOrRegionBloc>().add(
                                            ListunitedkingdomItemEvent(
                                                index: index,
                                                radioGroup: value));
                                      });
                                    });
                              }))
                    ]))));
  }

  onTapBtnArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }
}
