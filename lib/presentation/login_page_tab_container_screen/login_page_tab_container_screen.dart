import 'bloc/login_page_tab_container_bloc.dart';
import 'models/login_page_tab_container_model.dart';
import 'package:bankapp/core/app_export.dart';
import 'package:bankapp/presentation/login_page/login_page.dart';
import 'package:bankapp/presentation/sign_up_page/sign_up_page.dart';
import 'package:flutter/material.dart';

class LoginPageTabContainerScreen extends StatefulWidget {
  @override
  _LoginPageTabContainerScreenState createState() =>
      _LoginPageTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<LoginPageTabContainerBloc>(
      create: (context) => LoginPageTabContainerBloc(LoginPageTabContainerState(
        loginPageTabContainerModelObj: LoginPageTabContainerModel(),
      ))
        ..add(LoginPageTabContainerInitialEvent()),
      child: LoginPageTabContainerScreen(),
    );
  }
}

class _LoginPageTabContainerScreenState
    extends State<LoginPageTabContainerScreen> with TickerProviderStateMixin {
  late TabController loginsignupController;

  @override
  void initState() {
    super.initState();
    loginsignupController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginPageTabContainerBloc, LoginPageTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: getVerticalSize(
                      40,
                    ),
                    width: getHorizontalSize(
                      161,
                    ),
                    margin: getMargin(
                      left: 24,
                      top: 30,
                    ),
                    child: TabBar(
                      controller: loginsignupController,
                      labelColor: ColorConstant.whiteA700,
                      labelStyle: TextStyle(
                        fontSize: getFontSize(
                          16,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                      unselectedLabelColor: ColorConstant.gray500,
                      unselectedLabelStyle: TextStyle(
                        fontSize: getFontSize(
                          16,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                      indicator: BoxDecoration(
                        color: ColorConstant.indigoA100,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            10,
                          ),
                        ),
                      ),
                      tabs: [
                        Tab(
                          child: Text(
                            "lbl_login".tr,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Tab(
                          child: Text(
                            "lbl_sign_up".tr,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      698,
                    ),
                    child: TabBarView(
                      controller: loginsignupController,
                      children: [
                        LoginPage.builder(context),
                        SignUpPage.builder(context),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
