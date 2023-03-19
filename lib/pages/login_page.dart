

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/custom_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:  [
          const Text('data'),
          const Text('data'),
          const TextField(),
          const TextField(),
          const Text('forgot password'),
          Row(
            children: const[
              Divider(),
              Text('Or'),
              Divider(),
            ],
          ),
          const Text('Signin With'),
          Row(
            children:  [
              CircleAvatar(
                child: Image.asset('icons/apple.png')
              ),
              CircleAvatar(
                child: Image.asset('google.png'),
              )

            ],
          ),
          CustomButton(text: 'Login'),
          TextButton(onPressed: (){}, child: const Text('I am new here ->'))

        ],
      ),
    );
  }
}