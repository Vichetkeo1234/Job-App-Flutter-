import 'package:flutter/material.dart';
class SettingButton extends StatelessWidget {
  const SettingButton({super.key, required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 10,
        bottom: 0
      ),
      child: Container(
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  // Handle button press
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero, // Remove default button padding
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  child: Row(
                    children: [
                      Text(
                        this.label,
                        style: TextStyle(color: Color(0xFF007FB6), fontSize: 16),
                      ),
                      Spacer(), // Add spacer to push icon to the right
                      Icon(
                        this.icon,
                        color: Color(0xFF007FB6),
                        size: 25,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
