import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logsuite/usermodel.dart';

class SignupController {
  static final firstname = TextEditingController();
  static final lastname = TextEditingController();
  static var email = TextEditingController();
  static final username = TextEditingController();
  static var password = TextEditingController();
  static final phonenumber = TextEditingController();
  static GlobalKey<FormState> signup = GlobalKey<FormState>();
  static Future<void> signUpcall(
      String email, String password, BuildContext context) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // .then((value) => Navigator.pushReplacement(context,
      //     MaterialPageRoute(builder: (context) => ())));
      throw "Success: User created";
    } on FirebaseAuthException catch (e) {
      throw ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
    } catch (e) {
      throw ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("User created successfully ! ")));
    }
  }

  static final user = UserModel(
    first: firstname.text.trim(),
    last: lastname.text.trim(),
    phone: phonenumber.text.trim(),
    email: email.text.trim(),
    id: username.text.trim(),
    photo: '',
  );

  static Future<void> sendEmailVerification(BuildContext context) async {
    try {
      await FirebaseAuth.instance.currentUser?.sendEmailVerification();
    } catch (e) {
      throw ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("User created successfully ! ")));
    }
  }

//   static Future<UserCredential?> signInGoogle(BuildContext context) async {
//     try {
//       final GoogleSignInAccount? userAccount = await GoogleSignIn().signIn();
//       final GoogleSignInAuthentication? googleAuth =
//           await userAccount?.authentication;
//       final Credentials = GoogleAuthProvider.credential(
//         accessToken: googleAuth?.accessToken,
//         idToken: googleAuth?.idToken,
//       );
//       await UserRepository.createUser(user, context);
//       return await FirebaseAuth.instance
//           .signInWithCredential(Credentials)
//           .then((value) => Navigator.pushReplacement(
//                 context,
//                 MaterialPageRoute(builder: (context) => HomeScreen()),
//               ));
//     } on FirebaseAuthException catch (e) {
//       throw ScaffoldMessenger.of(context)
//           .showSnackBar(SnackBar(content: Text(e.toString())));
//     } on FirebaseException catch (e) {
//       throw ScaffoldMessenger.of(context)
//           .showSnackBar(SnackBar(content: Text(e.toString())));
//     } on PlatformException catch (e) {
//       throw ScaffoldMessenger.of(context)
//           .showSnackBar(SnackBar(content: Text(e.toString())));
//     } on FormatException catch (e) {
//       throw ScaffoldMessenger.of(context)
//           .showSnackBar(SnackBar(content: Text(e.toString())));
//     }
//   }
// }
}
