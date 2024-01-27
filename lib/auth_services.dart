import 'package:firebase_auth/firebase_auth.dart';
class AuthServices {
  // Firebase Auth örneği.
  final FirebaseAuth _auth = FirebaseAuth.instance;

  /// E-posta ve şifre ile oturum açma metodu.
  /// Bir hata oluşursa, hatayı yazdırır ve null döndürür.
  Future<User?> signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      return result.user;
    } catch(e) {
      print(e.toString());
    }
    return null;
  }

  /// E-posta ve şifre ile kayıt olma metodu.
  /// Bir hata oluşursa, hatayı yazdırır ve null döndürür.
  Future<User?> registerWithEmailAndPassword(String email, String password) async {
    try {
      var result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return result.user;
    } catch(e) {
      print(e.toString());
    }
    return null;
  }

  /// Oturumu kapatma metodu.
  /// Bir hata oluşursa, hatayı yazdırır.
  Future<void> signOut() async {
    try {
      return await _auth.signOut();
    } catch(e) {
      print(e.toString());
    }
  }

  /// Mevcut kullanıcıyı alma metodu.
  /// Bir hata oluşursa, hatayı yazdırır ve null döndürür.
  Future<User?> getCurrentUser() async {
    try {
      return _auth.currentUser;
    } catch(e) {
      print(e.toString());
    }
    return null;
  }

}