import 'package:flutter/material.dart';
import 'package:ui_task_work_plus/ui/theme/colors.dart';

class AppTextStyles {
  static const primary12 = TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: AppColors.primary);
  static const primary14 = TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: AppColors.primary);
  static const primary18 = TextStyle(fontSize: 18, fontWeight: FontWeight.normal, color: AppColors.primary);


  static const cardTitle = TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
  static const cardSubtitle = TextStyle(fontSize: 10, color: Colors.grey);
  static const price = TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.black);
  static const smallLabel = TextStyle(fontSize: 12, color: AppColors.primary, fontWeight: FontWeight.w500);
  static const dateText = TextStyle(fontSize: 12, color: AppColors.error, fontWeight: FontWeight.w500);

  static const headerLarge = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  static const subHeader = TextStyle(fontSize: 14, color: Colors.black87);
  static const sectionTitle = TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey);
 static const tabActive = TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: Colors.white);
  static const tabInactive = TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Colors.grey);
}
