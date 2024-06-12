import 'package:flutter/material.dart';

class SearchResultsPage extends StatelessWidget {
  final String query;

  SearchResultsPage({required this.query});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> keywords = [
      {"keyword": "Android Developer", "icon": "android"},
      {"keyword": "Artificial Intelligence", "icon": "ai"},
      {"keyword": "Cybersecurity", "icon": "security"},
      {"keyword": "Design", "icon": "design"},
      {"keyword": "Graphic Design", "icon": "graphic_design"},
      {"keyword": "Information Technology", "icon": "it"},
      {"keyword": "IOS Developer", "icon": "ios"},
      {"keyword": "IT security", "icon": "it_security"},
      {"keyword": "IT Support", "icon": "it_support"},
      {"keyword": "Java Developer", "icon": "java"},
      {"keyword": "Java Spring", "icon": "spring"},
      {"keyword": "Javascript", "icon": "javascript"},
      {"keyword": "PHP", "icon": "php"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Search Results'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search jobs',
                  prefixIcon: Icon(Icons.search),
                ),
                controller: TextEditingController(text: query),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: keywords.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.work), // Replace with appropriate icons
                    title: Text(keywords[index]['keyword']!),
                    trailing: Icon(Icons.search),
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