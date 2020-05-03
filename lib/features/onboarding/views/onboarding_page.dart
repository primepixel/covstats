import 'package:covstats/core/constants/onboarding.dart';
import 'package:covstats/core/constants/route_paths.dart';
import 'package:covstats/features/shared/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

const String onboardKey = 'isOnboardFinished';

class _OnboardingPageState extends State<OnboardingPage> {
  List<PageViewModel> pagesViewModels() {
    return [
      PageViewModel(
        decoration: PageDecoration(imagePadding: EdgeInsets.only(top: 60.0)),
        titleWidget:
            OnboardingText.onboardingOneTitle.text.size(28.0).bold.make(),
        image: Image.asset(OnboardingImage.onboardOne),
        bodyWidget: OnboardingText.onboardingOneDescription.text.center
            .size(16.0)
            .light
            .make(),
      ),
      PageViewModel(
        decoration: PageDecoration(imagePadding: EdgeInsets.only(top: 60.0)),
        titleWidget:
            OnboardingText.onboardingTwoTitle.text.size(28.0).bold.make(),
        image: Image.asset(OnboardingImage.onboardTwo),
        bodyWidget: OnboardingText.onboardingTwoDescription.text.center
            .size(16.0)
            .light
            .make(),
      ),
      PageViewModel(
        decoration: PageDecoration(imagePadding: EdgeInsets.only(top: 60.0)),
        image: Image.asset(OnboardingImage.onboardThree),
        titleWidget:
            OnboardingText.onboardingThreeTitle.text.size(28.0).bold.make(),
        bodyWidget: OnboardingText.onboardingThreeDescription.text.center
            .size(16.0)
            .light
            .make(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
          globalBackgroundColor: Colors.white,
          pages: pagesViewModels(),
          dotsDecorator: DotsDecorator(
              activeColor: AppColors.primaryRed, color: Colors.grey[400]),
          showSkipButton: true,
          skip: 'Skip'.text.make(),
          onSkip: () => Navigator.pushNamedAndRemoveUntil(
              context, RoutePaths.Home, (Route<dynamic> route) => false),
          showNextButton: true,
          next: 'Next'.text.make(),
          done: 'Done'.text.make(),
          onDone: () => Navigator.pushNamedAndRemoveUntil(
              context, RoutePaths.Home, (Route<dynamic> route) => false)),
    );
  }
}
