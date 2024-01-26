// import 'package:flutter/material.dart';
// import '../../../Core/Utils/Screen/screen_size.dart';
// import '../../../Core/Utils/Validations/validators_authentication.dart';
// import '../Widgets/background_image.dart';
// import '../Widgets/button_confirm_action.dart';
// import 'Widgets/authentication_type_writing.dart';
// import 'Widgets/input_field.dart';

// // TODO: Falta deixar a página mais parecida com o design no figma
// class SignUpPage extends StatefulWidget {
//   const SignUpPage({
//     super.key,
//   });

//   @override
//   State<SignUpPage> createState() => _SignUpPageState();
// }

// class _SignUpPageState extends State<SignUpPage> {
//   // Chave para validar formulário
//   final GlobalKey<FormState> formKey = GlobalKey<FormState>();
//   // TextFormField base
//   final MyTextFormField basicInput = const MyTextFormField.empty();
//   // Controllers
//   final TextEditingController username = TextEditingController();
//   final TextEditingController password = TextEditingController();
//   final TextEditingController confirmPassword = TextEditingController();
//   final TextEditingController email = TextEditingController();
//   final TextEditingController phone = TextEditingController();

//   // FocusNames
//   final FocusNode focusUserName = FocusNode();
//   final FocusNode focusEmail = FocusNode();
//   final FocusNode focusPassword = FocusNode();
//   final FocusNode focusConfirmPassword = FocusNode();

//   // Exibir/Ocultar senhas
//   bool showPassword = true;
//   bool showConfirmPassword = true;

//   void changingVisibilityOfPassword() {
//     setState(() {
//       showPassword = !showPassword;
//     });
//   }

//   void changingVisibilityOfConfirmPassword() {
//     setState(() {
//       showConfirmPassword = !showConfirmPassword;
//     });
//   }

//   @override
//   void dispose() {
//     username.dispose();
//     password.dispose();
//     confirmPassword.dispose();
//     email.dispose();
//     phone.dispose();
//     formKey.currentState == null ? null : formKey.currentState!.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     //* Username
//     final Widget userNameField = basicInput
//         .copyWith(
//           controller: username,
//           focusName: focusUserName,
//           inputAction: TextInputAction.next,
//           inputType: TextInputType.name,
//           label: "Nome",
//           startIcon: Icons.email,
//           validator: EntriesValidator.validateUsername,
//         )
//         .inputField();
//     //* Email
//     final Widget emailField = basicInput
//         .copyWith(
//           controller: email,
//           focusName: focusEmail,
//           inputAction: TextInputAction.next,
//           inputType: TextInputType.name,
//           label: "Email",
//           startIcon: Icons.email,
//           validator: EntriesValidator.validateEmail,
//           onEditingComplete: () {
//             FocusScope.of(context).requestFocus(focusPassword);
//           },
//         )
//         .inputField();
//     //* Senha
//     final Widget passwordField = basicInput
//         .copyWith(
//           controller: password,
//           focusName: focusPassword,
//           inputAction: TextInputAction.done,
//           inputType: TextInputType.name,
//           label: "Senha",
//           startIcon: Icons.lock,
//           validator: EntriesValidator.validatePassword,
//           obscureText: showPassword,
//           suffixIcon: IconButton(
//             icon: Icon(
//               showPassword ? Icons.visibility : Icons.visibility_off,
//             ),
//             onPressed: () {
//               changingVisibilityOfPassword();
//             },
//           ),
//           onEditingComplete: () {
//             FocusScope.of(context).requestFocus(focusConfirmPassword);
//           },
//         )
//         .inputField();
//     //* Senha
//     final Widget confirmPasswordField = basicInput
//         .copyWith(
//           controller: password,
//           focusName: focusPassword,
//           inputAction: TextInputAction.done,
//           inputType: TextInputType.name,
//           label: "Confirmar Senha",
//           startIcon: Icons.lock,
//           validator: (_) {
//             final String? validatePasswords = EntriesValidator.validateConfirmPassword(confirmPassword: confirmPassword.text, password: password.text);
//             return validatePasswords;
//           },
//           obscureText: showPassword,
//           suffixIcon: IconButton(
//             icon: Icon(
//               showPassword ? Icons.visibility : Icons.visibility_off,
//             ),
//             onPressed: () {
//               changingVisibilityOfPassword();
//             },
//           ),
//           onEditingComplete: () {
//             //FocusScope.of(context).requestFocus(focusConfirmPassword);
//           },
//           onFieldSubmitted: (_) {
//             if (formKey.currentState!.validate()) {
//               formKey.currentState!.save();
//               print("Email ${email.text} e senha ${password.text}");
//               // Aqui você pode fazer a lógica de autenticação e navegar para outra tela
//             }
//           } /*onFieldSubmitted*/,
//         )
//         .inputField();

