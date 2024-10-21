import 'package:nector_app/features/authontication/presentation/views/forget_password_view.dart';
import 'package:nector_app/features/authontication/presentation/views/login_view.dart';
import 'package:nector_app/features/authontication/presentation/views/reset_password_done_view.dart';
import 'package:nector_app/features/authontication/presentation/views/signup_data_collect_method_view.dart';
import 'package:nector_app/features/authontication/presentation/views/signup_view.dart';
import 'package:nector_app/features/onboarding/presentation/views/onboarding.dart';
import 'package:nector_app/features/splash/presentation/views/spash_view.dart';

class AppRouter {
  static String splashView = "/";
  static String onBoardingView = "/onBoardingView";
  static String loginView = "/loginView";
  static String forgetPasswordView = "/forgetPasswordView";
  static String resetPasswordDoneView = "/resetPasswordDoneView";
  static String signUpView = "/signUpView";
  static String singupDataCollectMethodView = '/singupDataCollectMethodView';

  static Map<String, dynamic> routes = {
    splashView: const SplashView(),
    onBoardingView: const OnBoarding(),
    loginView: const LoginView(),
    forgetPasswordView: const ForgetPasswordView(),
    resetPasswordDoneView: const ResetPasswordDoneView(),
    signUpView: const SignUpView(),
    singupDataCollectMethodView: const SignupDataCollectMethodView(),
  };
}
