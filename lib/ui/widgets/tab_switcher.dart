import 'package:flutter/material.dart';
import 'package:ui_task_work_plus/ui/theme/colors.dart';
import 'package:ui_task_work_plus/ui/theme/text_styles.dart';

class TabSwitcher extends StatefulWidget {
  const TabSwitcher({super.key});

  @override
  State<TabSwitcher> createState() => _TabSwitcherState();
}

class _TabSwitcherState extends State<TabSwitcher> {
  int selectedIndex = 0;

  final List<String> tabs = ['ACTIVE', 'UPCOMING', 'HISTORY'];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(36),
      ),
      child: Row(
        children: List.generate(tabs.length, (index) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() => selectedIndex = index);
              },
              child: _buildTab(tabs[index], selectedIndex == index),
            ),
          );
        }),
      ),
    );
  }

  Widget _buildTab(String title, bool selected) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18),
      decoration: selected
          ? BoxDecoration(
        color: AppColors.backgroundGradientTop,
        borderRadius: BorderRadius.circular(36),
      )
          : null,
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: selected
                ? AppColors.primary
                : AppColors.backgroundGradientTop,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
