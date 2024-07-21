

import 'package:flutter/material.dart';
  
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Login',style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold,color: Colors.white),),
        backgroundColor: Colors.blueAccent,
      ),
       body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 12.0),
        children: [
         
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
          
          const SizedBox(height: 10.0),
          ElevatedButton(onPressed: () {}, child: Text('Login'))
        ],
      ),
    
    );
  }
}