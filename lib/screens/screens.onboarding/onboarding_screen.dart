// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommerce_app/screens/screens.onboarding/provider/page_controller_provider.dart';
import 'package:ecommerce_app/screens/screens.onboarding/widgets/next_elevated_button.dart';
import 'package:ecommerce_app/screens/screens.onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:ecommerce_app/screens/screens.onboarding/widgets/onboarding_skip.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'widgets/onboarding_widget.dart';

class OnBoardingScreen extends ConsumerStatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  ConsumerState<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends ConsumerState<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    final pageViewControllerPro = ref.watch(pageViewControllerProvider);
    return Scaffold(
      body: Stack(
        children: [
          //pageview
          PageView(
            controller: pageViewControllerPro.pageController,
            onPageChanged: (index) {
              pageViewControllerPro.onPageChanged(index);
            },
            children: const [
              OnBoardingWidget(
                image: AppImages.onboarding1,
                title: AppText.onboardingTitle1,
                subtitle: AppText.onboardingSubTitle1,
              ),
              OnBoardingWidget(
                image: AppImages.onboarding2,
                title: AppText.onboardingTitle2,
                subtitle: AppText.onboardingSubTitle2,
              ),
              OnBoardingWidget(
                image: AppImages.onboarding3,
                title: AppText.onboardingTitle3,
                subtitle: AppText.onboardingSubTitle3,
              ),
            ],
          ),
          //skip button
          const OnBoardingSkip(),
          //page indicator (dots)
          const OnBoardingDotNavigation(),
          //circular button for next
          const NextElevatedButton(),
        ],
      ),
    );
  }
}
