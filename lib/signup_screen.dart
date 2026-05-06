import 'package:flutter/material.dart';
import 'package:practice/forgot_password_screen.dart';
import 'package:practice/signin_screen.dart';
import 'package:practice/signup_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F6FA), // ✅ light gray bg like image
      resizeToAvoidBottomInset: true,
      appBar: AppBar(backgroundColor: const Color(0xffF5F6FA), elevation: 0),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(20, 10, 20, MediaQuery.of(context).viewInsets.bottom + 20),
          child: Column(
            children: [
              /// 🔷 SignUp + Title
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(image: AssetImage('images/logo.png'), height: 50, width: 50),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Maintenance', style: TextStyle(fontSize: 22, fontFamily: 'Rubik Medium', color: Color(0xff2D3142))),
                      Text('Box', style: TextStyle(fontSize: 22, fontFamily: 'Rubik Medium', color: Color(0xffF9702B))),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 30),
              const Text('Sign Up', style: TextStyle(fontSize: 24, fontFamily: 'Rubik Medium', color: Color(0xff2D3142))),
              const SizedBox(height: 10),
              const Text('Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit', textAlign: TextAlign.center, style: TextStyle(fontSize: 14, fontFamily: 'Rubik Regular', color: Color(0xff4C5980))),
              const SizedBox(height: 40),

              /// 📧 Email Field
              TextField(
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: 'Name',
                  filled: true,
                  fillColor: const Color(0xffFFFFFF),
                  prefixIcon: const Icon(Icons.person, color: Color(0xff4C5980)),
                  contentPadding: const EdgeInsets.symmetric(vertical: 18),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: const BorderSide(color: Color(0xffE4E7EB))),
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: const BorderSide(color: Color(0xffE4E7EB))),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: const BorderSide(color: Color(0xffE4E7EB))),
                ),
              ),
              const SizedBox(height: 15),

              /// 📧 Email Field
              TextField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Email',
                  filled: true,
                  fillColor: const Color(0xffFFFFFF),
                  prefixIcon: const Icon(Icons.mail_outline, color: Color(0xff4C5980)),
                  contentPadding: const EdgeInsets.symmetric(vertical: 18),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: const BorderSide(color: Color(0xffE4E7EB))),
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: const BorderSide(color: Color(0xffE4E7EB))),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: const BorderSide(color: Color(0xffE4E7EB))),
                ),
              ),

              const SizedBox(height: 15),

              //Phone Field
              TextField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Phone',
                  filled: true,
                  fillColor: const Color(0xffFFFFFF),
                  prefixIcon: const Icon(Icons.phone, color: Color(0xff4C5980)),
                  contentPadding: const EdgeInsets.symmetric(vertical: 18),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: const BorderSide(color: Color(0xffE4E7EB))),
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: const BorderSide(color: Color(0xffE4E7EB))),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: const BorderSide(color: Color(0xffE4E7EB))),
                ),
              ),

              const SizedBox(height: 15),

              /// 🔒 Password Field
              TextField(
                obscureText: true,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  hintText: 'Password',
                  filled: true,
                  fillColor: const Color(0xffFFFFFF),
                  prefixIcon: const Icon(Icons.lock_outline, color: Color(0xff4C5980)),
                  suffixIcon: const Icon(Icons.visibility_off_outlined, color: Color(0xff4C5980)),
                  contentPadding: const EdgeInsets.symmetric(vertical: 18),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: const BorderSide(color: Color(0xffE4E7EB))),
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: const BorderSide(color: Color(0xffE4E7EB))),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: const BorderSide(color: Color(0xffE4E7EB))),
                ),
              ),

              const SizedBox(height: 6),
              const SizedBox(height: 40),
              /// 🔘 SignUp Button
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: const Color(0xffFF5A1F), // brighter orange
                    elevation: 0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  ),
                  child: const Text('SIGN UP', style: TextStyle(fontSize: 16, fontFamily: 'Rubik Medium', color: Colors.white, letterSpacing: 1)),
                ),
              ),

              const SizedBox(height: 20),

              /// 🔷 Bottom Text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account? ", style: TextStyle(fontSize: 14, fontFamily: 'Rubik Regular', color: Color(0xff4C5980))),
                  GestureDetector(
                    onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => const SigninScreen()));},
                    child: Text("Sign In", style: TextStyle(fontSize: 14, fontFamily: 'Rubik Medium', color: Color(0xffFF5A1F))),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
