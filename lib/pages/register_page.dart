import 'package:flutter/material.dart';
import '../components/my_button.dart';
import '../components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController confirmpasswordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.lock_outline_rounded,
              size: 72,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(height: 25),
            //message app logo
            Text(
              "Create A New Account",
              style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),

            //email textfield
            MyTextField(
              controller: emailcontroller,
              hintText: "Email",
              obsureText: false,
            ),
            const SizedBox(height: 10),
            //password
            MyTextField(
              controller: passwordcontroller,
              hintText: "Password",
              obsureText: true,
            ),
            //confirm password
            const SizedBox(height: 10),
            //password
            MyTextField(
              controller: confirmpasswordcontroller,
              hintText: "Confirm Password",
              obsureText: true,
            ),
            const SizedBox(height: 10),
            //sign up
            MyButton(
              text: "Sign Up",
              onTap: () {},
            ),
            // already have an account
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an Account?",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    )),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Login now",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
