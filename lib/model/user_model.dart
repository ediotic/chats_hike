class UserModel {
  late final String? id;
  late final String? name;
  late final String? email;
  late final String? profileImage;
  late final String? phoneNumber;
  late final String? about;
  late final String? createdAt;
  late final String? lastOnlineStatus;
  late final String? status;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.profileImage,
    this.phoneNumber,
    this.about,
    this.createdAt,
    this.lastOnlineStatus,
    this.status,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    profileImage = json['profileImage'];
    phoneNumber = json['phoneNumber'];
    about = json['about'];
    createdAt = json['createdAt'];
    lastOnlineStatus = json['lastOnlineStatus'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['email'] = email;
    _data['profileImage'] = profileImage;
    _data['phoneNumber'] = phoneNumber;
    _data['about'] = about;
    _data['createdAt'] = createdAt;
    _data['lastOnlineStatus'] = lastOnlineStatus;
    _data['status'] = status;
    return _data;
  }
}
