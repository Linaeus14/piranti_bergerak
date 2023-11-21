part of './providers.dart';

class UserData extends ChangeNotifier {
  late String _userId;
  late UserClass _data;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  String get userId => _userId;
  UserClass get data => _data;

  set userId(String value) {
    _userId = value;
    notifyListeners();
  }

  Stream<UserClass?> authStateChanges() {
    return Stream.value(_data);
  }

  Future<XFile?> getImage() async {
    return await ImagePicker().pickImage(source: ImageSource.gallery);
  }

  Future<void> addUserToFirestore(
      String id, String email, String nama, String imagePath) async {
    try {
      CollectionReference users = _firestore.collection('users');
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

  Future<void> updateField(String fieldName, dynamic newValue) async {
    try {
      // Reference to the document you want to update
      DocumentReference documentReference =
          FirebaseFirestore.instance.collection('users').doc(userId);

      // Update the specified field with the new value
      await documentReference.update({fieldName: newValue});
      _data.wallet = newValue;

      debugPrint('Document field updated successfully.');
      notifyListeners();
    } catch (e) {
      debugPrint('Error updating document field: $e');
    }
  }

  Future<void> updateName(String fieldName, dynamic newValue) async{
    try {
      DocumentReference documentReference =
          FirebaseFirestore.instance.collection('users').doc(userId);
                  
      // Update the specified field with the new value
      await documentReference.update({fieldName: newValue});
      _data.nama = newValue;

      debugPrint('Document field updated successfully.');
      notifyListeners();
    } catch (e) {
      debugPrint('Error updating document field: $e');
    }
  }

  Future<void> changePassword(String newPassword) async {
    final user = FirebaseAuth.instance.currentUser;

    if (user != null) {

      debugPrint('password has been changed');
      await user.updatePassword(newPassword);
    } else {
      debugPrint("password hasnt been changed");
      // No user is signed in.
    }
  }

  Future<void> updateProfile(String fieldName, dynamic newValue) async{
    try {
      DocumentReference documentReference =
          FirebaseFirestore.instance.collection('users').doc(userId);
                  
      // Update the specified field with the new value
      await documentReference.update({fieldName: newValue});
      _data.profile = newValue;

      debugPrint('Document field updated successfully.');
      notifyListeners();
    } catch (e) {
      debugPrint('Error updating document field: $e');
    }
  }

  Future<void> getData() async {
    Map<String, dynamic>? userData = await _getDocumentData();
    _data = UserClass(
        nama: userData?['nama'],
        email: userData?['email'],
        genres: userData?['genre'],
        langs: userData?['language'],
        profile: userData?['profile'],
        wallet: userData?['wallet']);
  }

  Future<Map<String, dynamic>?> _getDocumentData() async {
    try {
      // Reference to the Firestore collection
      CollectionReference<Map<String, dynamic>> collection =
          _firestore.collection('users');

      // Get the document snapshot
      DocumentSnapshot<Map<String, dynamic>> documentSnapshot =
          await collection.doc(_userId).get();

      // Check if the document exists
      if (documentSnapshot.exists) {
        // Return the document data
        return documentSnapshot.data();
      } else {
        // Document does not exist
        return null;
      }
    } catch (e) {
      // Handle errors
      debugPrint('Error getting document: $e');
      return null;
    }
  }

  dynamic getFieldFromDocument(String fieldName) async {
    try {
      // Reference to the document you want to retrieve
      DocumentReference documentReference =
          FirebaseFirestore.instance.collection('users').doc(userId);

      // Get the document snapshot
      DocumentSnapshot snapshot = await documentReference.get();

      // Check if the document exists
      if (snapshot.exists) {
        // Retrieve the value of the specified field
        dynamic fieldValue = snapshot.get(fieldName);

        return fieldValue;
      } else {
        debugPrint('Document does not exist.');
      }
    } catch (e) {
      debugPrint('Error getting document field: $e');
    }
  }
}
