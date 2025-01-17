import 'package:flutter/material.dart';
import 'package:styavani/produk_page.dart';
import 'package:styavani/registrasi_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;

  final _emailTextboxController = TextEditingController();
  final _passwordTextboxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                _emailTextField(),
                _passwordTextField(),
                _buttonLogin(),
                const SizedBox(
                  height: 30,
                ),
                _menuRegistrasi()
              ],
            ),
          ),
        ),
      ),
    );
  }

//Membuat Textbox email
  Widget _emailTextField() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Email"),
      keyboardType: TextInputType.emailAddress,
      controller: _emailTextboxController,
      validator: (value) {
//validasi harus diisi
        if (value!.isEmpty) {
          return 'Email harus diisi';
        }
        return null;
      },
    );
  }

//Membuat Textbox password
  Widget _passwordTextField() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Password"),
      keyboardType: TextInputType.text,
      obscureText: true,
      controller: _passwordTextboxController,
      validator: (value) {
//jika karakter yang dimasukkan kurang dari 6 karakter
        if (value!.isEmpty) {
          return "Password harus diisi";
        }
        return null;
      },
    );
  }

//Membuat Tombol Login
  Widget _buttonLogin() {
    return ElevatedButton(
        child: const Text("Login"),
        onPressed: () {
          var validate = _formKey.currentState!.validate();

          if (!validate) {
            const warning = SnackBar(
              content: Text('Harap mengisi seluruh form'),
            backgroundColor: Colors.red,
            elevation: 10,
            behavior: SnackBarBehavior.floating,
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            );

            ScaffoldMessenger.of(context).showSnackBar(warning);
            print('Waring weeeii');
          } else {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ProdukPage()));
          }
        });
  }

// Membuat menu untuk membuka halaman registrasi
  Widget _menuRegistrasi() {
    return Center(
        child: InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const RegistrasiPage()));
      },
      child: const Text(
        "Registrasi",
        style: TextStyle(color: Colors.blue),
      ),
    ));
  }
}
