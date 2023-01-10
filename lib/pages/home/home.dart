import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FindPartyButton(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: Icon(
          Icons.settings_rounded,
          size: 24.0,
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
    );
  }
}

class FindPartyButton extends ConsumerStatefulWidget {
  const FindPartyButton({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FindPartyButtonState();
}

class _FindPartyButtonState extends ConsumerState<FindPartyButton> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        shape: BoxShape.circle,
        border: Border.all(
          color: Theme.of(context).colorScheme.primary,
          width: 2.0,
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 0),
            blurRadius: 4.0,
            spreadRadius: 0.1,
            color: Theme.of(context).shadowColor.withOpacity(0.6),
          )
        ],
      ),
      padding: const EdgeInsets.all(86.0),
      child: Text(
        '파티 찾기',
        style: TextStyle(
          fontSize: 36.0,
          fontWeight: FontWeight.bold,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