//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       body: GestureDetector(
//         onTap: () {
//           FocusScopeNode currentFocus = FocusScope.of(context);
//           if (!currentFocus.hasPrimaryFocus) {
//             currentFocus.unfocus();
//           }
//         },
//         child: Stack(
//           children: [
//             const BackgroundImage(
//               imagePath: "Assets/Images/background-login-signup.png",
//             ),
//             Form(
//               key: formKey,
//               child: SizedBox(
//                 height: MediaQuery.of(context).size.height - MediaQuery.of(context).viewInsets.bottom,
//                 child: SingleChildScrollView(
//                   child: Column(
//                     children: [
//                       TopWriting(
//                         size: EdgeInsets.only(
//                           top: ScreenSize.maxHeight(context) * 0.185,
//                           bottom: ScreenSize.maxHeight(context) * 0.06,
//                         ),
//                         typeAuthentication: "Cadastro",
//                       ),
//                       //! User
//                       userNameField,
//                       //! Email
//                       emailField,
//                       //! Senha
//                       passwordField,
//                       //! Confirmar Senha
//                       confirmPasswordField,
//                       //! Telefone
//                       // Padding(
//                       //   padding: const EdgeInsets.symmetric(
//                       //     horizontal: 20,
//                       //     vertical: 10,
//                       //   ),
//                       //   child: TextFormField(
//                       //     focusNode: field3Focus,
//                       //     textAlignVertical: TextAlignVertical.center,
//                       //     controller: phone,
//                       //     maxLines: 1,
//                       //     textCapitalization: TextCapitalization.sentences,
//                       //     textInputAction: TextInputAction.done,
//                       //     keyboardType: TextInputType.number,
//                       //     onFieldSubmitted: (_) {
//                       //       if (formKey.currentState!.validate()) {
//                       //         formKey.currentState!.save();
//                       //         print("Usuário ${username.text}, email ${email.text}, senha ${password.text}, confirmar senha ${confirmPassword.text} e phone ${phone.text}");
//                       //         // Aqui você pode fazer a lógica de autenticação e navegar para outra tela
//                       //       }
//                       //     },
//                       //     validator: (phone) {
//                       //       if (phone == null || phone.isEmpty) {
//                       //         return "Campo Obrigatório";
//                       //       }
//                       //       if (phone.isInvalidPhone()) {
//                       //         return "Número inválido";
//                       //       }
//                       //       return null;
//                       //     },
//                       //     decoration: const InputDecoration(
//                       //       icon: Icon(
//                       //         Icons.phone_android_outlined,
//                       //       ),
//                       //       labelText: "Telefone",
//                       //       hintText: "(DDD)X XXXX-XXXX",
//                       //     ),
//                       //   ),
//                       // ),
//                       Align(
//                         alignment: Alignment.center,
//                         child: Padding(
//                           padding: const EdgeInsets.only(bottom: 10, top: 20),
//                           child: ButtonConfirm(
//                             text: "Cadastrar-se",
//                             onPressed: () {
//                               if (formKey.currentState!.validate()) {
//                                 formKey.currentState!.save();
//                                 print("Email ${email.text} e senha ${password.text}");
//                               }
//                             },
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
