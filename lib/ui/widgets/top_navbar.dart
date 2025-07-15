import 'package:flutter/material.dart';
import 'package:ui_task_work_plus/ui/theme/colors.dart';
import 'package:ui_task_work_plus/ui/theme/text_styles.dart';

class TopNavBar extends StatefulWidget {
  const TopNavBar({super.key});

  @override
  State<TopNavBar> createState() => _TopNavBarState();
}

class _TopNavBarState extends State<TopNavBar> {
  int selectedIndex = 0;
  final List<String> tabs = ['JOBS', 'STATUS'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("WORK PLUS", style: AppTextStyles.headerLarge),
          Container(
            width: 150,
            height: 40,
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: List.generate(tabs.length, (index) {
                final selected = selectedIndex == index;
                return Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() => selectedIndex = index);
                    },
                    child: _buildTab(tabs[index], selected),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTab(String title, bool selected) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4),
      decoration: selected
          ? BoxDecoration(
        color: AppColors.backgroundGradientTop,
        borderRadius: BorderRadius.circular(20),
      )
          : null,
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: selected ? AppColors.primary : AppColors.backgroundGradientTop,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
