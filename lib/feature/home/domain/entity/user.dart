class User {
  const User({
    required this.id,
    required this.updatedTime,
    required this.name,
    required this.mail,
    required this.phone,
    this.localId,
  });
  final int? localId;
  final String id;
  final String name;
  final String mail;
  final String phone;
  final DateTime? updatedTime;

  @override
  String toString() {
    // ignore: lines_longer_than_80_chars
    return 'User(localId: $localId, id: $id, name: $name, mail: $mail, phone: $phone, updatedTime: $updatedTime)';
  }
}
