import 'package:flutter/material.dart';
import '../../custom/app_bar.dart';

class ProfileSettingsView extends StatelessWidget {
  const ProfileSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Profile Settings',
        onLeadingIconPressed: () => Navigator.pop(context),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundColor: Color(0xFF6C63FF),
                child: Icon(
                  Icons.person,
                  size: 50,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 30),
              _buildSection(
                context,
                'Personal Information',
                [
                  _buildSettingTile(
                    context,
                    'Edit Profile',
                    Icons.edit,
                    onTap: () {},
                  ),
                  _buildSettingTile(
                    context,
                    'Change Password',
                    Icons.lock_outline,
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(height: 20),
              _buildSection(
                context,
                'Preferences',
                [
                  _buildSettingTile(
                    context,
                    'Notifications',
                    Icons.notifications_none,
                    onTap: () {},
                  ),
                  _buildSettingTile(
                    context,
                    'Privacy',
                    Icons.privacy_tip_outlined,
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection(BuildContext context, String title, List<Widget> children) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 15),
        ...children,
      ],
    );
  }

  Widget _buildSettingTile(
    BuildContext context,
    String title,
    IconData icon, {
    VoidCallback? onTap,
  }) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        onTap: onTap,
        leading: Icon(
          icon,
          color: Theme.of(context).colorScheme.primary,
        ),
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        trailing: const Icon(
          Icons.chevron_right,
          size: 20,
        ),
      ),
    );
  }
} 