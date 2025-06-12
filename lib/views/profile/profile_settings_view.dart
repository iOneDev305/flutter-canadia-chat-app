import 'package:flutter/material.dart';
import 'package:my_app/utils/constant/color.dart';
import 'package:my_app/utils/constant/fonts_style.dart';
import 'package:my_app/utils/constant/size.dart';
import '../../custom/app_bar.dart';
import '../../custom/build_section.dart';
import '../../custom/settings_tile.dart';

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
              Column(
                children: [
                  Center(
                    child: Container(
                      padding: const EdgeInsets.all(size4),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Primitives.blue10,
                      ),
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Primitives.green10,
                        child: Icon(
                          Icons.person,
                          size: 50,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      child: const Text(
                        'Ly Horng',
                        style: TextStyle(
                          fontWeight: extraBold,
                          color: Primitives.redPrimary,
                          fontSize: size24,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      child: const Text(
                        'ID : 12334',
                        style: TextStyle(
                          fontWeight: semiBold,
                          color: Primitives.grey10,
                          fontSize: size10,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              BuildSection(
                title: 'Personal Information',
                children: [
                  SettingsTile(
                    title: 'Edit Profile',
                    icon: Icons.edit,
                    onTap: () {}, // your logic here
                  ),
                  SettingsTile(
                    title: 'Change Password',
                    icon: Icons.lock_outline,
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(height: 20),
              BuildSection(
                title: 'Preferences',
                children: [
                  SettingsTile(
                    title: 'Notifications',
                    icon: Icons.notifications_none,
                    onTap: () {},
                  ),
                  SettingsTile(
                    title: 'Privacy',
                    icon: Icons.privacy_tip_outlined,
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
}
