import 'package:flutter/material.dart';
import 'package:ui_task_work_plus/ui/theme/colors.dart';
import 'package:ui_task_work_plus/ui/theme/text_styles.dart';


class JobCard extends StatelessWidget {
  final String timeLeft;
  final String postedDate;
  final String jobTitle;
  final bool isApproved;
  final String budget;
  final String rate;
  final int applicantsCount;
  final VoidCallback? onApprove;

  const JobCard({
    super.key,
    required this.timeLeft,
    required this.postedDate,
    required this.jobTitle,
    required this.isApproved,
    required this.budget,
    required this.rate,
    required this.applicantsCount,
    this.onApprove,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// LEFT SIDE DETAILS
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Time & Date
                  Row(
                    children: [
                      const Icon(Icons.access_time_filled, size: 14, color: AppColors.primary),
                      const SizedBox(width: 4),
                      Text(timeLeft, style: AppTextStyles.smallLabel),
                    ],
                  ),

                  const SizedBox(height: 6),
                  Text(postedDate, style: AppTextStyles.dateText),

                  const SizedBox(height: 6),

                  /// Job Title
                  Text(jobTitle, style: AppTextStyles.cardTitle),

                  const SizedBox(height: 8),

                  /// Avatars + Applied Info
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                      height: 30,
                      width: 60, // enough for 2 avatars with some overlap
                      child: Stack(
                        clipBehavior: Clip.none, // 💡 Prevents clipping
                        children: const [
                          Positioned(
                            left: 0,
                            child: CircleAvatar(
                              radius: 12,
                              backgroundImage: AssetImage('assets/profile.webp'),
                            ),
                          ),
                          Positioned(
                            left: 14, // overlap by 8px
                            child: CircleAvatar(
                              radius: 12,
                              backgroundImage: AssetImage('assets/profile.webp'),
                            ),
                          ),
                          Positioned(
                            left: 28, // overlap by 8px
                            child: CircleAvatar(
                              radius: 12,
                              backgroundImage: AssetImage('assets/profile.webp'),
                            ),
                          ),
                        ],
                      ),
                    ),
                      const SizedBox(width: 10),

                      Flexible(
                        child: Text(
                          '$applicantsCount Applied · More Detail',
                          style: AppTextStyles.primary12,
                          overflow: TextOverflow.clip,
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            /// RIGHT SIDE ACTION
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(budget, style: AppTextStyles.price),
                Text(rate, style: AppTextStyles.cardSubtitle),
                const SizedBox(height: 18),
                if (!isApproved)
                  ElevatedButton(
                    onPressed: onApprove,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    ),
                    child: const Text("Approve", style: TextStyle(color: Colors.white)),
                  )
                else
                  const Text("Approved", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
