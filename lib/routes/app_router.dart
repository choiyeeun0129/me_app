// 라우트 등록 및 페이지 이동 로직 처리

import 'package:flutter/material.dart';
import '../screens/home/home_page.dart';
import '../screens/home/profile/profile_edit_page.dart';
import '../screens/home/profile/profile_my_page.dart';
import '../screens/home/search/search_page.dart';
import '../screens/home/search/search_result_page.dart';
import '../screens/home/setting/setting_page.dart';
import '../screens/home/setting/setting_privacy_page.dart';
import '../screens/home/setting/setting_term_page.dart';
import '../screens/lobby/find/find_page.dart';
import '../screens/lobby/identification_page.dart';
import '../screens/lobby/login_page.dart';
import '../screens/splash_page.dart';
import 'app_routes.dart';

class MyNavigatorObserver extends NavigatorObserver {
  static List<Route<dynamic>> routeStack = <Route<dynamic>>[];

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    routeStack.add(route);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    routeStack.removeLast();
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    routeStack.removeLast();
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    routeStack.removeLast();
    routeStack.add(newRoute!);
  }
}

MaterialPageRoute buildRoute(RouteSettings settings, Widget builder) {
  return MaterialPageRoute(
    settings: settings,
    builder: (BuildContext context) => builder,
  );
}

Route getRoute(RouteSettings settings) {
  switch (settings.name) {
    case routeSplashPage: return MaterialPageRoute(builder: (_) => SplashPage());
    case routeIdentificationPage: return MaterialPageRoute(builder: (_) => IdentificationPage());
    case routeHomePage: return MaterialPageRoute(builder: (_) => HomePage());
    case routeSearchPage: return MaterialPageRoute(builder: (_) => SearchPage());
    case routeSearchResultPage: return MaterialPageRoute(builder: (_) => SearchResultPage());
    case routeProfileMyPage: return MaterialPageRoute(builder: (_) => ProfileMyPage());
    case routeProfileEditPage: return MaterialPageRoute(builder: (_) => ProfileEditPage());
    case routeSettingPage: return MaterialPageRoute(builder: (_) => SettingPage());
    case routeSettingPrivacyPage: return MaterialPageRoute(builder: (_) => SettingPrivacyPage());
    case routeSettingTermPage: return MaterialPageRoute(builder: (_) => SettingTermPage());
    case routeLoginPage: return MaterialPageRoute(builder: (_) => LoginPage());
    case routeFindPage: return MaterialPageRoute(builder: (_) => FindPage());
    default:
      throw Exception('Invalid route: ${settings.name}');
  }
}