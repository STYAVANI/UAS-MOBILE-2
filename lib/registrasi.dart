
import 'package:flutter/material.dart';

class RegistrasiScreen extends StatelessWidget {
  const RegistrasiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final namaController =TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final konfirmasiPwController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Registrasi',style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold,color: Colors.white),),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 12.0),
        children: [
          TextFormField(
            controller: namaController,
            decoration: InputDecoration(
                label: Text('Nama'),
                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder()),
          ),
          const SizedBox(height: 24.0),
          TextFormField(
            controller: emailController,
            decoration: InputDecoration(
                label: Text('Email'),
                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder()),
          ),
          const SizedBox(height: 24.0),
          TextFormField(
            controller: passwordController,
            decoration: InputDecoration(
                label: Text('Password'),
                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder()),
          ),
          const SizedBox(height: 24.0),
          TextFormField(
            controller: konfirmasiPwController,
            decoration: InputDecoration(
                label: Text('Konfirmasi Password'),
                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder()),
          ),
          const SizedBox(height: 10.0),
          ElevatedButton(onPressed: () {}, child: Text('Registrasi'))
        ],
      ),
    );
  }
}