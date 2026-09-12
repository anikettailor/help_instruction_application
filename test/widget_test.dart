// Basic smoke tests for the Help Instruction Application.
//
// These verify the app boots into the Help Center home screen, that
// category sections render as expandable tiles, and that tapping a
// topic navigates to its detail screen via Navigator.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:help_instruction_application/main.dart';

void main() {
  testWidgets('Home screen shows Help Center title and categories',
      (WidgetTester tester) async {
    await tester.pumpWidget(const HelpInstructionApp());
    await tester.pumpAndSettle();

    expect(find.text('Help Center'), findsOneWidget);
    // At least one category section should be visible via ExpansionTile.
    expect(find.byType(ExpansionTile), findsWidgets);
    expect(find.byType(ListView), findsWidgets);
  });

  testWidgets('Expanding a category reveals its topics',
      (WidgetTester tester) async {
    await tester.pumpWidget(const HelpInstructionApp());
    await tester.pumpAndSettle();

    // The first category is "Getting Started" with topic "Create your account".
    expect(find.text('Create your account'), findsNothing);

    await tester.tap(find.text('Getting Started'));
    await tester.pumpAndSettle();

    expect(find.text('Create your account'), findsOneWidget);
  });

  testWidgets('Tapping a topic navigates to its detail screen',
      (WidgetTester tester) async {
    await tester.pumpWidget(const HelpInstructionApp());
    await tester.pumpAndSettle();

    await tester.tap(find.text('Getting Started'));
    await tester.pumpAndSettle();

    await tester.tap(find.text('Create your account'));
    await tester.pumpAndSettle();

    // Detail screen shows the "Steps" heading and can navigate back.
    expect(find.text('Steps'), findsOneWidget);
    expect(find.text('Back to topics'), findsOneWidget);

    await tester.tap(find.text('Back to topics'));
    await tester.pumpAndSettle();

    expect(find.text('Help Center'), findsOneWidget);
  });
}
