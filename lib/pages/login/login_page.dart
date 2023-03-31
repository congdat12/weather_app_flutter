import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/custom_button.dart';
import 'package:flutter_application_1/pages/login/widget/custom_textfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.transparent,
      body: Container(
        decoration:  const BoxDecoration(
                gradient:  LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff7F4CD2),
                    Color.fromARGB(255, 40, 13, 83)
                  ],
                )),
        
        padding: const EdgeInsets.only(top: 61, right: 25, left: 25),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Login',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 36),
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Enter your account details to login.',
                style: TextStyle(
                    color: Colors.white,
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
                    color: Colors.white),
              ),
            ),
            const SizedBox(height: 30,),
            Row(
              children: const [
                Expanded(child: Divider(color: Colors.white)),
                Text(' Or ', style: TextStyle(fontSize: 16, color: Colors.white),),
                Expanded(child: Divider(color: Colors.white,)),
              ],
            ),
            const Text(
              'Sign in with',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 28),
            ),
            const SizedBox(
              height: 58,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: 80,
                      height: 80,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          'assets/icons/apple.png',
                        ),
                      ),
                    ),
                    const SizedBox(height: 6,),
                    const Text('Apple',style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),),
                    
                  ],
                ),
                Column(
                  children: const [
                     SizedBox(
                      width: 80,
                      height: 80,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image(
                            image: AssetImage(
                          'assets/icons/google.png',
                        )),
                      ),
                    ),
                     SizedBox(height: 6,),
                     Text('Google', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            CustomButton(text: 'Login', borderRadius: const BorderRadius.all(Radius.circular(25)),),
            const Spacer(),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'I am new here ->', style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
