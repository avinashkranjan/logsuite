import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String? id;
  String first;
  String last;
  String? phone;
  String? email;
  String photo;

  UserModel({
    required this.first,
    required this.last,
    required this.phone,
    required this.email,
    required this.id,
    required this.photo,
  });

  Map<String, dynamic> toJson() {
    return {
      "First": first,
      "Last": last,
      "Phone": phone,
      "Email": email,
      "Photo": photo,
    };
  }
  Map<String, dynamic> toJson2(String field, String value) {
    return {
      field:value
    };
  }

 Map<String, dynamic> toJsonimage(String value) {
    return {
      "Photo":value
    };
  }

  factory UserModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;

    return UserModel(
      id: document.id,
      first: data['First'] ?? '',
      last: data['Last'] ?? '',
      phone: data['Phone'] ?? '',
      email: data['Email'] ?? '',
      photo: data['Photo'] ?? '',
    );
  }
}
