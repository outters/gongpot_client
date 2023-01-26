import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gongpot/utils/config.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';

class AuthProvider extends ChangeNotifier {
  Future<bool> checkAuth() async {
    if (await AuthApi.instance.hasToken()) {
      try {
        AccessTokenInfo tokenInfo = await UserApi.instance.accessTokenInfo();
        lgr.d('토큰 유효성 체크 성공 ${tokenInfo.id} ${tokenInfo.expiresIn}');
        return true;
      } catch (error) {
        if (error is KakaoException && error.isInvalidTokenError()) {
          lgr.d('토큰 만료 $error');
        } else {
          lgr.d('토큰 정보 조회 실패 $error');
        }
        return await signInByWeb();
      }
    } else {
      lgr.d('발급된 토큰 없음');
      return await signInByWeb();
    }
  }

  Future<bool> signInWithKakao() async {
    if (await isKakaoTalkInstalled()) {
      return await signInbyApp();
    } else {
      return await signInByWeb();
    }
  }

  Future<bool> signInbyApp() async {
    try {
      OAuthToken token = await UserApi.instance.loginWithKakaoTalk();
      lgr.d('로그인 성공 ${token.accessToken}');
      return true;
    } catch (error) {
      lgr.d('로그인 실패 $error');

      // 사용자가 카카오톡 설치 후 디바이스 권한 요청 화면에서 로그인을 취소한 경우,
      // 의도적인 로그인 취소로 보고 카카오계정으로 로그인 시도 없이 로그인 취소로 처리 (예: 뒤로 가기)
      if (error is PlatformException && error.code == 'CANCELED') {
        return false;
      }
      // 카카오톡에 연결된 카카오계정이 없는 경우, 카카오계정으로 로그인
      return await signInByWeb();
    }
  }

  Future<bool> signInByWeb() async {
    try {
      OAuthToken token = await UserApi.instance.loginWithKakaoAccount();
      User user = await UserApi.instance.me();
      lgr.d(user);
      lgr.d('로그인 성공 ${token.accessToken}');
      return true;
    } catch (error) {
      lgr.d('로그인 실패 $error');
      return false;
    }
  }
}
