import 'package:ecommerce_app/screens/screens.onboarding/provider/page_controller_provider.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OnBoardingSkip extends ConsumerWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageViewControllerPro = ref.watch(pageViewControllerProvider);
    return Positioned(
      right: AppSizes.defaultSpace,
      top: AppSizes.appBarHeight,
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.primary.withOpacity(.1),
        ),
        child: TextButton(
          onPressed: () {
            pageViewControllerPro.skipPage();
          },
          child: Text(
            "Skip",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ),
    );
  }
}
