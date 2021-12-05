abstract class repositery{
  Future<void>login();
  Future<void>logout();

}
class loginrepo extends repositery{
  @override
  Future<void> login() {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

}