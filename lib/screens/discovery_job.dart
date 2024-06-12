import 'package:flutter/material.dart';

class DiscoveryJobPage extends StatelessWidget {
  final List<Map<String, String>> jobs = [
    {
      "title": "C# Backend Developer - JB0736",
      "location": "Phnom Penh",
      "type": "Full Time",
      "salary": "\$1100 ~ \$2500",
    },
    {
      "title": "C# Backend Developer - JB0737",
      "location": "Phnom Penh",
      "type": "Full Time",
      "salary": "\$400 ~ \$1000",
    },
    {
      "title": "Senior Frontend Developer - JB0732",
      "location": "Phnom Penh",
      "type": "Full Time",
      "salary": "\$Negotiable",
    },
    {
      "title": "UI Design - JB0740",
      "location": "Phnom Penh",
      "type": "Full Time",
      "salary": "\$Negotiable",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Jobs',style: TextStyle(color: Color(0xFF007FB6)),),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Color(0xFF007FB6),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          bottom: TabBar(
            labelColor: Color(0xFF007FB6),
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(text: "Discovery"),
              Tab(text: "Match"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildDiscoveryTab(),
            Center(child: Text("Match Page")), // Placeholder for the Match tab
          ],
        ),
      ),
    );
  }

  Widget _buildDiscoveryTab() {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: jobs.length,
            itemBuilder: (context, index) {
              final job = jobs[index];
              return Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/job/jobs.jpeg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 150,
                      ),
                      SizedBox(height: 10),
                      Text(
                        job["title"]!,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(job["location"]!),
                      SizedBox(height: 5),
                      Text(job["type"]!),
                      SizedBox(height: 5),
                      Text(job["salary"]!),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Handle view details action
                            },
                            child: Text('View details'),
                          ),
                          OutlinedButton(
                            onPressed: () {
                              // Handle apply action
                            },
                            child: Text('Apply'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
