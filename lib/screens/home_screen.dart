import 'package:flutter/material.dart';
import '../data/help_data.dart';
import '../models/help_models.dart';
import 'topic_detail_screen.dart';
import 'about_screen.dart';

/// The app's home screen: a searchable list of help categories.
/// Each category is an [ExpansionTile] that expands to reveal its
/// topics inside a [ListView]. Tapping a topic pushes a detail screen
/// via [Navigator].
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _query = '';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  /// Returns categories filtered by [_query], matching either the
  /// category title or any topic title/summary inside it. Categories
  /// with no matches are dropped; matching categories keep only their
  /// matching topics so results stay focused.
  List<HelpCategory> get _filteredCategories {
    if (_query.trim().isEmpty) return helpCategories;
    final q = _query.toLowerCase();

    final result = <HelpCategory>[];
    for (final category in helpCategories) {
      final categoryMatches = category.title.toLowerCase().contains(q);
      final matchingTopics = category.topics
          .where((t) =>
              t.title.toLowerCase().contains(q) ||
              t.summary.toLowerCase().contains(q))
          .toList();

      if (categoryMatches) {
        result.add(category);
      } else if (matchingTopics.isNotEmpty) {
        result.add(HelpCategory(
          title: category.title,
          icon: category.icon,
          color: category.color,
          topics: matchingTopics,
        ));
      }
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    final categories = _filteredCategories;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Help Center'),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            tooltip: 'About this app',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const AboutScreen()),
              );
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
              child: TextField(
                controller: _searchController,
                onChanged: (value) => setState(() => _query = value),
                decoration: InputDecoration(
                  hintText: 'Search help topics…',
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: _query.isEmpty
                      ? null
                      : IconButton(
                          icon: const Icon(Icons.clear),
                          onPressed: () {
                            _searchController.clear();
                            setState(() => _query = '');
                          },
                        ),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 0),
                ),
              ),
            ),
            Expanded(
              child: categories.isEmpty
                  ? _EmptyState(query: _query)
                  : ListView.builder(
                      padding: const EdgeInsets.only(bottom: 12),
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        final category = categories[index];
                        return _CategorySection(
                          category: category,
                          initiallyExpanded: _query.trim().isNotEmpty,
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CategorySection extends StatelessWidget {
  final HelpCategory category;
  final bool initiallyExpanded;

  const _CategorySection({
    required this.category,
    required this.initiallyExpanded,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      elevation: 0,
      color: Colors.grey.shade50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
        side: BorderSide(color: Colors.grey.shade200),
      ),
      clipBehavior: Clip.antiAlias,
      child: Theme(
        // Removes the default divider ExpansionTile draws.
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          key: PageStorageKey(category.title),
          initiallyExpanded: initiallyExpanded,
          leading: CircleAvatar(
            backgroundColor: category.color.withValues(alpha: 0.15),
            child: Icon(category.icon, color: category.color),
          ),
          title: Text(
            category.title,
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
          ),
          subtitle: Text(
            '${category.topics.length} topic${category.topics.length == 1 ? '' : 's'}',
            style: TextStyle(color: Colors.grey.shade600, fontSize: 13),
          ),
          children: [
            ListView.separated(
              key: PageStorageKey('${category.title}-topics'),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.only(bottom: 8),
              itemCount: category.topics.length,
              separatorBuilder: (_, _) => Divider(
                height: 1,
                indent: 72,
                color: Colors.grey.shade200,
              ),
              itemBuilder: (context, index) {
                final topic = category.topics[index];
                return ListTile(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  leading: Icon(topic.icon, color: category.color),
                  title: Text(
                    topic.title,
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(
                    topic.summary,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 13),
                  ),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => TopicDetailScreen(
                          topic: topic,
                          accentColor: category.color,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _EmptyState extends StatelessWidget {
  final String query;

  const _EmptyState({required this.query});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.search_off, size: 48, color: Colors.grey.shade400),
            const SizedBox(height: 12),
            Text(
              'No help topics match "$query"',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey.shade600, fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
