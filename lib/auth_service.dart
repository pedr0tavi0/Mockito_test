abstract class AuthService {
  Future<bool> login(String username, String password);
  Future<void> logout();
}
