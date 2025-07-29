class UserModel {
  late final String? id;
  late final String? name;
  late final String? email;
  late final String? profileImage;
  late final String? phoneNumber;
  late final String? about;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.profileImage,
    this.phoneNumber,
    this.about,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    profileImage = json['profileImage'];
    phoneNumber = json['phoneNumber'];
    about = json['about'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['email'] = email;
    _data['profileImage'] = profileImage;
    _data['phoneNumber'] = phoneNumber;
    _data['about'] = about;
    return _data;
  }
}
