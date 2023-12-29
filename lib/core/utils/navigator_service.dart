import 'package:flutter/material.dart';

/// A service class that provides global access to the `NavigatorState`
/// and a set of utility methods to navigate through the app's screens.
class NavigatorService {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  /// Navigates to a new screen with the given [routeName] and optional [arguments].
  /// Returns a `Future` that completes when the screen is dismissed.
  static Future<dynamic> pushNamed(String routeName,
      {dynamic arguments}) async {
    return navigatorKey.currentState
        ?.pushNamed(routeName, arguments: arguments);
  }

  /// Goes back to the previous screen. Returns a `Future` that completes
  /// when the screen is dismissed.
  static void goBack() {
    return navigatorKey.currentState?.pop();
  }

  /// Navigates to a new screen with the given [routeName] and optional [arguments],
  /// and removes all the previous screens from the stack if [routePredicate] is false (default).
  ///
  /// Returns a `Future` that completes when the screen is dismissed.
  static Future<dynamic> pushNamedAndRemoveUntil(String routeName,
      {bool routePredicate = false, dynamic arguments}) async {
    return navigatorKey.currentState?.pushNamedAndRemoveUntil(
        routeName, (route) => routePredicate,
        arguments: arguments);
  }

  /// Goes back to the previous screen and navigates to a new screen with the
  /// given [routeName] and optional [arguments].
  /// Returns a `Future` that completes when the screen is dismissed.
  static Future<dynamic> popAndPushNamed(String routeName,
      {dynamic arguments}) async {
    return navigatorKey.currentState
        ?.popAndPushNamed(routeName, arguments: arguments);
  }
}
