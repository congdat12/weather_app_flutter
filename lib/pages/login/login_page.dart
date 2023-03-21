import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/custom_button.dart';
import 'package:flutter_application_1/pages/login/widget/custom_textfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 61, right: 25, left: 25),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Login',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.red,
                    fontSize: 36),
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Enter your account details to login.',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 51,
            ),
            CustomTextField(
              hintext: 'email',
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextField(
              hintext: 'Password',
            ),
            const SizedBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Forgot password?',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.red),
              ),
            ),
            const SizedBox(height: 30,),
            Row(
              children: const [
                Expanded(child: Divider()),
                Text('Or', style: TextStyle(fontSize: 16),),
                Expanded(child: Divider()),
              ],
            ),
            const Text(
              'Sign in with',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 28),
            ),
            const SizedBox(
              height: 58,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 80,
                  height: 80,
                  child: CircleAvatar(
                    backgroundColor: Colors.amber,
                    child: Image.asset(
                      'assets/icons/apple.png',
                    ),
                  ),
                ),
                const SizedBox(
                  width: 80,
                  height: 80,
                  child: CircleAvatar(
                    backgroundColor: Colors.amber,
                    child: Image(
                        image: AssetImage(
                      'assets/icons/google.png',
                    )),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            CustomButton(text: 'Login'),
            const Spacer(),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'I am new here ->',
                ))
          ],
        ),
      ),
    );
  }
}
