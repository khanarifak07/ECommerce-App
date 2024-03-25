import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Helper {
  //snackbar
  static void showSnackBar(String message) {
    ScaffoldMessenger.of(Get
            .context!) //here i can get the context with the help of get package without passing buildContext as a parameter
        .showSnackBar(SnackBar(content: Text(message)));
  }

  //showAlert
  static void showAlert(String title, String message) {
    showDialog(
      context: Get.context!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text("OK"))
          ],
        );
      },
    );
  }

  //Navigate to screen
  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }

  //truncate text
  static String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return text.substring(0, maxLength);
    }
  }

  //
  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  //screen size
  static Size screenSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  //screen height
  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  //screen width
  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  //
}
