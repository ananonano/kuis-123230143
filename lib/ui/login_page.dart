import 'package:flutter/material.dart';
import 'package:kuis_123230143/ui/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login({required String username, required String password}) {
    if (username == "123230143" && password == "kuis_123230143") {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.green,
          content: Text("Login Berhasil!"),
        ),
      );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.red,
          content: Text("Login gagal!"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("kuis_123230143/assets/logo.png"), //bah saya lupa bang ini gimana
                const Text(
                  "Login",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),

                _loginField(
                  hint: "Username",
                  inputController: _usernameController,
                ),
                const SizedBox(height: 10),
                _loginField(
                  hint: "Password",
                  inputController: _passwordController,
                  isPassword: true,
                ),

                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      _login(
                        username: _usernameController.text,
                        password: _passwordController.text,
                      );
                    },
                    child: const Text("Login"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _loginField({
    required String hint,
    required TextEditingController inputController,
    bool isPassword = false,
  }) {
    return TextField(
      controller: inputController,
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hint,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
