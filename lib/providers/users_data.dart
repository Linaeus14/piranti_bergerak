part of './providers.dart';

class UserIdProvider extends ChangeNotifier {
  String _userId = '';

  String get userId => _userId;

  set userId(String value) {
    _userId = value;
    notifyListeners();
  }

  Future<XFile?> getImage() async {
    return await ImagePicker().pickImage(source: ImageSource.gallery);
  }

  Future<void> addUserToFirestore(
      String id, String email, String nama, String imagePath) async {
    try {
      CollectionReference users =
          FirebaseFirestore.instance.collection('users');
      DocumentReference documentReference = users.doc(id);

      Map<String, dynamic> data = {
        'email': email,
        'nama': nama,
        'profile': imagePath,
        'genre': [],
        'language': [],
        'wallet': 0
      };

      await documentReference.set(data);
      debugPrint('Added user with ID: $id');
    } catch (e) {
      debugPrint('Error adding user: $e');
    }
  }
}
