import 'package:chatty/utils/entities/entities.dart';
import 'package:chatty/utils/helpers/print_helper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignInController extends GetxController {
  SignInController();
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'openid',
    ],
  );

  /// 1:email  2:google 3:facebook 4:apple 5:phone
  Future<void> handleSignIn(String type) async {
    final t = 'handleSignin - SigninController - $type';
    try {
      if (type == "phone") {
        // TODO signin with phone
      } else if (type == 'google') {
        final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
        if (googleUser != null) {
          String? displayName = googleUser.displayName;
          String email = googleUser.email;
          String id = googleUser.id;
          String photoUrl = googleUser.photoUrl ?? 'assets/icons/google.png';
          LoginRequestEntity loginPanelListRequestEntity = LoginRequestEntity(
            type: 2,
            name: displayName,
            email: email,
            avatar: photoUrl,
            open_id: id,
          );
        }
      } else if (type == 'facebook') {
        // TODO signin with facebook
      } else if (type == 'apple') {
        // TODO signin with apple
      }
    } catch (e) {
      pr('Exception: $e', t);
    }
  }

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
