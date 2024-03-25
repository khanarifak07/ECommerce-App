import 'package:ecommerce_app/screens/screens.onboarding/provider/page_controller_provider.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/devices.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends ConsumerWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final onBoardingPro = ref.watch(pageViewControllerProvider);
    final dark = AppHelpers.isDarkMode(context);
    return Positioned(
      bottom: AppDeviceUtils.getBottomNavigatioBarHeight() + 25,
      left: AppSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: onBoardingPro.pageController,
        onDotClicked: (index) {
          onBoardingPro.dotNavigationClick(index);
        },
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? AppColors.light : AppColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
