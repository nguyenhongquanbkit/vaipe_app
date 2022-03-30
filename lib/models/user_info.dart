import 'dart:convert';

class UserInfo {
  String id;
  String account;
  String password;
  String fullName;
  UserInfo({
    required this.id,
    required this.account,
    required this.password,
    required this.fullName,
  });

  UserInfo copyWith({
    String? id,
    String? account,
    String? password,
    String? fullName,
  }) {
    return UserInfo(
      id: id ?? this.id,
      account: account ?? this.account,
      password: password ?? this.password,
      fullName: fullName ?? this.fullName,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'account': account,
      'password': password,
      'fullName': fullName,
    };
  }

  factory UserInfo.fromMap(Map<String, dynamic> map) {
    return UserInfo(
      id: map['id'] ?? '',
      account: map['account'] ?? '',
      password: map['password'] ?? '',
      fullName: map['fullName'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserInfo.fromJson(String source) =>
      UserInfo.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserInfo(id: $id, account: $account, password: $password, fullName: $fullName)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserInfo &&
        other.id == id &&
        other.account == account &&
        other.password == password &&
        other.fullName == fullName;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        account.hashCode ^
        password.hashCode ^
        fullName.hashCode;
  }
}
