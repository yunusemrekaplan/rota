class TokenModel {
  String? jwtToken;
  String? refreshToken;

  TokenModel({this.jwtToken, this.refreshToken});

  TokenModel.fromJson(Map<String, dynamic> json) {
    jwtToken = json['jwtToken'];
    refreshToken = json['refreshToken'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['jwtToken'] = jwtToken;
    data['refreshToken'] = refreshToken;
    return data;
  }
}
