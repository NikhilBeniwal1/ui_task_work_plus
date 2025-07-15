import 'package:flutter/material.dart';
import 'package:ui_task_work_plus/ui/theme/colors.dart';
import 'package:ui_task_work_plus/ui/theme/text_styles.dart';
import 'package:ui_task_work_plus/ui/widgets/bottom_navbar.dart';
import 'package:ui_task_work_plus/ui/widgets/job_card.dart';
import 'package:ui_task_work_plus/ui/widgets/tab_switcher.dart';
import 'package:ui_task_work_plus/ui/widgets/top_navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  void onTabTapped(int index) {
    setState(() => selectedIndex = index);
    // Add navigation logic here if needed
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: RadialGradient(
              center: Alignment.center,
              radius: 2.0,
              colors: [
                Color(0xFFF8F5F3),
                Color(0xFFEEDFF2),
                Color(0xFFDCDEE0),
                Color(0xFFF5E4DA),
                Color(0xFFEFEFEF),
              ],
              stops: [0.1, 0.4, 0.6, 0.8, 1.0],
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,//AppColors.backgroundGradientTop,
          body: SafeArea(
            child: Column(
              children: [
                const TopNavBar(),
                const SizedBox(height: 16),
                const Center(
                  child: Column(
                    children: [
                      Icon(Icons.add_circle, size: 48, color: AppColors.primary),
                      Text("POST JOB or duplicate", style: AppTextStyles.primary14),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const TabSwitcher(),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 11),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("WAITING FOR APPROVAL", style: AppTextStyles.primary18),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (_, i) => JobCard(
                      timeLeft: "8 hrs",
                      postedDate: "May 25, 2025",
                      jobTitle: "Restaurant Helper",
                      isApproved: false,
                      budget: "₹1600",
                      rate: "320 per hour",
                      applicantsCount: 130,
                      onApprove: () {
                        print("Approved!");
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
           bottomNavigationBar: BottomNavBar(
          selectedIndex: selectedIndex,
          onItemTapped: onTabTapped,
        ),
        ),
      ],
    );
  }
}
