import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gongpot/providers/find_party_provider.dart';
import 'package:gongpot/routes/paths.dart';
import 'package:provider/provider.dart';

class FindParty extends StatelessWidget {
  const FindParty({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FindPartyProvider(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          IconButton(
            onPressed: () => context.push(Paths.setting),
            icon: Icon(Icons.settings_rounded, color: Theme.of(context).colorScheme.secondary),
          ),
          Expanded(
            child: Center(
              child: Consumer<FindPartyProvider>(
                builder: (context, provider, child) => FindPartyButton(
                  provider: provider,
                  onTap: () async {
                    await provider.findParty().then((value) {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('알림'),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(value ? '파티를 찾았습니다' : '파티를 찾지 못했습니다'),
                            ],
                          ),
                        ),
                      );

                      if (value) {
                        provider.joinParty().then((_) => context.push(Paths.myParty));
                      } else {
                        provider.createParty().then((_) => context.push(Paths.myParty));
                      }
                    });
                  },
                ),
              ),
            ),
          )
        ],
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
                    const SizedBox(height: 24.0),
                    const Text('파티 탐색 중...'),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: List.generate(
                        4,
                        (index) => Icon(Icons.person, color: Theme.of(context).colorScheme.primary),
                      ),
                    ),
                    const CupertinoActivityIndicator(),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('중단'),
                    ),
                    const SizedBox(height: 12.0),
                  ],
                ),
        ),
      ),
    );
  }
}
