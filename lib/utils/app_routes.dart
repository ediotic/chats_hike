import 'package:get/get.dart';
import '../screens/Auth_screccn/auth_screen.dart';
import '../screens/chat_screen/chat_screen.dart';
import '../screens/home_screen/home_screen.dart';
import '../screens/onboarding_screen/splash_screen/spalsh_screen.dart';
import '../screens/update_profile/update_profile.dart';
import '../screens/onboarding_screen/welcome_screen/welcome_screen.dart';
import '../screens/profile_screen/receiver_profile.dart';

class AppRoutes {
  static const splashScreen = "/splashScreen";
  static const welcomeScreen = "/welcome";
  static const authScreen = "/authScreen";
  static const homeScreen = "/homeScreen";
  static const chatScreen = "/chatScreen";
  static const receiverScreen = "/receiverScreen";
  static const updateProfileScreen = "/updateScreen";



  static final List<GetPage> routes = [
    GetPage(
      name: splashScreen,
      page: () => SpalshScreen(),
     ),
    GetPage(
      name: welcomeScreen,
      page: () => const WelcomeScreen(),
      transition: Transition.circularReveal,
      transitionDuration: Duration(seconds: 1),
    ),
    GetPage(
      name: authScreen,
      page: () => const AuthScreen(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: homeScreen,
      page: () => const HomeScreen(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: chatScreen,
      page: () => const ChatScreen(),
      transition: Transition.circularReveal,
      transitionDuration: Duration(milliseconds: 150),
    ),
    GetPage(
      name: receiverScreen,
      page: () => const ReceiverProfileScreen(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: updateProfileScreen,
      page: () => const UpdateProfileScreen(),
      transition: Transition.rightToLeft,
    ),
  ];
}
