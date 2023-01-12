import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gongpot/providers/find_party_provider.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FindPartyProvider(),
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<FindPartyProvider>(
                builder: (context, provider, child) => FindPartyButton(
                  provider: provider,
                  onTap: () async {
                    await provider.findParty().then((value) {
                      if (!value) {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('알림'),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Text('파티를 찾지 못했습니다'),
                              ],
                            ),
                          ),
                        );
                      } else {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('알림'),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Text('파티를 찾았습니다'),
                              ],
                            ),
                          ),
                        );
                      }
                    });
                  },
                ),
              )
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
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'My Party'),
        ]),
      ),
    );
  }
}

class FindPartyButton extends StatelessWidget {
  const FindPartyButton({super.key, this.onTap, required this.provider});

  final FindPartyProvider provider;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 256.0,
        height: 256.0,
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
        child: Center(
          child: provider.currentTimer == 0
              ? Text(
                  '파티 찾기',
                  style: TextStyle(
                    fontSize: 36.0,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 24.0),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: List.generate(
                        4,
                        (index) => Icon(Icons.person, color: Theme.of(context).colorScheme.primary),
                      ),
                    ),
                    CupertinoActivityIndicator(),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('중단'),
                    ),
                    SizedBox(height: 12.0),
                  ],
                ),
        ),
      ),
    );
  }
}
