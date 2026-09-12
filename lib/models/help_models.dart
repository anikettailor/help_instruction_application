import 'package:flutter/material.dart';

/// A single actionable step shown inside a topic's detail screen.
class HelpStep {
  final String title;
  final String detail;

  const HelpStep({required this.title, required this.detail});
}

/// A single help/instruction topic, e.g. "Reset your password".
class HelpTopic {
  final String title;
  final String summary;
  final IconData icon;
  final List<HelpStep> steps;
  final List<String> tips;

  const HelpTopic({
    required this.title,
    required this.summary,
    required this.icon,
    required this.steps,
    this.tips = const [],
  });
}

/// A category grouping several related topics, e.g. "Account & Profile".
class HelpCategory {
  final String title;
  final IconData icon;
  final Color color;
  final List<HelpTopic> topics;

  const HelpCategory({
    required this.title,
    required this.icon,
    required this.color,
    required this.topics,
  });
}
