import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:flutter_application_foodiez/pages/auth_layout.dart';
import 'create_account_view.form.dart';
import 'package:flutter_application_foodiez/pages/create_account/create_account_viewmodel.dart';
import 'package:flutter_application_foodiez/pages/create_account/create_account_view.dart';

// @FormView(fields: [
//   FormTextField(name: 'fullName'),
//   FormTextField(name: 'email'),
//   FormTextField(name: 'password'),
// ])
// class CreateAccountView extends StatelessWidget with $CreateAccountView {
//   CreateAccountView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ViewModelBuilder<CreateAccountViewModel>.reactive(
//       onModelReady: (model) => listenToFormUpdated(model),
//       builder: (context, model, child) => Scaffold(
//           body: AuthenticationLayout(
//         busy: model.isBusy,
//         onMainButtonTapped: model.saveData,
//         onBackPressed: model.navigateBack,
//         validationMessage: model.validationMessage,
//         title: 'Create Account',
//         subtitle: 'Enter your name, email and password for sign up.',
//         mainButtonTitle: 'SIGN UP',
//         form: Column(
//           children: [
//             TextField(
//               decoration: InputDecoration(labelText: 'Full Name'),
//               controller: fullNameController,
//             ),
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
//         showTermsText: true,
//       )),
//       viewModelBuilder: () => CreateAccountViewModel(),
//     );
//   }
// }

class CreateAccountView extends StatelessWidget {
  const CreateAccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CreateAccountViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: AuthenticationLayout(
          busy: model.isBusy,
          // onCreateAccountTapped: () {},
          // validationMessage: model.validationMessage,
          title: "Create Account",
          subtitle: "Enter your Name, email, and Password for Sign up",
          mainButtonTitle: "SIGN UP",
          form: Column(children: [
            TextField(
              decoration: InputDecoration(labelText: "Full Name"),
            ),
            TextField(
              decoration: InputDecoration(labelText: "Email"),
            ),
            TextField(
              decoration: InputDecoration(labelText: "Password"),
            ),
          ]),
          showTermsText: true,
        ),
      ),
      viewModelBuilder: () => CreateAccountViewModel(),
    );
  }
}
