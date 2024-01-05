class Character {
  int id;
  String name;
  String status;
  String gender;
  String image;

  Character.fromMap(Map<String, dynamic> map)
      : id = map["id"] ?? 0,
        name = map["name"] ?? "",
        status = map["status"] ?? "",
        gender = map["gender"] ?? "",
        image = map["image"] ?? "";
}
