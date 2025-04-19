import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_finance_flutter/auth/auth_event.dart';

import '../widgets/profile_card.dart';
import '../widgets/profile_option.dart';
import 'auth_bloc.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.appBarTheme.foregroundColor,
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const ProfileCard(
              name: 'John Doe',
              email: 'johndoe@example.com',
              avatarUrl: null,
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  ProfileOption(
                    icon: Icons.security,
                    title: 'Security Settings',
                  ),
                  ProfileOption(
                    icon: Icons.notifications,
                    title: 'Notifications',
                  ),
                  ProfileOption(
                    icon: Icons.help_outline,
                    title: 'Help & Support',
                  ),
                  ProfileOption(
                    icon: Icons.logout,
                    title: 'Logout',
                    onTap: () async {
                      final shouldLogout = await _showLogoutConfirmationDialog(context);
                      if (shouldLogout) {
                        context.read<AuthBloc>().add(LogoutAction());
                        context.go('/login');
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<bool> _showLogoutConfirmationDialog(BuildContext context) async {
    return await showDialog<bool>(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Confirm Logout'),
            content: const Text('Are you sure you want to log out?'),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: const Text('Logout'),
              ),
            ],
          ),
        ) ??
        false;
  }
}
