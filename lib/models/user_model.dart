class User {
  final String username;
  final String password;

  User({this.username, this.password})
      : assert(username != null && password != null);

  User fromMap(dynamic obj) {
    final username = obj['username'];
    final password = obj['password'];
    return User(username: username, password: password);
  }

  Map<String, dynamic> toMap() {
    return {
      'username': this.username,
      'password': this.password,
    };
  }
}
