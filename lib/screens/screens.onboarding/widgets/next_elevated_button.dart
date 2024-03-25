import 'package:ecommerce_app/screens/screens.onboarding/provider/page_controller_provider.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/devices.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NextElevatedButton extends ConsumerWidget {
  const NextElevatedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageViewControllerPro = ref.watch(pageViewControllerProvider);
    final dark = AppHelpers.isDarkMode(context);
    return Positioned(
      right: AppSizes.defaultSpace,
      bottom: AppDeviceUtils.getBottomNavigatioBarHeight(),
      child: ElevatedButton(
        onPressed: () {
          pageViewControllerPro.jumpToHomePage(context);
        },
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? AppColors.light : AppColors.dark,
        ),
        child: Icon(
          Icons.arrow_forward_ios,
          color: dark ? AppColors.dark : AppColors.light,
        ),
      ),
    );
  }
}
