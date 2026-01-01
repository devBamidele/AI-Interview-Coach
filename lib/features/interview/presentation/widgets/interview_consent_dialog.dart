import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';

class InterviewConsentDialog extends StatelessWidget {
  const InterviewConsentDialog({super.key});

  static Future<bool?> show(BuildContext context) {
    return showDialog<bool>(
      context: context,
      barrierDismissible: true,
      builder: (context) => const InterviewConsentDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final dialogWidth = screenWidth > 600 ? 500.0 : screenWidth * 0.9;

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 8,
      backgroundColor: Colors.white,
      child: Container(
        width: dialogWidth,
        constraints: const BoxConstraints(maxWidth: 500),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Icon
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor.withValues(alpha: 0.1),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.privacy_tip_outlined,
                  color: AppColors.primaryColor,
                  size: 24,
                ),
              ),

              const SizedBox(height: 12),

              // Title
              const Text(
                'Before We Begin',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'SF Pro Rounded',
                  color: Color(0xff121212),
                  letterSpacing: -0.3,
                ),
              ),

              const SizedBox(height: 8),

              // Content
              const Text(
                'Rehearse Coach needs your permission to:',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'SF Pro Rounded',
                  color: Color(0xFF8a8a8e),
                  fontWeight: FontWeight.w400,
                ),
              ),

              const SizedBox(height: 12),

              // Permissions List
              _buildPermissionItem(
                icon: Icons.videocam_rounded,
                text: 'Record video & audio',
              ),
              const SizedBox(height: 8),
              _buildPermissionItem(
                icon: Icons.analytics_outlined,
                text: 'Analyze with AI & provide feedback',
              ),

              const SizedBox(height: 14),

              // Purpose Section
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'Your data is stored securely and used only for interview practice.',
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'SF Pro Rounded',
                    color: Color(0xFF8a8a8e),
                    height: 1.3,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              const SizedBox(height: 18),

              // Buttons
              Row(
                children: [
                  // Decline Button
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () => Navigator.of(context).pop(false),
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        side: const BorderSide(
                          color: Color(0xFFD9D9D9),
                          width: 1.5,
                        ),
                        foregroundColor: const Color(0xff121212),
                      ),
                      child: const Text(
                        'Decline',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'SF Pro Rounded',
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 12),

                  // Accept Button
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () => Navigator.of(context).pop(true),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        backgroundColor: AppColors.primaryColor,
                        foregroundColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text(
                        'Accept',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'SF Pro Rounded',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPermissionItem({required IconData icon, required String text}) {
    return Row(
      children: [
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            color: AppColors.primaryColor.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: AppColors.primaryColor, size: 18),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              fontFamily: 'SF Pro Rounded',
              color: Color(0xff121212),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
