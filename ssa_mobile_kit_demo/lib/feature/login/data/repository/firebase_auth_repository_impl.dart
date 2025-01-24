import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobile_kit/mobile_kit.dart';

class FirebaseAuthenticationRepositoryImpl implements AuthenticationRepository {
  FirebaseAuthenticationRepositoryImpl({
    required BiometricsLocalDatasource biometricsLocalDatasource,
    required AuthenticationNotifier authNotifier,
    FirebaseAuth? firebaseAuth,
  })  : _biometricsLocalDatasource = biometricsLocalDatasource,
        _firebaseAuthInstance = firebaseAuth ?? FirebaseAuth.instance,
        _authNotifier = authNotifier;

  final BiometricsLocalDatasource _biometricsLocalDatasource;
  final FirebaseAuth _firebaseAuthInstance;
  final AuthenticationNotifier _authNotifier;

  @override
  bool isInBackground = false;

  /// Check whether user is logged into the system
  @override
  Future<bool> get isLoggedIn async {
    return _firebaseAuthInstance.currentUser != null;
  }

  @override
  Future<AuthenticationState> get currentState async {
    return _authNotifier.state;
  }

  @override
  void setState(AuthenticationState state) {
    _authNotifier.setState(state);
  }

  @override
  Future<void> signIn({required AuthRequest request}) async {
    try {
      final credential = await _firebaseAuthInstance.signInWithEmailAndPassword(
        email: request.email,
        password: request.password,
      );
      print(credential);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        throw CredentialsInvalidException();
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
        throw CredentialsInvalidException();
      } else if (e.code == 'invalid-credential') {
        print('The supplied auth credential is malformed or has expired.');
        throw CredentialsInvalidException();
      }
    } catch (e) {
      throw ServerException(-1001, 'Auth error');
    }
  }

  @override
  Stream<UserModel?> get userStream {
    return _firebaseAuthInstance.authStateChanges().map((user) {
      if (user == null) {
        clear();
        return null;
      } else {
        return UserModel((user.email).orEmpty);
      }
    });
  }

  @override
  Future<void> logout() async {
    await _firebaseAuthInstance.signOut();
  }

  @override
  Future<void> clear() async {
    await _biometricsLocalDatasource.clear();
  }
}
