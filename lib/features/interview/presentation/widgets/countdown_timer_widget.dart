import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CountdownTimerWidget extends HookWidget {
  final int durationSeconds;
  final VoidCallback? onComplete;

  const CountdownTimerWidget({
    super.key,
    this.durationSeconds = 300, // 5 minutes default
    this.onComplete,
  });

  @override
  Widget build(BuildContext context) {
    final elapsed = useState(0);
    final isRunning = useState(true);

    useEffect(() {
      if (!isRunning.value) return null;

      final timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        elapsed.value++;

        if (elapsed.value >= durationSeconds) {
          timer.cancel();
          isRunning.value = false;
          onComplete?.call();
        }
      });

      return timer.cancel;
    }, [isRunning.value]);

    final remaining = durationSeconds - elapsed.value;
    final minutes = remaining ~/ 60;
    final seconds = remaining % 60;
    final isWarning = remaining < 120; // Last 2 minutes

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: isWarning ? Colors.red.shade50 : Colors.grey.shade100,
        border: Border(
          bottom: BorderSide(
            color: isWarning ? Colors.red.shade200 : Colors.grey.shade300,
            width: 1,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.timer_rounded,
            color: isWarning ? Colors.red.shade700 : Colors.grey.shade700,
            size: 20,
          ),
          const SizedBox(width: 8),
          Text(
            '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: isWarning ? Colors.red.shade700 : Colors.grey.shade800,
                  fontFeatures: const [
                    FontFeature.tabularFigures(),
                  ],
                ),
          ),
          if (isWarning) ...[
            const SizedBox(width: 8),
            Icon(
              Icons.warning_rounded,
              color: Colors.red.shade700,
              size: 20,
            ),
          ],
        ],
      ),
    );
  }
}
