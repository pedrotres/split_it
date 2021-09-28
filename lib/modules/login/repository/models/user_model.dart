import 'dart:convert';

import 'package:google_sign_in/google_sign_in.dart';

class UserModel {
  final String? name;
  final String email;
  final String id;
  final String? photoUrl;

  UserModel({
    this.name,
    required this.email,
    required this.id,
    this.photoUrl,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'id': id,
      'photoUrl': photoUrl,
    };
  }

  factory UserModel.google(GoogleSignInAccount account) {
    return UserModel(
        name: account.displayName,
        email: account.email,
        id: account.id,
        photoUrl: account.photoUrl);
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'],
      email: map['email'],
      id: map['id'],
      photoUrl: map['photoUrl'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));
}
