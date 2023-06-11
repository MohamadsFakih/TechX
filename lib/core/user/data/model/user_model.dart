import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    @Default('') String name,
    @Default('') String email,
    @Default('') String uid,
    @Default('') String password,
  }) = _UserModel;

  factory UserModel.fromSnapshot(DocumentSnapshot snapshot) {
    var snapshotMap = snapshot.data() as Map<String, dynamic>;
    return UserModel(
      name: snapshotMap['name'],
      email: snapshotMap['email'],
      uid: snapshotMap['uid'],
    );
  }

  Map<String, dynamic> toDocument() {
    return {
      "name": name,
      "email": email,
      "uid": uid,
    };
  }
}
