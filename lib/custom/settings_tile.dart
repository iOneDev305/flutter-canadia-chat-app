import 'package:flutter/material.dart';
import 'package:my_app/utils/constant/color.dart';
import '../utils/constant/fonts_style.dart';
/// A reusable tile widget used in settings or profile screens.
class SettingsTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback? onTap;

  const SettingsTile({
    super.key,
    required this.title,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
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
          color: Primitives.redPrimary,
        ),
        title: Text(
          title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: regular,
            color: Primitives.grey9,
      ),
        ),
        trailing: const Icon(
          Icons.chevron_right,
          size: 20,
          color: Primitives.yellow4,
        ),
      ),
    );
  }
}
