import 'package:flutter/material.dart';

/// A simple second top-level screen, reached from the home screen's
/// AppBar action, demonstrating additional Navigator-based routing.
class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About Help Center')),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.help_center_outlined,
                  size: 56, color: Theme.of(context).colorScheme.primary),
              const SizedBox(height: 16),
              const Text(
                'Help Center',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              const Text(
                'This app brings together step-by-step instructions for '
                'getting started, managing your account, handling '
                'payments, troubleshooting problems, and staying secure. '
                'Browse a category to expand its topics, then tap any '
                'topic to see detailed, numbered steps.',
                style: TextStyle(fontSize: 15, height: 1.5),
              ),
              const SizedBox(height: 20),
              const Text(
                'Still need help?',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 8),
              const Text(
                'Use the search bar on the Help Center screen to quickly '
                'find a topic, or reach out to support from within your '
                'account settings.',
                style: TextStyle(fontSize: 15, height: 1.5),
              ),
              const SizedBox(height: 28),
              Center(
                child: OutlinedButton.icon(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.arrow_back),
                  label: const Text('Back to Help Center'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
