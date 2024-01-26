class UserModel {
  final int id;
  final String username;
  final String password;

  UserModel({this.id = 0, required this.username, required this.password});

  /// Named constructor that initializes a User from a JSON object
  UserModel.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        username = json["username"],
        password = json["password"];

  /// Method that converts a User to a JSON object
  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "password": password,
      };

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserModel && other.id == id && other.username == username && other.password == password;
  }

  @override
  int get hashCode => id.hashCode ^ username.hashCode ^ password.hashCode;
}
