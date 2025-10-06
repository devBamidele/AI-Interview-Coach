import 'package:flutter/material.dart';

import '../../../../common/components/components.dart';

class AnalysisHighlightsCardWidget extends StatelessWidget {
  final List<String> highlights;

  const AnalysisHighlightsCardWidget({
    super.key,
    required this.highlights,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.green.shade50,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.green.shade200, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.star_rounded, color: Colors.green.shade700, size: 24),
              addWidth(8),
              Text(
                'Highlights',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.green.shade900,
                ),
              ),
            ],
          ),
          addHeight(12),
          ...highlights.map((highlight) => Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.check_circle_rounded,
                      color: Colors.green.shade600,
                      size: 20,
                    ),
                    addWidth(8),
                    Expanded(
                      child: Text(
                        highlight,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.green.shade900,
                          height: 1.5,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
