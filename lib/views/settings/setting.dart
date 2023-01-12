import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.pop(),
          constraints: const BoxConstraints(),
          iconSize: 32.0,
          icon: Icon(
            Icons.chevron_left_rounded,
            color: Theme.of(context).colorScheme.onBackground,
          ),
        ),
        title: Text(
          '설정',
          style: TextStyle(
            fontSize: 24.0,
            color: Theme.of(context).colorScheme.onBackground,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) => ListTile(title: Text('Menu ${index + 1}')),
            ),
          ),
        ],
      ),
    );
  }
}
