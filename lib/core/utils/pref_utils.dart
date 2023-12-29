//ignore: unused_import
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefUtils {
  static SharedPreferences? _sharedPreferences;

  static final PrefUtils _instance = PrefUtils._internal();

  factory PrefUtils() {
    return _instance;
  }

  PrefUtils._internal();

  /// Initializes the [SharedPreferences] instance and sets it to the
  /// [_sharedPreferences] variable.
  ///
  /// This method should be called at the beginning of the application startup to
  /// ensure that [SharedPreferences] is ready to use.
  ///
  /// Throws an exception if there is an error while initializing the instance.
  Future<void> init() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
    debugPrint('SharedPreference Initialized');
  }

  /// Clears all data from the SharedPreferences instance.
  void clearPreferencesData() async {
    _sharedPreferences!.clear();
  }
}
