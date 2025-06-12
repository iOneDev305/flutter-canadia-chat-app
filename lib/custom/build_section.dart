import 'package:flutter/material.dart';
import '../utils/constant/fonts_style.dart';
/// A reusable section widget with a title and list of children,
/// typically used in settings or profile screens.
class BuildSection extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const BuildSection({
    super.key,
    required this.title,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Section title
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: medium,
              ),
        ),
        const SizedBox(height: 15),
        // Section content
        ...children,
      ],
    );
  }
}
