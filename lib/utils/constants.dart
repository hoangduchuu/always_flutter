import 'package:flutter/material.dart';

const kSecondaryColor = Color(0xFF8B94BC);
const kGreenColor = Color(0xFF6AC259);
const kRedColor = Color(0xFFE92E30);
const kGrayColor = Color(0xFFC1C1C1);
const kBlackColor = Color(0xFF101010);
const kPrimaryGradient = LinearGradient(
  colors: [Color(0xFF46A0AE), Color(0xFF00FFCB)],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

const double kDefaultPadding = 20.0;



class PrefKeys {
  static String userToken = 'prefKey_userToken';
  static String serverName = 'prefKey_serverName';
  static String appLanguage = 'prefKey_appLanguage';
  static String refreshToken = 'prefKey_refreshToken';
  static String userId = 'prefKey_userId';

  static String androidDeviceFrequency = 'android_device_device_frequency';
  static String androidDeviceCommunicationType = 'android_device_communication_type';
}
