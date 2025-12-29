/// Formats long feedback text by inserting paragraph breaks
/// for better readability.
///
/// Strategy: If text has 4+ sentences, insert a paragraph break
/// after every 2 sentences to create visual breathing room.
String formatFeedbackWithParagraphs(String text) {
  if (text.isEmpty) return text;

  // Check if text already has paragraph breaks (multiple newlines)
  if (text.contains('\n\n')) return text;

  // Split text into sentences
  // Handle common abbreviations and edge cases
  final sentences = _splitIntoSentences(text);

  // If less than 4 sentences, return as-is
  if (sentences.length < 4) return text;

  // Group sentences in pairs and join with paragraph breaks
  final buffer = StringBuffer();
  for (var i = 0; i < sentences.length; i++) {
    buffer.write(sentences[i]);

    // Add paragraph break after every 2 sentences (except at the end)
    if ((i + 1) % 2 == 0 && i < sentences.length - 1) {
      buffer.write('\n');
    } else if (i < sentences.length - 1) {
      // Add space between sentences within same paragraph
      buffer.write(' ');
    }
  }

  return buffer.toString();
}

/// Splits text into sentences, handling common edge cases like
/// abbreviations (e.g., i.e., etc.), quotes, and parentheses.
List<String> _splitIntoSentences(String text) {
  // Use a simple regex that looks for period followed by space and capital letter
  // This handles most cases while avoiding splitting on abbreviations
  final sentencePattern = RegExp(r'(?<=[.!?])\s+(?=[A-Z])', multiLine: true);

  final sentences = text.split(sentencePattern).map((s) => s.trim()).toList();

  // Filter out empty sentences
  return sentences.where((s) => s.isNotEmpty).toList();
}
