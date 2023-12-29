import 'package:bankapp/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.width,
      this.height,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? width;

  double? height;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        visualDensity: VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
        iconSize: getSize(height ?? 0),
        padding: EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
      boxShadow: _setBoxShadow(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll12:
        return getPadding(
          all: 12,
        );
      case IconButtonPadding.PaddingAll15:
        return getPadding(
          all: 15,
        );
      case IconButtonPadding.PaddingAll23:
        return getPadding(
          all: 23,
        );
      default:
        return getPadding(
          all: 9,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.FillGray50:
        return ColorConstant.gray50;
      case IconButtonVariant.FillGray100:
        return ColorConstant.gray100;
      case IconButtonVariant.FillRedA70026:
        return ColorConstant.redA70026;
      case IconButtonVariant.FillGreenA70026:
        return ColorConstant.greenA70026;
      case IconButtonVariant.FillPink40026:
        return ColorConstant.pink40026;
      case IconButtonVariant.OutlineBlueA70066:
        return ColorConstant.indigoA100;
      case IconButtonVariant.FillIndigoA100:
        return ColorConstant.indigoA100;
      case IconButtonVariant.FillAmber60026:
        return ColorConstant.amber60026;
      case IconButtonVariant.FillLightblue50026:
        return ColorConstant.lightBlue50026;
      case IconButtonVariant.FillDeeppurple50:
        return ColorConstant.deepPurple50;
      case IconButtonVariant.FillBlueA70026:
        return ColorConstant.blueA70026;
      case IconButtonVariant.FillLightblue80026:
        return ColorConstant.lightBlue80026;
      case IconButtonVariant.FillGray40026:
        return ColorConstant.gray40026;
      case IconButtonVariant.FillTeal80026:
        return ColorConstant.teal80026;
      case IconButtonVariant.OutlineBluegray100:
        return null;
      default:
        return null;
    }
  }

  _setBorder() {
    switch (variant) {
      case IconButtonVariant.FillGray50:
      case IconButtonVariant.FillGray100:
      case IconButtonVariant.FillRedA70026:
      case IconButtonVariant.FillGreenA70026:
      case IconButtonVariant.FillPink40026:
      case IconButtonVariant.OutlineBlueA70066:
      case IconButtonVariant.FillIndigoA100:
      case IconButtonVariant.FillAmber60026:
      case IconButtonVariant.FillLightblue50026:
      case IconButtonVariant.FillDeeppurple50:
      case IconButtonVariant.FillBlueA70026:
      case IconButtonVariant.FillLightblue80026:
      case IconButtonVariant.FillGray40026:
      case IconButtonVariant.FillTeal80026:
        return null;
      default:
        return Border.all(
          color: ColorConstant.blueGray100,
          width: getHorizontalSize(
            1.00,
          ),
        );
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.RoundedBorder7:
        return BorderRadius.circular(
          getHorizontalSize(
            7.00,
          ),
        );
      case IconButtonShape.RoundedBorder13:
        return BorderRadius.circular(
          getHorizontalSize(
            13.00,
          ),
        );
      case IconButtonShape.CircleBorder35:
        return BorderRadius.circular(
          getHorizontalSize(
            35.00,
          ),
        );
      case IconButtonShape.CircleBorder25:
        return BorderRadius.circular(
          getHorizontalSize(
            25.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            17.00,
          ),
        );
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case IconButtonVariant.OutlineBlueA70066:
        return [
          BoxShadow(
            color: ColorConstant.blueA70066,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              8,
            ),
          ),
        ];
      case IconButtonVariant.OutlineBluegray100:
      case IconButtonVariant.FillGray50:
      case IconButtonVariant.FillGray100:
      case IconButtonVariant.FillRedA70026:
      case IconButtonVariant.FillGreenA70026:
      case IconButtonVariant.FillPink40026:
      case IconButtonVariant.FillIndigoA100:
      case IconButtonVariant.FillAmber60026:
      case IconButtonVariant.FillLightblue50026:
      case IconButtonVariant.FillDeeppurple50:
      case IconButtonVariant.FillBlueA70026:
      case IconButtonVariant.FillLightblue80026:
      case IconButtonVariant.FillGray40026:
      case IconButtonVariant.FillTeal80026:
        return null;
      default:
        return null;
    }
  }
}

enum IconButtonShape {
  RoundedBorder17,
  RoundedBorder7,
  RoundedBorder13,
  CircleBorder35,
  CircleBorder25,
}

enum IconButtonPadding {
  PaddingAll9,
  PaddingAll12,
  PaddingAll15,
  PaddingAll23,
}

enum IconButtonVariant {
  OutlineBluegray100,
  FillGray50,
  FillGray100,
  FillRedA70026,
  FillGreenA70026,
  FillPink40026,
  OutlineBlueA70066,
  FillIndigoA100,
  FillAmber60026,
  FillLightblue50026,
  FillDeeppurple50,
  FillBlueA70026,
  FillLightblue80026,
  FillGray40026,
  FillTeal80026,
}
