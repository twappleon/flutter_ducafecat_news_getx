import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_ducafecat_news_getx/common/entities/entities.dart';
import 'package:flutter_ducafecat_news_getx/common/utils/utils.dart';

/// 用户
class UserAPI {
  /// 登录
  static Future<UserLoginResponseEntity> login({
    UserLoginRequestEntity? params,
  }) async {
    Response response = await HttpUtil().post(
      '/employer/auth/login',
      data: params?.toJson(),
    );
    print("response:$response");
    Map dd = response.data;
    Map<String,dynamic> ddd = dd['data'];
    print("dd:$ddd");
    return UserLoginResponseEntity.fromJson(ddd);
  }

  /// 注册
  static Future<UserRegisterRequestEntity> register({
    UserRegisterRequestEntity? params,
  }) async {
    var response = await HttpUtil().post(
      '/employer/auth/register',
      data: params?.toJson(),
    );
    return UserRegisterRequestEntity.fromJson(response);
  }

  /// Profile
  static Future<UserLoginResponseEntity> profile() async {
    var response = await HttpUtil().post(
      '/employer/auth/profile',
    );
    return UserLoginResponseEntity.fromJson(response);
  }

  /// Logout
  static Future logout() async {
    return await HttpUtil().post(
      '/employer/auth/logout',
    );
  }
}
