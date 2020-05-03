import 'package:covstats/core/constants/route_paths.dart';
import 'package:covstats/features/statistics/views/statistics_page.dart';
import 'package:covstats/features/world_map/views/world_map_page.dart';
import 'package:flutter/material.dart';

import 'education/views/education_page.dart';
import 'faqs/views/faqs_page.dart';
import 'home/views/home_page.dart';
import 'onboarding/views/onboarding_page.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.Onboarding:
        return MaterialPageRoute(builder: (_) => OnboardingPage());
        break;
      case RoutePaths.Home:
        return MaterialPageRoute(builder: (_) => HomePage());
        break;
      case RoutePaths.Statistics:
        return MaterialPageRoute(builder: (_) => StatisticsPage());
        break;
      case RoutePaths.Map:
        return MaterialPageRoute(builder: (_) => WorldMapPage());
        break;
      case RoutePaths.Education:
        return MaterialPageRoute(builder: (_) => EducationPage());
        break;
      case RoutePaths.FAQs:
        return MaterialPageRoute(builder: (_) => FAQsPage());
        break;
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
