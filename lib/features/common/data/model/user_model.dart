import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    /// The user's name
    @Default('') String name,

    /// The user's email
    @Default('') String email,

    /// The user's id
    @Default('') String uid,

    /// The user's password
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
}
