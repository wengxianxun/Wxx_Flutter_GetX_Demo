import 'dart:convert';

// 用户列表结果集
class UserModelResult {
  final List<UserModel> userlist;

  UserModelResult({this.userlist});

  static UserModelResult fromRawJson(dynamic str) =>
      UserModelResult.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  static UserModelResult fromJson(dynamic jsonresult) {
    return UserModelResult(
      userlist: jsonresult["result"] == null
          ? null
          : List<UserModel>.from(
              (jsonresult["result"] as List<dynamic>)
                  .map((x) => UserModel.fromJson(x as Map<String, dynamic>)),
            ),
    );
  }

  Map<String, dynamic> toJson() => {
        "userlist": userlist == null
            ? null
            : List<dynamic>.from(userlist.map((x) => x.toJson())),
      };
}

/// 用户model
class UserModel {
  String user_name;
  String user_age;

  UserModel({this.user_name, this.user_age});

  UserModel.fromJson(Map<String, dynamic> json) {
    this.user_name = json['user_name'];
    this.user_age = json['user_age'];
  }

  Map<String, dynamic> toJson() => {
        'user_name': user_name,
        'user_age': user_age,
      };
}
