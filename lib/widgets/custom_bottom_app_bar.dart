import 'package:bankapp/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatefulWidget {
  CustomBottomAppBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  _CustomBottomAppBarState createState() => _CustomBottomAppBarState();
}

class _CustomBottomAppBarState extends State<CustomBottomAppBar> {
  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
        icon: ImageConstant.imgLock,
        type: BottomBarEnum.Lock,
        isSelected: true),
    BottomMenuModel(
      icon: ImageConstant.imgCheckmarkGray500,
      type: BottomBarEnum.Checkmarkgray500,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgComputerGray500,
      type: BottomBarEnum.Computergray500,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgSearchGray5002,
      type: BottomBarEnum.Searchgray5002,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      color: ColorConstant.whiteA700,
      child: SizedBox(
        height: getVerticalSize(
          84,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            bottomMenuList.length,
            (index) {
              return InkWell(
                onTap: () {
                  for (var element in bottomMenuList) {
                    element.isSelected = false;
                  }
                  bottomMenuList[index].isSelected = true;
                  widgetonChanged?.call(bottomMenuList[index].type);
                  setState(() {});
                },
                child: bottomMenuList[index].isSelected
                    ? CustomImageView(
                        svgPath: bottomMenuList[index].icon,
                        height: getVerticalSize(
                          20,
                        ),
                        width: getHorizontalSize(
                          19,
                        ),
                        color: ColorConstant.indigo50,
                      )
                    : CustomImageView(
                        svgPath: bottomMenuList[index].icon,
                        height: getVerticalSize(
                          20,
                        ),
                        width: getHorizontalSize(
                          19,
                        ),
                        color: ColorConstant.gray500,
                      ),
              );
            },
          ),
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Lock,
  Checkmarkgray500,
  Computergray500,
  Searchgray5002,
}

class BottomMenuModel {
  BottomMenuModel(
      {required this.icon, required this.type, this.isSelected = false});

  String icon;

  BottomBarEnum type;

  bool isSelected;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
