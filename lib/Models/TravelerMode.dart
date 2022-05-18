class TravelerModel {
  late String adderes;
  late String created;
  late String email;
  late String id;
  late String name;

  TravelerModel(
      {this.adderes = "",
      this.created = "",
      this.email = "",
      this.id = "",
      this.name = ""});

  TravelerModel.fromJson(Map<String, dynamic> object) {
    adderes = object['adderes'];
    created = object['createdAt'];
    email = object['email'];
    id = object['id'].toString();
    name = object['name'];
  }

  Map<String, dynamic> toJson() {
    return {
      'adderes': adderes,
      'createdAt': created,
      'email': email,
      'id': id,
      'name': name,
    };
  }

  // x`
  // factory TravelerModel.fromObject(Map<dynamic, String> object) {
  //   return TravelerModel(
  //     object["adderes"].toString(),
  //     object['createdAt'].toString(),
  //     object['email'].toString(),
  //     object['id'].toString(),
  //     object['name'].toString(),
  //   );
  // }

  // get adderesValue => this.adderes;
  // get createdValue => this.created;
  // get emailValue => this.email;
  // get idValue => this.id;
  // get nameValue => this.name;
}
