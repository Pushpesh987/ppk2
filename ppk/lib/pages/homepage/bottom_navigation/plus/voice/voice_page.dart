// voice_page.dart
import 'package:flutter/material.dart';

import '../../../app_bar.dart';

class VoicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildEditableBox('Phone Number', 'Enter your phone number'),
            const SizedBox(height: 16.0),
            _buildEditableBox('Voice Calls', 'Enter your voice calls'),
          ],
        ),
      ),
    );
  }

  Widget _buildEditableBox(String label, String hintText) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Colors.grey),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: TextFormField(
          decoration: InputDecoration(
            labelText: label,
            hintText: hintText,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
