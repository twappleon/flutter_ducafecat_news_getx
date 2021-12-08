import 'package:lombok/lombok.dart';
import 'package:mobx/mobx.dart';


// 注册请求
@data
class UserRegisterRequestEntity {
  String email;
  String password;

  UserRegisterRequestEntity({
    required this.email,
    required this.password,
  });

  factory UserRegisterRequestEntity.fromJson(Map<String, dynamic> json) =>
      UserRegisterRequestEntity(
        email: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
      };
}

// 登录请求
class UserLoginRequestEntity {
  String phoneNumber;
  String password;

  UserLoginRequestEntity({
    required this.phoneNumber,
    required this.password,
  });

  factory UserLoginRequestEntity.fromJson(Map<String, dynamic> json) =>
      UserLoginRequestEntity(
        phoneNumber: json["phoneNumber"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "phoneNumber": phoneNumber,
        "password": password,
      };
}

// 登录返回
@data
class UserLoginResponseEntity{
  String? accessToken;
  String? username;

  UserLoginResponseEntity({
    this.accessToken,
    this.username,
  });

  factory UserLoginResponseEntity.fromJson(Map<String, dynamic> json) =>
      UserLoginResponseEntity(
        accessToken: json["accessToken"],
        username: json["username"]
      );

  Map<String, dynamic> toJson() => {
        "accessToken": accessToken,
        "username": username,
      };
}
