import 'dart:convert';

import 'package:flutter/material.dart';

AuthorizationModel authorizationModelFromJson(String str) =>
    AuthorizationModel.fromJson(json.decode(str));

String authorizationModelToJson(AuthorizationModel data) =>
    json.encode(data.toJson());

class AuthorizationModel {
  String accessToken;
  String tokenType;
  int expiresIn;
  String refreshToken;
  String scope;

  AuthorizationModel({
    required this.accessToken,
    required this.tokenType,
    required this.expiresIn,
    required this.refreshToken,
    required this.scope,
  });

  factory AuthorizationModel.fromJson(Map<String, dynamic> json) {
    return AuthorizationModel(
      accessToken: json['access_token'],
      tokenType: json['token_type'],
      expiresIn: json['expires_in'],
      refreshToken: json['refresh_token'],
      scope: json['scope'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'access_token': accessToken,
      'token_type': tokenType,
      'expires_in': expiresIn,
      'refresh_token': refreshToken,
      'scope': scope,
    };
  }


}