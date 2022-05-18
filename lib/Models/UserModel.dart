class UserModel {
  String id;
  String name;
  String email;
  String adderes;
  String created;

  UserModel(
      {required this.id,
      required this.name,
      required this.email,
      required this.adderes,
      required this.created});

  factory UserModel.fromJson(Map<String, dynamic> object) {
    return UserModel(
        id: object['id'],
        name: object['name'],
        email: object['email'],
        adderes: object['adderes'],
        created: object['createdat']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'adderes': adderes,
      'createdAt': created,
    };
  }
}
