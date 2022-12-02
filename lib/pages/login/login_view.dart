import 'package:flutter_application_foodiez/pages/auth_layout.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:flutter_application_foodiez/pages/login/login_view.form.dart';
import 'package:flutter_application_foodiez/pages/login/login_viewmodel.dart';

// @FormView(fields: [
//   FormTextField(name: 'email'),
//   FormTextField(name: 'password'),
// ])
// class LoginView extends StatelessWidget with $LoginView {
//   LoginView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ViewModelBuilder<LoginViewModel>.reactive(
//       onModelReady: (model) => listenToFormUpdated(model),
//       builder: (context, model, child) => Scaffold(
//           body: AuthenticationLayout(
//         busy: model.isBusy,
//         onMainButtonTapped: model.saveData,
//         onCreateAccountTapped: model.navigateToCreateAccount,
//         validationMessage: model.validationMessage,
//         title: 'Welcome',
//         subtitle: 'Enter your email address to sign in. Enjoy your food',
//         mainButtonTitle: 'SIGN IN',
//         form: Column(
//           children: [
//             TextField(
//               decoration: InputDecoration(labelText: 'Email'),
//               controller: emailController,
//             ),
//             TextField(
//               decoration: InputDecoration(labelText: 'Password'),
//               controller: passwordController,
//             ),
//           ],
//         ),
//         onForgotPassword: () {},
//         onSignInWithGoogle: model.useGoogleAuthentication,
//         onSignInWithApple: model.useAppleAuthentication,
//       )),
//       viewModelBuilder: () => LoginViewModel(),
//     );
//   }
// }

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: AuthenticationLayout(
          busy: model.isBusy,
          onCreateAccountTapped: () {},
          // validationMessage: model.validationMessage,
          title: "Welcome",
          subtitle: "Enter your email address to sign in. Enjoy your food",
          mainButtonTitle: "SIGN IN",
          form: Column(children: [
            TextField(
              decoration: InputDecoration(labelText: "Email"),
            ),
            TextField(
              decoration: InputDecoration(labelText: "Password"),
            ),
          ]),
          onForgotPassword: () {},
        ),
      ),
      viewModelBuilder: () => LoginViewModel(),
    );
  }
}
