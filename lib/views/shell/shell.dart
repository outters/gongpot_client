import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gongpot/routes/paths.dart';

class Shell extends StatefulWidget {
  const Shell({
    super.key,
    required this.state,
    required this.child,
  });

  final GoRouterState state;
  final Widget child;

  @override
  State<Shell> createState() => _ShellState();
}

class _ShellState extends State<Shell> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = (widget.state.extra as Map?)?['bottomindex'] ?? 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.search), label: '파티 찾기'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: '나의 파티'),
        ],
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });

          switch (currentIndex) {
            case 0:
              context.push(Paths.findParty);
              break;
            case 1:
              context.push(Paths.myParty);
              break;
            default:
          }
        },
      ),
    );
  }
}
