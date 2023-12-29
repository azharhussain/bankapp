import '../currency_settings_bottomsheet/widgets/list_item_widget.dart';
import 'bloc/currency_settings_bloc.dart';
import 'models/currency_settings_model.dart';
import 'models/list_item_model.dart';
import 'package:bankapp/core/app_export.dart';
import 'package:flutter/material.dart';

class CurrencySettingsBottomsheet extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<CurrencySettingsBloc>(
        create: (context) => CurrencySettingsBloc(CurrencySettingsState(
            currencySettingsModelObj: CurrencySettingsModel()))
          ..add(CurrencySettingsInitialEvent()),
        child: CurrencySettingsBottomsheet());
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            width: double.maxFinite,
            child: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 25, right: 24, bottom: 25),
                decoration: AppDecoration.fillWhiteA700
                    .copyWith(borderRadius: BorderRadiusStyle.customBorderTL40),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 15, right: 17),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("lbl_currency".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsSemiBold18),
                                CustomImageView(
                                    svgPath: ImageConstant.imgCloseBlack900,
                                    height: getSize(18),
                                    width: getSize(18),
                                    margin: getMargin(top: 1, bottom: 7),
                                    onTap: () {
                                      onTapImgClose(context);
                                    })
                              ])),
                      Padding(
                          padding: getPadding(top: 9, bottom: 44),
                          child: BlocSelector<
                                  CurrencySettingsBloc,
                                  CurrencySettingsState,
                                  CurrencySettingsModel?>(
                              selector: (state) =>
                                  state.currencySettingsModelObj,
                              builder: (context, currencySettingsModelObj) {
                                return ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(15));
                                    },
                                    itemCount: currencySettingsModelObj
                                            ?.listItemList.length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      ListItemModel model =
                                          currencySettingsModelObj
                                                  ?.listItemList[index] ??
                                              ListItemModel();
                                      return ListItemWidget(model,
                                          onTapRadio: (value) {
                                        context
                                            .read<CurrencySettingsBloc>()
                                            .add(ListItemEvent(
                                                index: index,
                                                radioGroup: value));
                                      });
                                    });
                              }))
                    ]))));
  }

  onTapImgClose(BuildContext context) {
    NavigatorService.goBack();
  }
}
