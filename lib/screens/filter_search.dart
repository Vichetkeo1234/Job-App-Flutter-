import 'package:flutter/material.dart';

class FilterBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.9, // 80% of the screen height
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 40,
            height: 4,
            margin: EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          Text(
            'Filters',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _buildJobLevelSection(),
                  SizedBox(height: 16),
                  _buildSalaryRangeSection(),
                  SizedBox(height: 16),
                  _buildDropdownSection('Job Industries', 'Industry Unlimited'),
                  _buildDropdownSection('Job Categories', 'Category Unlimited'),
                  _buildDropdownSection('Job Types', 'Type Unlimited'),
                  _buildDropdownSection('Location', 'Location Unlimited'),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Reset'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Search'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildJobLevelSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Job Level'),
        SizedBox(height: 8),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _buildRadioOption('Entry Level'),
              _buildRadioOption('Junior Level'),
              _buildRadioOption('Senior Level'),
              _buildRadioOption('Top Executive Level'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildRadioOption(String label) {
    return Row(
      children: [
        Radio(value: label, groupValue: null, onChanged: (value) {}),
        Text(label),
      ],
    );
  }

  Widget _buildSalaryRangeSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Salary Range'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Disabled', style: TextStyle(color: Colors.red)),
            Switch(value: false, onChanged: (value) {}),
          ],
        ),
        RangeSlider(
          values: RangeValues(0, 500),
          min: 0,
          max: 2000,
          onChanged: (RangeValues values) {},
        ),
      ],
    );
  }

  Widget _buildDropdownSection(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        SizedBox(height: 8),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          child: DropdownButton<String>(
            value: value,
            isExpanded: true,
            underline: SizedBox(),
            onChanged: (String? newValue) {},
            items: <String>[value, 'Option 1', 'Option 2', 'Option 3']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
