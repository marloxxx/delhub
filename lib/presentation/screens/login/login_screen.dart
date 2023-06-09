import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/service_locator.dart';
import '../../../data/models/user_model.dart';
import '../../../data/repositories/login/check_user_login_status.dart';
import '../../../routes/app_routers.dart';
import '../../../shared/theme.dart';
import '../../blocs/login/login_bloc.dart';
import '../../blocs/login/login_event.dart';
import '../../blocs/login/login_states.dart';
import 'shared/custom_filled_button.dart';
import 'shared/custom_text_form_field.dart';

@RoutePage(name: 'LoginRoute')
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () {
        serviceLocator<CheckUserLoginStatus>()
            .checkIfUserLoggedIn()
            .then((isUserLoggedIn) {
          if (isUserLoggedIn.role == 'dosen') {
            AutoRouter.of(context).pushAndPopUntil(
              const DashboardLectureRoute(),
              predicate: (route) => false,
            );
          } else if (isUserLoggedIn.role == 'mahasiswa') {
            AutoRouter.of(context).pushAndPopUntil(
              const DashboardStudentRoute(),
              predicate: (route) => false,
            );
          }
        });
      },
    );
  }

  final _formKey = GlobalKey<FormState>();
  bool obsecureText = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  IconData icon = Icons.visibility;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: BlocConsumer<LoginBloc, LoginState>(
          listener: (context, state) {
            // on success delete navigator stack and push to home
            if (state is LoginLoadedState) {
              // check if user is lecturer or student
              if (state.user.role == 'dosen') {
                // if lecturer push to lecturer dashboard
                AutoRouter.of(context).pushAndPopUntil(
                  const DashboardLectureRoute(),
                  predicate: (route) => false,
                );
              } else if (state.user.role == 'mahasiswa') {
                // if student push to student dashboard
                AutoRouter.of(context).pushAndPopUntil(
                  const DashboardStudentRoute(),
                  predicate: (route) => false,
                );
              }
            } else if (state is LoginErrorState) {
              // show dialog error
              showDialog(
                context: context,
                builder: (_) => AlertDialog(
                  title: const Text("Error"),
                  content: Text(state.message),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(_).pop();
                      },
                      child: Text("OK", style: TextStyle(color: primary)),
                    ),
                  ],
                ),
              );
            }
          },
          builder: (context, state) {
            if (state is LoginLoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return SingleChildScrollView(
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: size.height * 0.03),
                    const Text(
                      "Aplikasi Perkuliahan Proyek Akhir dan Tugas Akhir",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Color(0xFF3C8DBC)),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: size.height * 0.02),
                    const Text(
                      "Institut Teknologi Del",
                      style: TextStyle(fontSize: 16, color: Color(0xFF3C8DBC)),
                      textAlign: TextAlign.center,
                    ),
                    Image.asset(
                      "assets/images/welcome_logo_app.png",
                      width: 200,
                      height: 254,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 27,
                        fontFamily: 'Righteous',
                        color: Color(0xFF3C8DBC),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Form(
                      key: _formKey,
                      child: Column(children: [
                        // email input
                        CustomTextFormField(
                          hintText: "Email",
                          prefixIcon: Icon(
                            Icons.person,
                            color: primary,
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            } else if (!value.contains('@')) {
                              return 'Please enter a valid email';
                            }
                            return null;
                          },
                          controller: _emailController,
                          onSaved: (value) => _emailController.text = value!,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: primary),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(35),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: primary),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(35),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        // password input
                        CustomTextFormField(
                          hintText: "Password",
                          prefixIcon: Icon(
                            Icons.lock,
                            color: primary,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                obsecureText = !obsecureText;
                                icon = obsecureText
                                    ? Icons.visibility
                                    : Icons.visibility_off;
                              });
                            },
                            icon: Icon(
                              icon,
                              color: light,
                            ),
                          ),
                          controller: _passwordController,
                          obscureText: obsecureText,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            } else if (value.length < 6) {
                              return 'Password must be at least 6 characters';
                            }
                            return null;
                          },
                          onSaved: (value) => _passwordController.text = value!,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: primary),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(35),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: primary),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(35),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const SizedBox(height: 10),
                        CustomFilledButton(
                          color: primary,
                          text: "Login",
                          onPressed: _login,
                          borderRadius: BorderRadius.circular(35),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ]),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                          child: const Text(
                            "Lupa Password?",
                            style: TextStyle(
                              color: Color(0xFF3C8DBC),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: size.height * 0.03),
                  ],
                ),
              ),
            );
          },
        ),
        bottomSheet: SizedBox(
          height: 50,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                "© 2023 - ",
                style: TextStyle(
                  color: primary,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                "Institut Teknologi Del",
                style: TextStyle(
                  color: primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _login() {
    if (_formKey.currentState!.validate()) {
      BlocProvider.of<LoginBloc>(context).add(
        LoginEvent.onLoginTapped(
          user: User(
            email: _emailController.text,
            password: _passwordController.text,
          ),
        ),
      );
    }
  }
}
