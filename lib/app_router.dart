import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_finance_flutter/widgets/nav_bar.dart';

import 'auth/login_screen.dart';
import 'auth/profile_screen.dart';
import 'balance/spending_screen.dart';
import 'balance/wallet_screen.dart';
import 'dashboard/dashboard_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
      ShellRoute(
        builder: (context, state, child) {
          final user = FirebaseAuth.instance.currentUser;
          if (user == null) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              context.go('/login');
            });
          }
          return Scaffold(
            body: child,
            bottomNavigationBar: NavBar(
              currentIndex: _getCurrentIndex(state.uri.toString()),
              onTabSelected: (index) {
                switch (index) {
                  case 0:
                    context.go('/dashboard');
                  case 1:
                    context.go('/spending');
                  case 2:
                    context.go('/wallet');
                  case 3:
                    context.go('/profile');
                }
              },
            ),
          );
        },
        routes: [
          GoRoute(path: '/dashboard', builder: (context, state) => const DashboardScreen()),
          GoRoute(path: '/spending', builder: (context, state) => const SpendingScreen()),
          GoRoute(path: '/wallet', builder: (context, state) => const WalletScreen()),
          GoRoute(path: '/profile', builder: (context, state) => const ProfileScreen()),
        ],
      ),
    ],
  );

  static int _getCurrentIndex(String? path) {
    switch (path) {
      case '/dashboard':
        return 0;
      case '/spending':
        return 1;
      case '/wallet':
        return 2;
      case '/profile':
        return 3;
      default:
        return 0;
    }
  }
}
