import 'package:flutter/material.dart';

class InterviewExitDialog extends StatelessWidget {
  const InterviewExitDialog({super.key});

  static Future<bool?> show(BuildContext context) {
    return showDialog<bool>(
      context: context,
      barrierDismissible: true,
      builder: (context) => const InterviewExitDialog(),
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
                  color: const Color(0xFFFEF3C7),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.warning_rounded,
                  color: Color(0xFFF59E0B),
                  size: 24,
                ),
              ),

              const SizedBox(height: 12),

              // Title
              const Text(
                'End Interview?',
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
                'Your interview is still in progress.\nLeaving now will end your session and you won\'t be able to resume.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'SF Pro Rounded',
                  color: Color(0xFF8a8a8e),
                  fontWeight: FontWeight.w400,
                  height: 1.4,
                ),
              ),

              const SizedBox(height: 18),

              // Buttons
              Row(
                children: [
                  // Stay Button
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
                        'Stay',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'SF Pro Rounded',
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 12),

                  // Leave Button
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () => Navigator.of(context).pop(true),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        backgroundColor: const Color(0xFFF59E0B),
                        foregroundColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text(
                        'Leave',
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
}
