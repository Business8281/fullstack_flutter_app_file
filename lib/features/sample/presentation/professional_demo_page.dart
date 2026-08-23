import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../widgets/user_list_widget.dart';

class ProfessionalDemoPage extends StatelessWidget {
  const ProfessionalDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Professional Architecture')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Domain & Data Layers',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'This page demonstrates Clean Architecture with Riverpod Generator, Freezed, and Dio.',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 32),
            const Text(
              'Fetched Users (Mock API)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 16),
            const UserListWidget(),
          ],
        ),
      ),
    );
  }
}
