import 'package:fluro/fluro.dart';
import 'package:flutter_clean_architecture/features/auth/presentation/pages/signin_page.dart';
import 'package:flutter_clean_architecture/features/auth/presentation/pages/signup_page.dart';

final router = FluroRouter();

void defineRoutes() {
  router.define('/signin', handler: signinHandler);
  router.define('/signup', handler: signupHandler);
}

var signinHandler = Handler(
  handlerFunc: (context, parameters) {
    return const SigninPage();
  },
);

var signupHandler = Handler(
  handlerFunc: (context, parameters) {
    // final username = parameters['username']?.first;
    return const SignupPage();
  },
);
