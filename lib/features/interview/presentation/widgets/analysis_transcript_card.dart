import 'package:flutter/material.dart';

import '../../../../common/components/components.dart';
import '../../../../constants/colors.dart';

class AnalysisTranscriptCardWidget extends StatefulWidget {
  final String transcript;

  const AnalysisTranscriptCardWidget({super.key, required this.transcript});

  @override
  State<AnalysisTranscriptCardWidget> createState() =>
      _AnalysisTranscriptCardWidgetState();
}

class _AnalysisTranscriptCardWidgetState
    extends State<AnalysisTranscriptCardWidget> {
  bool _isExpanded = false;
  static const int _maxCharactersCollapsed = 200;

  bool get _shouldShowToggle =>
      widget.transcript.length > _maxCharactersCollapsed;

  String get _displayText {
    if (!_shouldShowToggle || _isExpanded) {
      return widget.transcript;
    }

    // Find a good break point near the character limit
    final breakPoint = widget.transcript.indexOf(' ', _maxCharactersCollapsed);
    final cutoff = breakPoint != -1 ? breakPoint : _maxCharactersCollapsed;

    return '${widget.transcript.substring(0, cutoff)}...';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.transcribe_rounded,
                color: Colors.grey.shade700,
                size: 24,
              ),
              addWidth(8),
              Text(
                'Full Transcript',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'SF Pro Rounded',
                  fontWeight: FontWeight.w700,
                  color: Colors.grey.shade800,
                  letterSpacing: -0.3,
                ),
              ),
            ],
          ),
          addHeight(16),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.grey.shade50,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText(
                  _displayText,
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'SF Pro Rounded',
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade800,
                    height: 1.7,
                  ),
                ),
                if (_shouldShowToggle) ...[
                  addHeight(12),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _isExpanded = !_isExpanded;
                      });
                    },
                    borderRadius: BorderRadius.circular(6),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 4,
                        vertical: 4,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            _isExpanded ? 'Show less' : 'Show more',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'SF Pro Rounded',
                              fontWeight: FontWeight.w600,
                              color: AppColors.primaryColor,
                            ),
                          ),
                          const SizedBox(width: 4),
                          Icon(
                            _isExpanded
                                ? Icons.keyboard_arrow_up_rounded
                                : Icons.keyboard_arrow_down_rounded,
                            size: 20,
                            color: AppColors.primaryColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
