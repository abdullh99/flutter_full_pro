import 'dart:nativewrappers/_internal/vm/lib/internal_patch.dart';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
LoginScreen({super.key});

  var emailContro = TextEditingController();
  var passContro = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Login',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                const SizedBox(height: 40),
                TextFormField(
                  controller: emailContro,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    label: Text('Email Address'),
                    prefixIcon: Icon(Icons.email),

                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15),
                TextFormField(
                  controller: passContro,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    label: Text('Password'),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye),

                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),

                Container(
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.blue,
                    child: Text('LOGIN', style: TextStyle(color: Colors.white)),
                  ),
                ),

                SizedBox(height: 40),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have an account? '),
                    TextButton(
                      onPressed: () {
                        print(emailContro.text);
                        print(passContro.text);
                      },
                      child: Text(
                        'Register Now',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
