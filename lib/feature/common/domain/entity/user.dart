import 'package:sync_net_and_local_db/feature/user_detail/constants/form_constants.dart';

class User {
  User({
    required this.id,
    required this.updatedTime,
    required this.name,
    required this.mail,
    required this.phone,
    this.localId,
  });

  User.fromMap(Map<String, dynamic> data, User? user)
      : id = user?.id,
        localId = user?.localId,
        updatedTime = DateTime.now(),
        name = data[FormConstants.name].toString(),
        mail = data[FormConstants.mail].toString(),
        phone = data[FormConstants.phone].toString();

  final int? localId;
  String? id;
  final String name;
  final String mail;
  final String phone;
  final DateTime? updatedTime;

  static Map<String, dynamic> toMapForForm(User user) {
    return {
      FormConstants.name: user.name,
      FormConstants.mail: user.mail,
      FormConstants.phone: user.phone,
    };
  }

  @override
  String toString() {
    // ignore: lines_longer_than_80_chars
    return 'User(localId: $localId, id: $id, name: $name, mail: $mail, phone: $phone, updatedTime: $updatedTime)';
  }
}
