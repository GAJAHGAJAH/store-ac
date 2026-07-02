import 'package:flutter/material.dart';
import 'package:store_ac/core/guards/auth_guard.dart';
import 'package:store_ac/features/auth/presentation/pages/login_page.dart';
import 'package:store_ac/features/auth/presentation/pages/register_page.dart';
import 'package:store_ac/features/auth/presentation/pages/verify_email_page.dart';
import 'package:store_ac/features/auth/presentation/pages/splash_page.dart';
import 'package:store_ac/features/dashboard/presentation/pages/dashboard_page.dart';

class AppRouter {
  static const String splash      = '/';
  static const String login       = '/login';
  static const String register    = '/register';
  static const String verifyEmail = '/verify-email';
  static const String dashboard   = '/dashboard';

  static Map<String, WidgetBuilder> get routes => {
    splash:      (_) => const SplashPage(),
    login:       (_) => const LoginPage(),
    register:    (_) => const RegisterPage(),
    verifyEmail: (_) => const VerifyEmailPage(),
    dashboard:   (_) => const AuthGuard(child: DashboardPage()),
  };

}