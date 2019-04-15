class User {
  final int id;
  final String username;
  final String password;

  User(this.id, {this.username, this.password})
      : assert(username != null && password != null);

  User fromMap(dynamic obj) {
    final id = obj['id'];
    final username = obj['username'];
    final password = obj['password'];
    return User(id, username: username, password: password);
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'username': this.username,
      'password': this.password,
    };
  }
}
