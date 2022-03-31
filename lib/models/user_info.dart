import 'dart:convert';

class UserInfo {
  String id;
  String account;
  String password;
  String email;
  UserInfo({
    required this.id,
    required this.account,
    required this.password,
    required this.email,
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
      email: fullName ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'account': account,
      'password': password,
      'email': email,
    };
  }

  factory UserInfo.fromMap(Map<String, dynamic> map) {
    return UserInfo(
      id: map['id'] ?? '',
      account: map['account'] ?? '',
      password: map['password'] ?? '',
      email: map['email'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserInfo.fromJson(String source) =>
      UserInfo.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserInfo(id: $id, account: $account, password: $password, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserInfo &&
        other.id == id &&
        other.account == account &&
        other.password == password &&
        other.email == email;
  }

  @override
  int get hashCode {
    return id.hashCode ^ account.hashCode ^ password.hashCode ^ email.hashCode;
  }
}
