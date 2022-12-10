import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(color: Colors.black),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 70.0),
              child: Text(
                'Sign Up',
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 25.0, right: 25),
              child: Container(
                decoration: BoxDecoration(
                  color:
                      const Color.fromARGB(255, 189, 189, 189).withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: TextField(
                    cursorColor: Colors.white,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 14.0),
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Colors.white,
                        ),
                        hintText: 'Enter your Email',
                        hintStyle:
                            TextStyle(color: Colors.white, fontSize: 16)),
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontWeight: FontWeight.w500,
                        fontSize: 18.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 25, right: 25),
              child: Container(
                height: 60.0,
                decoration: BoxDecoration(
                  color:
                      const Color.fromARGB(255, 189, 189, 189).withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: TextField(
                    cursorColor: Colors.white,
                    obscureText: true,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 14.0),
                        prefixIcon: Icon(
                          Icons.lock_outline_rounded,
                          color: Colors.white,
                        ),
                        hintText: 'Enter Your Password',
                        hintStyle:
                            TextStyle(color: Colors.white, fontSize: 16)),
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontWeight: FontWeight.w500,
                        fontSize: 18.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 25, right: 25),
              child: Container(
                height: 60.0,
                decoration: BoxDecoration(
                  color:
                      const Color.fromARGB(255, 189, 189, 189).withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: TextField(
                    cursorColor: Colors.white,
                    obscureText: true,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 14.0),
                        prefixIcon: Icon(
                          Icons.lock_outline_rounded,
                          color: Colors.white,
                        ),
                        hintText: 'Confirm Password',
                        hintStyle:
                            TextStyle(color: Colors.white, fontSize: 16)),
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontWeight: FontWeight.w500,
                        fontSize: 18.0),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  padding: const EdgeInsets.only(
                      left: 150, top: 15, right: 150, bottom: 15),
                ),
                onPressed: () {},
                child: const Text(
                  'SIGNUP',
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0), fontSize: 18.0),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account? ",
                  style: TextStyle(color: Colors.white),
                ),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    "Log In",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
