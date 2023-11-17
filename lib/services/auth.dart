import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

class Auth {
  String uid = '';

  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<bool> regis(String email, String password) async {
    try {
      final user = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> login(String email, String password) async {
    try{
      final user = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      
      return true;
    } catch (e) {
      return false;
    }
  }

  // Future<String> uploadImage(File imageFile) async {
  //   String fileName = basename(imageFile.path);

  //   Reference ref = FirebaseStorage.instance.ref().child(fileName);
  //   UploadTask task = ref.putFile(imageFile);
  //   TaskSnapshot snapshot = await task.whenComplete(() => null);

  //   return snapshot.ref.getDownloadURL();
  // }

    Future<String> uploadImage(XFile? imageFile) async {
    if (imageFile == null) {
      return ''; // Handle the case where imageFile is null
    }

    try {
      String fileName = basename(imageFile.path);

      Reference ref = FirebaseStorage.instance.ref().child(fileName);
      UploadTask task = ref.putFile(File(imageFile.path));
      TaskSnapshot snapshot = await task;

      String downloadURL = await snapshot.ref.getDownloadURL();
      return downloadURL;
    } catch (e) {
      // print('Error uploading image: $e');
      return ''; // Handle the error appropriately for your application
    }
  }
}
