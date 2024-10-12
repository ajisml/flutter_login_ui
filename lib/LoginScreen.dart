import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learn_signin/styles.dart';
import 'package:learn_signin/widget/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
          style: TextStyles.title,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SvgPicture.asset(
                'assets/images/login_ui.svg',
                height: 230,
              ),
              const SizedBox(
                height: 23.0,
              ),
              Text(
                'Login Terlebih Dahulu',
                style: TextStyles.title.copyWith(fontSize: 18.0),
              ),
              const SizedBox(
                height: 23.0,
              ),
              CustomTextfield(
                  controller: emailController,
                  textInputType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  hint: 'Masukan Email Kamu'),
              const SizedBox(
                height: 18.0,
              ),
              CustomTextfield(
                controller: passwordController,
                textInputType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
                hint: 'Masukan Password Kamu',
                obscure: obscure,
                hasSuffix: true,
                onPressed: () {
                  setState(() {
                    obscure = !obscure;
                  });
                },
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                'Lupa Password ?',
                style: TextStyles.body,
              ),
              const SizedBox(
                height: 24.0,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    'Login',
                    style: TextStyles.title
                        .copyWith(fontSize: 20.0)
                        .copyWith(color: Colors.white),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigoAccent[400]),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Text(
                'Belum Punya Akun ?',
                style: TextStyles.body,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    'Daftar Sekarang',
                    style: TextStyles.title
                        .copyWith(fontSize: 20.0)
                        .copyWith(color: Colors.white),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 39, 130, 249)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
