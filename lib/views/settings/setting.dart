import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gongpot/routes/paths.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.7,
        leading: IconButton(
          onPressed: () => context.pop(),
          constraints: const BoxConstraints(),
          iconSize: 32.0,
          icon: Icon(
            Icons.chevron_left_rounded,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        title: Text(
          '설정',
          style: TextStyle(
            fontSize: 24.0,
            color: Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: Column(
        children: [
          ListTile(
            onTap: () => UserApi.instance.logout().then((value) => context.go(Paths.root)),
            title: Text('로그 아웃'),
          )
        ],
      ),
    );
  }
}
