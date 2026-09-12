# Help Instruction Application

A Flutter app that gives users searchable, step-by-step instructions
organized into categories.

## Structure

- `lib/main.dart` — app entry point (`HelpInstructionApp`, `MaterialApp`).
- `lib/models/help_models.dart` — `HelpCategory`, `HelpTopic`, `HelpStep` data classes.
- `lib/data/help_data.dart` — the actual help content (5 categories, 15 topics).
- `lib/screens/home_screen.dart` — searchable `ListView` of `ExpansionTile`
  category sections; each expands to list its topics.
- `lib/screens/topic_detail_screen.dart` — numbered step-by-step instructions
  for a single topic, reached via `Navigator.push`.
- `lib/screens/about_screen.dart` — a second top-level screen reached from
  the home screen's AppBar.

## Features

- 5 categories × 3 topics each = 15 fully detailed help topics.
- Live search box filters categories/topics as you type.
- `ExpansionTile` + `ListView` for browsing, `Navigator` for drill-down detail screens.
- Scrollable detail screens (`SingleChildScrollView` + `SafeArea`) so long
  content never overflows, even on small screens.
- "Good to know" tip callouts on topics that have extra advice.

## Running

```bash
flutter pub get
flutter run
```

## Testing

```bash
flutter test
```

`test/widget_test.dart` verifies the home screen renders, a category
expands to reveal its topics, and tapping a topic navigates to (and
back from) its detail screen.
