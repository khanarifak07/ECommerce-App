import 'package:ecommerce_app/screens/homepage/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final pageViewControllerProvider =
    ChangeNotifierProvider((ref) => PageViewControllerProvider());

class PageViewControllerProvider extends ChangeNotifier {
  final PageController pageController = PageController();
  var currentPageIndex = 0;

  //update page index as page changes
  void onPageChanged(index) {
    currentPageIndex = index;
    notifyListeners();
  }

  //skip page
  void skipPage() {
    pageController.jumpToPage(2);
    notifyListeners();
  }

  //jump to specific dot selected
  void dotNavigationClick(index) {
    currentPageIndex = index;
    pageController.jumpToPage(index);
    notifyListeners();
  }

  //
  void jumpToHomePage(BuildContext context) {
    if (currentPageIndex == 2) {
      //homepage
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    } else {
      pageController.nextPage(
          duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
    }
  }
}
