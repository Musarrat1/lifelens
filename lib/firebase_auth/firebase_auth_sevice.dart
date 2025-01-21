import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lifelens/screens/otp_screen.dart';

class FirebaseAuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signUpWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } catch (e) {
      print("Sign-Up Error: $e");
      throw e; // Re-throw for better error handling.
    }
  }

  Future<User?> signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } catch (e) {

      print("Sign-In Error: $e");
      throw e; // Re-throw for better error handling.
    }
  }
}
phoneNumberVerfication({
  required String phoneNumber,
  required BuildContext context,
}) async{
  await FirebaseAuth.instance.verifyPhoneNumber(
    phoneNumber: phoneNumber,
    verificationCompleted: (PhoneAuthCredential credential) {},
    verificationFailed: (FirebaseAuthException e) {},
    codeSent: (String verificationId, int? resendToken) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OTP(
            verficationID: verificationId, // Correct variable name
          ),
        ),
      );
    },
    codeAutoRetrievalTimeout: (String verificationId) {},
  );
}
