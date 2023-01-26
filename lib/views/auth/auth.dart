import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gongpot/providers/auth_provider.dart';
import 'package:gongpot/routes/paths.dart';
import 'package:gongpot/utils/config.dart';
import 'package:provider/provider.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  late AuthProvider provider;

  @override
  void initState() {
    provider = AuthProvider();
    provider.checkAuth().then((value) {
      if (value) context.go(Paths.findParty);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => provider,
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          body: Consumer<AuthProvider>(builder: (context, provider, _) {
            return Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: () async {
                        await provider.signInWithKakao();
                      },
                      child: Image.asset('assets/images/kakao_login_btn.png'),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
