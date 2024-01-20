import 'package:driver_register/features/bluebook/presentation/view/bluebook_view.dart';
import 'package:driver_register/features/fines/presentation/view/fine_view.dart';
import 'package:driver_register/features/home/presentation/view/home_view.dart';
import 'package:driver_register/features/license/presentation/view/license_view.dart';
import 'package:driver_register/features/home/presentation/view/bottom_view/dashboard.dart';
import 'package:driver_register/features/auth/presentation/view/login.dart';
import 'package:driver_register/features/auth/presentation/view/signup.dart';
import 'package:driver_register/view/screens/splashscreen.dart';

class AppRoute {
  AppRoute._();

  static const String splashRoute = '/splashscreen';
  static const String loginRoute = '/login';
  static const String signupRoute = '/signup';
  static const String dashboardRoute = '/dashboard';
  static const String bluebookRoute = '/bluebook';
  static const String licenseRoute = '/license';
  static const String fineRoute = '/fine';
  static const String homeRoute = '/home';

  static getApplicationRoute() {
    return {
      splashRoute: (context) => const SplashScreen(),
      loginRoute: (context) => const LogIn(),
      signupRoute: (context) => const SignUp(),
      dashboardRoute: (context) => const HomePage(),
      bluebookRoute: (context) => const Bluebook(),
      licenseRoute: (context) => const License(),
      fineRoute: (context) => const Fine(),
      homeRoute: (context) => const HomeBar(),
    };
  }
}
