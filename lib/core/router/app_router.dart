import 'package:nector_app/features/onboarding/presentation/views/onboarding.dart';
import 'package:nector_app/features/splash/presentation/views/spash_view.dart';

class AppRouter {
  static String splash = "/";
  static String onBoarding = "/onBoarding";

  static Map<String,dynamic> routes = {
    splash: const SplashView(),
    onBoarding: const OnBoarding(),
  };
}
