import 'package:nector_app/features/authontication/presentation/views/entering_4_digit_code_view.dart';
import 'package:nector_app/features/authontication/presentation/views/forget_password_view.dart';
import 'package:nector_app/features/authontication/presentation/views/login_view.dart';
import 'package:nector_app/features/authontication/presentation/views/phone_number_entering_view.dart';
import 'package:nector_app/features/authontication/presentation/views/reset_password_done_view.dart';
import 'package:nector_app/features/authontication/presentation/views/select_location_view.dart';
import 'package:nector_app/features/authontication/presentation/views/signup_data_collect_method_view.dart';
import 'package:nector_app/features/authontication/presentation/views/signup_view.dart';
import 'package:nector_app/features/explore_feature/presentation/views/category_view.dart';
import 'package:nector_app/features/home/presentation/views/home_view.dart';
import 'package:nector_app/features/home/presentation/views/product_details_view.dart';
import 'package:nector_app/features/navigation/presentation/views/navigation.dart';
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
  static String phoneNumberEnteringView = "/phoneNumberEnteringView";
  static String entering4DigitCodeView = "/entering4DigitCodeView";
  static String selectLocationView = "/selectLocationView";
  static String productDetailsView = "/productDetailsView";
  static String categoryView = "/categoryView";
  static String navigationView = "/navigationView";

  static String homeView = "/homeView";

  static Map<String, dynamic> routes = {
    splashView: const SplashView(),
    onBoardingView: const OnBoarding(),
    loginView: const LoginView(),
    forgetPasswordView: const ForgetPasswordView(),
    resetPasswordDoneView: const ResetPasswordDoneView(),
    signUpView: const SignUpView(),
    singupDataCollectMethodView: const SignupDataCollectMethodView(),
    phoneNumberEnteringView: const PhoneNumberEnteringView(),
    entering4DigitCodeView: const Entering4DigitCodeView(),
    selectLocationView: const SelectLocationView(),
    homeView: const HomeView(),
    productDetailsView: const ProductDetailsView(),
    categoryView:const CategoryView(),
    navigationView:const NavigationView(),

  };
}
