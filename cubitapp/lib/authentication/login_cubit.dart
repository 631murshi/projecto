import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'loginrepo.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.obj_login) : super(LoginInitial());

  final loginrepo obj_login;

  Future<void> login()async{
    var k= await obj_login.login();
    emit(LoginSuccess());
  }
}

